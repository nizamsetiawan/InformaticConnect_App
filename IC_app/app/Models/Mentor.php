<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mentor extends Model
{
    use HasFactory;

    protected $fillable = [
        'men_id',
        'category',
        'clients',
        'experience',
        'bio_data',
        'status',
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
