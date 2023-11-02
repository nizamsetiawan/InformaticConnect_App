<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;

    protected $fillable = ['judul_artikel', 'isi_artikel', 'kategori_artikel', 'tgl_artikel', 'gambar_artikel'];
}
