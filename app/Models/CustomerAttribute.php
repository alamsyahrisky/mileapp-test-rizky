<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerAttribute extends Model
{
    use HasFactory,UuidTrait;

    protected $table = 'customer_attribute';

    protected $primaryKey = 'customer_attribute_id';

    protected $fillable = [
        'customer_attribute_key',
        'customer_attribute_value',
        'customer_id',
    ];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];
}
