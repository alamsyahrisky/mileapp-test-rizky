<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CustomFieldData extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'custom_field_data';

    protected $primaryKey = 'custom_field_data_id';

    protected $fillable = [
        'custom_field_data_value',
        'custom_field_data_relation',
        'custom_field_data_module',
        'custom_field_data_custom_id',
    ];

    protected $hidden = ['created_at', 'updated_at','deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];
}
