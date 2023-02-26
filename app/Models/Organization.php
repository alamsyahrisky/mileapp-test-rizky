<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Organization extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;
    
    protected $table = 'organization';

    protected $primaryKey = 'organization_id';

    protected $fillable = [
        'organization_name',
    ];

    protected $hidden = ['created_at', 'updated_at','deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];
}
