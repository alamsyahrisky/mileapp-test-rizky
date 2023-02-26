<?php

namespace App\Models;

use App\Traits\UuidTrait;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Koli extends Model
{
    use HasFactory,SoftDeletes,UuidTrait;

    protected $table = 'koli';

    protected $primaryKey = 'koli_id';

    protected $fillable = [
        'connote_id',
        'koli_length',
        'awb_url',
        'koli_chargeable_weight',
        'koli_width',
        'koli_surcharge',
        'koli_height',
        'koli_description',
        'koli_formula_id',
        'koli_volume',
        'koli_weight',
        'koli_code',
    ];

    protected $hidden = ['deleted_at'];

    protected $casts= [
        'created_at' => 'date:Y-m:d H:i:s',
        'updated_at' => 'date:Y-m:d H:i:s',
    ];
}
