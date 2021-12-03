<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class SearchController extends Controller
{
    public function search(Request $request){
        $dl = new DataLayer();
        $genre = $dl->listGenre();
    
        // Search in the title and body columns from the posts table
        $film = $dl->getFilmByTitle($request);
     
        return view('index', ['genre' => $genre, 'film' => $film])
        ->with('i', (request()->input('page', 1) -1) *5);
    }

}
