<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Informatic extends Model
{
    use HasFactory;

    protected $fillable = [
        'mentor_id',
        'category',
        'student',
        'description',
        'status',
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
