<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use App\Models\CustomerAttribute;
use Illuminate\Support\Facades\Validator;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Customer::get();

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

        // validation
        $rules = [
            'customer_name' => ['required','string','min:3','max:100'],
            'customer_code' => ['required','unique:customer'],
            'customer_email' => ['required','email','unique:customer'],
            'customer_phone' => ['required','integer'],
            'customer_address' => ['required','string'],
            'customer_zip_code' => ['required','integer'],
            'customer_attribute' => ['required','array'],
        ];

        $validator = Validator::make($data,$rules);

        // check validation
        if($validator->fails()){
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()
            ],400);
        }
        
        // save customer
        $customer = Customer::create($data);

        foreach ($data['customer_attribute'] as $key => $value) {
            // check attribute existing
            $customer_attribute = CustomerAttribute::where([
                'customer_attribute_key' => $key,
                'customer_id' => $customer->customer_id,
            ])->first();

            if(!$customer_attribute){
                // insert new attribue
                $customer_attribute = [
                    'customer_attribute_key' => $key,
                    'customer_attribute_value' => $value,
                    'customer_id' => $customer->customer_id,
                ];
                CustomerAttribute::create($customer_attribute);
            }else{
                // update attribute
                $customer_attribute['customer_attribute_value'] = $value;
                $customer_attribute->save();
            }
        }

        $customer['customer_attribute'] = $data['customer_attribute'];


        return $customer;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
