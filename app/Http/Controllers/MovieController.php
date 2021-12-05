<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

class MovieController extends Controller
{
    public function show($id) {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->findFilmById($id);
        $director = $dl->findDirectorById($film->director_id);
        $genreItem = $dl->findGenreById($film->categoria_id);
        $reviews = $dl->getReviewAboutFilm($film->id);
        return view('film', ['film' => $film, 'genre' => $genre, 'director'=>$director, 'genreItem'=>$genreItem, 'reviews'=>$reviews]);
    }

}
