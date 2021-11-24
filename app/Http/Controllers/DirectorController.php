<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class DirectorController extends Controller
{
    public function index($id)
    {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $director = $dl->findDirectorById($id);
        //return view('home', compact('genre'));
        return view('director', ['genre' => $genre, 'director' => $director]);
    }
}
