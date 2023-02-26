<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Customer extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'customer';

    protected $primaryKey = 'customer_id';

    protected $fillable = [
        'customer_name',
        'customer_code',
        'customer_address',
        'customer_email',
        'customer_phone',
        'customer_address_detail',
        'customer_zip_code',
    ];

    protected $hidden = ['created_at', 'updated_at','deleted_at'];
    

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];

   
    public function attributes()
    {
        return $this->hasMany(CustomerAttribute::class, 'customer_id', 'customer_id');
    }
}
