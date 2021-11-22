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

    public function findFilmById($id) {
        return Film::find($id);
    }

    public function findDirectorById($id) {
        return Director::find($id);
    }

    public function findGenreById($id) {
        return Genre::find($id);
    }

    public function findFilmsByGenreId($id){
        $listFilms = Film::where('categoria_id','=', $id)->get();
        return $listFilms;
    }
    
}