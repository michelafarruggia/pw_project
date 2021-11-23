<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;
use Illuminate\Support\Facades\DB;


class FrontController extends Controller
{
    public function index()
    {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->listFilms();
        //return view('home', compact('genre'));
        return view('index', ['genre' => $genre, 'film' => $film]);
    }
   
   
}


