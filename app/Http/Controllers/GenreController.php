<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class GenreController extends Controller
{
    public function getFilmGenreId($id){
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $filmGenreId = $dl-> findFilmsByGenreId($id);
        return view('genre', ['genre' => $genre, 'filmGenreId' => $filmGenreId]);
  }
}
