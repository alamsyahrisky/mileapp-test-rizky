<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CustomField extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'custom_field';

    protected $primaryKey = 'custom_field_id';

    protected $fillable = [
        'custom_field_code',
        'custom_field_value',
    ];

    protected $hidden = ['created_at', 'updated_at','deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];
}
