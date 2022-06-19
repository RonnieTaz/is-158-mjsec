<?php

namespace App\Http\Models;

use App\Enum\Results;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Alumnus extends Model
{
    use SoftDeletes;

    protected $table = 'alumni';

    protected $fillable = [
        'name',
        'enrollment_year',
        'graduation_year',
        'headmaster',
        'famous_teacher',
        'results',
        'occupation',
        'address',
        'email',
        'phone_number'
    ];

    protected $casts = [
        'results' => Results::class
    ];
}