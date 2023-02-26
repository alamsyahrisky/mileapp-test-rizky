<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Transaction extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'transaction';

    protected $primaryKey = 'transaction_id';
    
    protected $fillable = [
        'customer_id',
        'transaction_amount',
        'transaction_discount',
        'transaction_additional_field',
        'transaction_payment_type',
        'transaction_state',
        'transaction_code',
        'transaction_order',
        'location_id',
        'organization_id',
        'transaction_payment_type_name',
        'transaction_cash_amount',
        'transaction_cash_change',
        'connote_id',
        'origin_data_id',
        'destination_data_id',
    ];

    protected $hidden = ['deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];

    protected $appends = ['customer_name','customer_code','customer_attribute','koli_data','custom_field','currentLocation'];
  
    public function getCustomerNameAttribute()
    {
        $customer_name = Customer::find($this->customer_id)->customer_name;
        return $customer_name;
    }

    public function getCustomerCodeAttribute()
    {
        $customer_code = Customer::find($this->customer_id)->customer_code;
        return $customer_code;
    }

    public function getCustomerAttributeAttribute()
    {
        $data = CustomerAttribute::where('customer_id',$this->customer_id)->get();
        $customer_attribute = [];
        foreach ($data as $key => $value) {
            $customer_attribute[$value['customer_attribute_key']] = $value['customer_attribute_value'];
        }
        return $customer_attribute;
    }

    public function getKoliDataAttribute()
    {
        $koli = Koli::where('connote_id',$this->connote_id)->get();
        foreach ($koli as $key => $value) {
            // get custom field data
            $custom_data = CustomFieldData::join('custom_field', 'custom_field.custom_field_id', '=', 'custom_field_data.custom_field_data_custom_id')
            ->where('custom_field_data_relation',$value['koli_id'])
            ->get(['custom_field_code', 'custom_field_data_value']);

            $arr_custom = [];
            foreach ($custom_data as $key1 => $value1) {
                $arr_custom[$value1->custom_field_code] = $value1->custom_field_data_value;
            }
            $koli[$key]['koli_custom_field'] = $arr_custom;
        }

        return $koli;
    }

    public function getCustomFieldAttribute()
    {
        $custom_data = CustomFieldData::where('custom_field_data_relation',$this->transaction_id)
        ->join('custom_field', 'custom_field.custom_field_id', '=', 'custom_field_data.custom_field_data_custom_id')
        ->get(['custom_field_code', 'custom_field_data_value']);

        $arr_custom = [];
        foreach ($custom_data as $key1 => $value1) {
            $arr_custom[$value1->custom_field_code] = $value1->custom_field_data_value;
        }

        return $arr_custom;
    }

    public function getCurrentLocationAttribute()
    {
        $connote_location = Location::find($this->location_id);
        $current_location = [
            'name' => $connote_location->location_name,
            'code' => $connote_location->location_code,
            'type' => $connote_location->location_type,
        ];
        return  $current_location;
    }
   
    public function connote()
    {
        return $this->hasOne(Connote::class, 'connote_id', 'connote_id');
    }
    public function origin_data()
    {
        return $this->hasOne(OriginData::class, 'origin_data_id', 'origin_data_id');
    }
    public function destination_data()
    {
        return $this->hasOne(DestinationData::class, 'destination_data_id', 'destination_data_id');
    }

    public function customer_attribute()
    {
        return $this->hasMany(CustomerAttribute::class, 'customer_id', 'customer_id');
    }
}
