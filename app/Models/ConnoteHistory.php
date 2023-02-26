<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ConnoteHistory extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'connote_history';

    protected $primaryKey = 'connote_history_id';

    protected $fillable = [
        'connote_id',
        'connote_history_number',
        'connote_history_service',
        'connote_history_service_price',
        'connote_history_amount',
        'connote_history_code',
        'connote_history_booking_code',
        'connote_history_order',
        'connote_history_state',
        'connote_state_id',
        'zone_code_from',
        'zone_code_to',
        'surchange_amount',
        'transaction_id',
        'actual_weight',
        'volume_weight',
        'chargeable_weight',
        'connote_history_total_package',
        'connote_history_surcharge_amount',
        'connote_history_sla_day',
        'source_tariff_db',
        'id_source_tariff',
        'pod',
    ];

    protected $hidden = ['created_at', 'updated_at','deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];
}
