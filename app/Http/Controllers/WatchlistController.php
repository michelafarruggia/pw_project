<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class WatchlistController extends Controller
{
    public function index()
    {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->listFilms();
        //return view('home', compact('genre'));
        return view('watchlist', ['genre' => $genre, 'film' => $film]);
    }
}
