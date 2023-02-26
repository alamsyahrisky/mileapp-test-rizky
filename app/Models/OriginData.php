<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class OriginData extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;
    
    protected $table = 'origin_data';

    protected $primaryKey = 'origin_data_id';

    protected $fillable = [
        'customer_id',
        'zone_code',
        'location_id',
        'organization_id',
    ];

    protected $hidden = ['created_at', 'updated_at','deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];

    /**
     * Get the user associated with the OriginData
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function customer()
    {
        return $this->hasOne(Customer::class, 'customer_id', 'customer_id');
    }

    public function location()
    {
        return $this->hasOne(Location::class, 'location_id', 'location_id');
    }

    public function organization()
    {
        return $this->hasOne(Organization::class, 'organization_id', 'organization_id');
    }
}
