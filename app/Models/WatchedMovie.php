<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WatchedMovie extends Model
{
    protected $table = "watched_movies";
    public $fillable = ['category_id', 'movie_id', 'rate'];
    public $timestamps = false;
}
