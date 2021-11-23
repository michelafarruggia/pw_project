<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MovieToWatch extends Model
{
    use HasFactory;

    protected $table = "movieToWatch";
    public $timestamps = false;

    protected $fillable = ['id', 'titolo', 'anno', 'trama', 'locandina', 'categoria_id', 'durata', 'director_id'];

    public function director()
    {
        return $this->belongsTo('App\Models\Director');
    }

    public function categoria()
    {
        return $this->belongsTo('App\Models\Genre');
    }

}
