<?php

namespace App\Http\Controllers;

use App\Models\Connote;
use App\Models\State;
use App\Models\Location;
use App\Models\Organization;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ConnoteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Connote::with('history')->get();

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
        $rules = [
            'connote_number' => ['required','integer','min:1'],
            'connote_service' => ['required','string','min:2','max:100'],
            'connote_service_price' => ['required','integer','min:1'],
            'connote_amount' => ['required','integer','min:1'],
            'connote_order' => ['required','integer','min:1'],
            'connote_state_id' => ['required','exists:state,state_id'],
            'zone_code_from' => ['required','string','min:2','max:10'],
            'zone_code_to' => ['required','string','min:2','max:10'],
            'actual_weight' => ['required','integer','min:0','max:20'],
            'volume_weight' => ['required','integer','min:0','max:20'],
            'chargeable_weight' => ['required','integer','min:0','max:20'],
            'connote_total_package' => ['required','integer','min:0','max:20'],
            'connote_surcharge_amount' => ['required','integer','min:0','max:20'],
            'connote_sla_day' => ['required','integer','min:0','max:20'],
            'source_tariff_db' => ['required','string'],
            'id_source_tariff' => ['required','integer'],
        ];

        $validator = Validator::make($data,$rules);

        if($validator->fails()){
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()
            ],400);
        }

        
        $state = State::findOrFail($data['connote_state_id']);
        $data['connote_state'] = $state->state_name;
        $data['connote_code'] = $this->generate_code();
        $connote = Connote::create($data);

        return response()->json([
            'status' => 'succeess',
            'data' => $connote
        ]);
    }

    public function generate_code()
    {
        $date = date('dmY');

        $current_prefix = 'AWB';
        $number =  Connote::where('connote_code','LIKE','%'.$date.'%')->count() + 1;
        $connote_code = $current_prefix . str_pad(
            $number,
            3, 
            '0',
            STR_PAD_LEFT
        ).$date;

        return $connote_code;
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
        //
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
