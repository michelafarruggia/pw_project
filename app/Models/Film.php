<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Film extends Model
{
    use HasFactory;

    protected $table = "film";
    public $timestamps = false;

    protected $fillable = ['id', 'titolo', 'anno', 'trama', 'locandina', 'categoria_id', 'durata', 'director_id'];

    public function director()
    {
        return $this->belongsTo('Progetto\Director');
    }
}
