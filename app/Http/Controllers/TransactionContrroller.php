<?php

namespace App\Http\Controllers;

use App\Models\Connote;
use App\Models\Customer;
use App\Models\Location;
use App\Models\Organization;
use Illuminate\Http\Request;
use App\Models\CustomerAttribute;
use App\Models\CustomField;
use App\Models\CustomFieldData;
use App\Models\DestinationData;
use App\Models\Koli;
use App\Models\OriginData;
use App\Models\Transaction;
use Illuminate\Support\Facades\Validator;

class TransactionContrroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $customer = $request->input('customer');
        $state = $request->input('state');
        $limit = $request->input('limit',5);

        $transaction = Transaction::with('connote.history.state','origin_data.customer','destination_data.customer');

        if($state){
            $transaction->where('transaction_state',$state);
        }

        if($customer){
            $transaction->where('customer_id',$customer);
        }

        $data = $transaction->paginate($limit);

        return response()->json([
            'status' => 'success',
            'data' => $data
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        
        // rules transaction
        $rules = [
            'customer_id'=>['required','string','exists:customer,customer_id'],
            'transaction_amount'=>['required','integer','min:0'],
            'transaction_payment_type'=>['required','integer'],
            'transaction_state'=>['required','string'],
            'transaction_code'=>['required','unique:transaction','string'],
            'transaction_order'=>['required','integer'],
            'location_id'=>['required','exists:location,location_id'],
            'organization_id'=>['required','exists:organization,organization_id'],
            'transaction_payment_type_name'=>['required','string'],
            'connote_id'=>['required','unique:transaction','exists:connote,connote_id'],
            'origin_data_id'=>['required','exists:origin_data,origin_data_id'],
            'destination_data_id'=>['required','exists:destination_data,destination_data_id'],
            'koli_data' => ['required','array'],
            'koli_data.*.awb_url' => ['required','url'],
            'koli_data.*.koli_chargeable_weight' => ['required','integer','min:0'],
            'koli_data.*.koli_description' => ['required','string'],
            'koli_data.*.koli_weight' => ['required','integer','min:0'],
            'custom_field' => ['required','array'],
        ];

        $validator = Validator::make($data,$rules);

        // check validasi
        if($validator->fails()){
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()
            ],400);
        }

        // check connote
        $connote = Connote::find($data['connote_id']);

        // save transaction
        $transaction = Transaction::create($data);

        // save koli
        $koli = $this->save_koli($request,$connote);

        // check count custom field
        if(count($data['custom_field']) > 0){
            $arr_custom_field = [];
            foreach ($data['custom_field'] as $key => $value) {
                // check custom field
                $custom_field = CustomField::where('custom_field_code',$key)->first();
                if(!$custom_field){
                    $transaction_custom_field = [
                        'custom_field_code' => $key,
                        'custom_field_value' => $key,
                    ];
                    // save custom field
                    $custom_field = CustomField::create($transaction_custom_field);
                }

                // save custom field data
                $transaction_custom_field_data = [
                    'custom_field_data_value' => $value,
                    'custom_field_data_relation' => $transaction->transaction_id,
                    'custom_field_data_module' => 'transaction',
                    'custom_field_data_custom_id' => $custom_field->custom_field_id,
                ];
                $custom_field_data = CustomFieldData::create($transaction_custom_field_data);
                $arr_custom_field[$custom_field->custom_field_code] = $custom_field_data->custom_field_data_value;
            }
        }

        $transaction->load('connote.history','origin_data.customer','destination_data.customer');

        return response()->json([
            'status' => 'success',
            'data' => $transaction
        ]);
    }

    public function save_koli(Request $request,$connote)
    {
        $data = $request->all();

        $koli = [];
        foreach ($data['koli_data'] as $key => $value) {
            // decleration variable koli
            $koli_data = [
                'connote_id' => $connote->connote_id,
                'koli_length' => $data['koli_data'][$key]['koli_length'],
                'awb_url' => $data['koli_data'][$key]['awb_url'],
                'koli_chargeable_weight' => $data['koli_data'][$key]['koli_chargeable_weight'],
                'koli_width' => $data['koli_data'][$key]['koli_width'],
                'koli_surcharge' => $data['koli_data'][$key]['koli_surcharge'],
                'koli_height' => $data['koli_data'][$key]['koli_height'],
                'koli_description' => $data['koli_data'][$key]['koli_description'],
                'koli_formula_id' => $data['koli_data'][$key]['koli_formula_id'],
                'koli_volume' => $data['koli_data'][$key]['koli_volume'],
                'koli_weight' => $data['koli_data'][$key]['koli_weight'],
                'koli_code' => $connote->connote_code.'.'.($key+1),
            ];
            // save koli
            $koli[$key] = Koli::create($koli_data);

            // check count custom field
            if(count($data['koli_data'][$key]['koli_custom_field']) > 0){
                $arr_custom_field = [];
                foreach ($data['koli_data'][$key]['koli_custom_field'] as $key1 => $value1) {
                    // check custom field
                    $custom_field = CustomField::where('custom_field_code',$key1)->first();
                    if(!$custom_field){
                        $koli_custom_field = [
                            'custom_field_code' => $key1,
                            'custom_field_value' => $key1,
                        ];
                        // save custom field
                        $custom_field = CustomField::create($koli_custom_field);
                    }

                    $koli_custom_field_data = [
                        'custom_field_data_value' => $value1,
                        'custom_field_data_relation' => $koli[$key]->koli_id,
                        'custom_field_data_module' => 'koli',
                        'custom_field_data_custom_id' => $custom_field->custom_field_id,
                    ];

                    // save custom field data
                    $custom_field_data = CustomFieldData::create($koli_custom_field_data);
                    $arr_custom_field[$custom_field->custom_field_code] = $custom_field_data->custom_field_data_value;
                }
                $koli[$key]['koli_custom_field'] = $arr_custom_field;
            }
        }

        return $koli;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $transaction = Transaction::with('connote.history','origin_data.customer','destination_data.customer')->find($id);

        if(!$transaction){
            return response()->json([
                'status' => 'error',
                'message' => 'package not found'
            ],404);
        }

        return response()->json([
            'status' => 'success',
            'data' => $transaction
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();

        if($request->isMethod('PUT')){
            // rules transaction
            $rules = [
                'customer_id'=>['required','string','exists:customer,customer_id'],
                'transaction_amount'=>['required','integer','min:0'],
                'transaction_payment_type'=>['required','integer'],
                'transaction_state'=>['required','string'],
                'transaction_order'=>['required','integer'],
                'location_id'=>['required','exists:location,location_id'],
                'organization_id'=>['required','exists:organization,organization_id'],
                'transaction_payment_type_name'=>['required','string'],
                'connote_id'=>['required','exists:connote,connote_id'],
                'origin_data_id'=>['required','exists:origin_data,origin_data_id'],
                'destination_data_id'=>['required','exists:destination_data,destination_data_id'],
                'koli_data' => ['required','array'],
                'koli_data.*.awb_url' => ['required','url'],
                'koli_data.*.koli_chargeable_weight' => ['required','integer','min:0'],
                'koli_data.*.koli_description' => ['required','string'],
                'koli_data.*.koli_weight' => ['required','integer','min:0'],
                'custom_field' => ['required','array'],
            ];
        }else{
            // rules transaction
            $rules = [
                'customer_id'=>['sometimes','required','string','exists:customer,customer_id'],
                'transaction_amount'=>['sometimes','required','integer','min:0'],
                'transaction_payment_type'=>['sometimes','required','integer'],
                'transaction_state'=>['sometimes','required','string'],
                'transaction_code'=>['sometimes','required','unique:transaction','string'],
                'transaction_order'=>['sometimes','required','integer'],
                'location_id'=>['sometimes','required','exists:location,location_id'],
                'organization_id'=>['sometimes','required'.'exists:organization,organization_id'],
                'transaction_payment_type_name'=>['sometimes','required','string'],
                'connote_id'=>['sometimes','required','exists:connote,connote_id'],
                'origin_data_id'=>['sometimes','required,exists:origin_data,origin_data_id'],
                'destination_data_id'=>['sometimes','required','exists:destination_data,destination_data_id'],
                'koli_data' => ['sometimes','required','array'],
                'koli_data.*.awb_url' => ['sometimes','required','url'],
                'koli_data.*.koli_chargeable_weight' => ['sometimes','required','integer','min:0'],
                'koli_data.*.koli_description' => ['sometimes','required','string'],
                'koli_data.*.koli_weight' => ['sometimes','required','integer','min:0'],
                'custom_field' => ['sometimes','required','array'],
            ];
        }

        $validator = Validator::make($data,$rules);

        // check validasi
        if($validator->fails()){
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()
            ],400);
        }
        
        // check transaction
        $transaction = Transaction::find($id);
        if(!$transaction){
            return response()->json([
                'status' => 'error',
                'message' => 'transaction not found'
            ],404);
        }
        unset($data['transaction_code']);
        $transaction->update($data);

        // update koli 
        if(isset($data['koli_data']) && count($data['koli_data']) > 0){
            // get data connote
            $connote = Connote::find($transaction->connote_id);
            
            foreach ($data['koli_data'] as $key => $value) {
                if(isset($value['koli_id'])){
                    // check koli
                    $koli = Koli::find($value['koli_id']);
                    if(!$koli){
                        return response()->json([
                            'status'=>'error',
                            'message' => 'koli '.$key.' not found'
                        ],404);
                    }
                    // unset code and connote id
                    unset($value['koli_code']);
                    unset($value['connote_id']);
                    // update koli
                    $koli->update($value);
                }else{
                    // create koli
                    $number_koli = Koli::where('connote_id',$connote->connote_id)->count() + 1;
                    // decleration variable koli
                    $koli_data = [
                        'connote_id' => $connote->connote_id,
                        'koli_length' => $data['koli_data'][$key]['koli_length'],
                        'awb_url' => $data['koli_data'][$key]['awb_url'],
                        'koli_chargeable_weight' => $data['koli_data'][$key]['koli_chargeable_weight'],
                        'koli_width' => $data['koli_data'][$key]['koli_width'],
                        'koli_surcharge' => $data['koli_data'][$key]['koli_surcharge'],
                        'koli_height' => $data['koli_data'][$key]['koli_height'],
                        'koli_description' => $data['koli_data'][$key]['koli_description'],
                        'koli_formula_id' => $data['koli_data'][$key]['koli_formula_id'],
                        'koli_volume' => $data['koli_data'][$key]['koli_volume'],
                        'koli_weight' => $data['koli_data'][$key]['koli_weight'],
                        'koli_code' => $connote->connote_code.'.'.($number_koli),
                    ];
                    // save koli
                    $koli = Koli::create($koli_data);
                }

                // check count custom field
                if(isset($data['koli_data'][$key]['koli_custom_field']) && count($data['koli_data'][$key]['koli_custom_field']) > 0){
                    foreach ($data['koli_data'][$key]['koli_custom_field'] as $key1 => $value1) {
                        // check custom field
                        $custom_field = CustomField::where('custom_field_code',$key1)->first();
                        if(!$custom_field){
                            $koli_custom_field = [
                                'custom_field_code' => $key1,
                                'custom_field_value' => $key1,
                            ];
                            // save custom field
                            $custom_field = CustomField::create($koli_custom_field);
                        }


                        // check custom field data
                        $check_custom_field_data = CustomFieldData::where('custom_field_data_custom_id',$custom_field->custom_field_id)
                        ->where('custom_field_data_relation',$koli->koli_id)->first();

                        if($check_custom_field_data){
                            // update custom field data
                            $custom_field_data = $check_custom_field_data->update([
                                'custom_field_data_value' => $value1
                            ]);
                        }else{
                            // create custom field data
                            $koli_custom_field_data = [
                                'custom_field_data_value' => $value1,
                                'custom_field_data_relation' => $koli->koli_id,
                                'custom_field_data_module' => 'koli',
                                'custom_field_data_custom_id' => $custom_field->custom_field_id,
                            ];
    
                            // save custom field data
                            $custom_field_data = CustomFieldData::create($koli_custom_field_data);
                        }

                    }
                }
            }
        }

        // check count custom field
        if(isset($data['custom_field']) && count($data['custom_field']) > 0){
            foreach ($data['custom_field'] as $key => $value) {
                // check custom field
                $custom_field = CustomField::where('custom_field_code',$key)->first();
                if(!$custom_field){
                    $transaction_custom_field = [
                        'custom_field_code' => $key,
                        'custom_field_value' => $key,
                    ];
                    // save custom field
                    $custom_field = CustomField::create($transaction_custom_field);
                }

                // check custom field data
                $check_custom_field_data = CustomFieldData::where(
                    'custom_field_data_custom_id',$custom_field->custom_field_id
                )->where('custom_field_data_relation',$transaction->transaction_id)->first();

                if($check_custom_field_data){
                    // update custom field data
                    $custom_field_data = $check_custom_field_data->update([
                        'custom_field_data_value' => $value
                    ]);
                }else{
                    // create custom field data
                    $transaction_custom_field_data = [
                        'custom_field_data_value' => $value,
                        'custom_field_data_relation' => $transaction->transaction_id,
                        'custom_field_data_module' => 'transaction',
                        'custom_field_data_custom_id' => $custom_field->custom_field_id,
                    ];
                    $custom_field_data = CustomFieldData::create($transaction_custom_field_data);
                }
            }
        }

        return response()->json([
            'status' => 'success',
            'data' => $transaction->load('connote.history','origin_data.customer','destination_data.customer')
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $transaction = Transaction::find($id);
        if(!$transaction){
            return response()->json([
                'status' => 'error',
                'message' => 'transaction not found'
            ],404);
        }

        CustomFieldData::where('custom_field_data_relation',$transaction->transaction_id)->delete();
        $koli = Koli::where('connote_id',$transaction->connote_id);
        foreach ($koli as $key => $value) {
            CustomFieldData::where('custom_field_data_relation',$value['koli_id'])->delete();
        }
        $koli->delete();
        Connote::findOrFail($transaction->connote_id)->delete();
        $transaction->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'success deleted transaction'
        ]);
    }
}
