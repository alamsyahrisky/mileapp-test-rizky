<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class State extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'state';

    protected $primaryKey = 'state_id';

    protected $fillable = [
        'state_name'
    ];

    protected $hidden = ['created_at', 'updated_at','deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];
}
