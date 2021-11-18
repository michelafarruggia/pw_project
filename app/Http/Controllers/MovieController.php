<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class MovieController extends Controller
{
    public function index()
    {
        $dl = new DataLayer();
        $film = $dl->listFilms();
        //return view('home', compact('genre'));
        return view('index', ['film' => $film]);
    }

    public function show($id) {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->findFilmById($id);
        return view('film', ['film' => $film, 'genre' => $genre] );
    }
}
