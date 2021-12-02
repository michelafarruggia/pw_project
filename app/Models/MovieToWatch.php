<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MovieToWatch extends Model
{
    use HasFactory;

    protected $table = "movie_to_watch";
    public $timestamps = false;

    protected $fillable = ['id', 'user_id', 'film_id'];

    public function director()
    {
        return $this->belongsTo('App\Models\Director');
    }

    public function categoria()
    {
        return $this->belongsTo('App\Models\Genre');
    }

}
