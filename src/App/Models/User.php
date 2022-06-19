<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Model
{
    use SoftDeletes;
    protected $table = 'users';

    protected $fillable = [
        'first_name',
        'middle_name',
        'last_name',
        'username',
        'email',
        'dob',
        'password',
        'cv',
        'contacts'
    ];

    protected $casts = [
        'contacts' => 'array'
    ];

    protected function fullName(): Attribute
    {
        return Attribute::make(
            get: fn($value, $attributes) => "{$attributes['first_name']} {$attributes['middle_name']} {$attributes['last_name']}"
        );
    }
}