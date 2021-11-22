<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class NovitaController extends Controller
{
    public function getNewFilm($annoCorrente)
    {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->getNewFilm($annoCorrente);
        return view('novita', ['genre' => $genre, 'film' => $film]);
    }
}
