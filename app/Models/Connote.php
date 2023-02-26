<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Connote extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'connote';

    protected $primaryKey = 'connote_id';

    protected $fillable = [
        'connote_number',
        'connote_service',
        'connote_service_price',
        'connote_amount',
        'connote_code',
        'connote_booking_code',
        'connote_order',
        'connote_state',
        'connote_state_id',
        'zone_code_from',
        'zone_code_to',
        'surchange_amount',
        'transaction_id',
        'actual_weight',
        'volume_weight',
        'chargeable_weight',
        'connote_total_package',
        'connote_surcharge_amount',
        'connote_sla_day',
        'source_tariff_db',
        'id_source_tariff',
        'pod',
    ];

    protected $hidden = ['deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];

    protected $appends = ['location_name','location_type'];
  
    public function getLocationNameAttribute()
    {
        $location = DB::table('transaction')
            ->join('location', 'transaction.location_id', '=', 'location.location_id')
            ->where('connote_id',$this->connote_id)
            ->select('location_name')
            ->first();

        return ($location ? $location->location_name : null);
    }

    public function getLocationTypeAttribute()
    {
        $location = DB::table('transaction')
            ->join('location', 'transaction.location_id', '=', 'location.location_id')
            ->where('connote_id',$this->connote_id)
            ->select('location_type')
            ->first();

            return ($location ? $location->location_type : null);
    }
   
    public function history()
    {
        return $this->hasMany(ConnoteHistory::class, 'connote_id', 'connote_id');
    }

    
    
}
