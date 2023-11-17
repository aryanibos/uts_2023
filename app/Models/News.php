<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class News extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    // Mendefinisikan nama tabel
    protected $table = 'news';

    // Mendefinisikan kolom yang bisa kita Isi
    protected $fillable = [
        'title',
        'author',
        'description',
        'content',
        'url',
        'url_image',
        'published_at',
        'category',
    ];
}
