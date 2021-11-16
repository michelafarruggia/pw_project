<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataLayer extends Model
{
    use HasFactory;

    public function listGenre()
    {
        $listGenres = Genre::orderBy('nome_categoria', 'asc')->get();
        return $listGenres;
    }

    public function listFilms()
    {
        $listFilms = Film::orderBy('titolo', 'asc')->get();
        return $listFilms;
    }
}