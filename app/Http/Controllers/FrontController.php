<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class FrontController extends Controller
{
    public function index()
    {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->listFilmPaginated();
        //return view('home', compact('genre'));
        return view('index', ['genre' => $genre, 'film' => $film]);
    }
   
   
}


