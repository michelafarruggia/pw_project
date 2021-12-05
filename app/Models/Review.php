<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    protected $table = 'review';
    public $timestamps = false;
    
    protected $fillable = ['id', 'titolo', 'numStelle','testo', 'film_id','user_id', 'nomeUtente'];

    public function film()
    {
        return $this->hasOne(Film::class);
    }
}
