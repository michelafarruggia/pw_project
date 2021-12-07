<?php

namespace App\Http\Controllers;

use App\Models\MovieToWatch;
use App\Models\Review;
use App\Models\DataLayer;
use Illuminate\Support\Facades\Auth;

class MovieController extends Controller
{
    public function show($id) {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->findFilmById($id);
        $director = $dl->findDirectorById($film->director_id);
        $genreItem = $dl->findGenreById($film->categoria_id);
        $reviews = $dl->getReviewAboutFilm($film->id);

        if(MovieToWatch::where('film_id', '=', $id)->where('user_id', Auth::id())->exists())
        {
            $checkFilm=1;
        }else{
            $checkFilm=0;
        }

        if(Review::where('film_id', '=', $id)->where('user_id', Auth::id())->exists())
        {
            $checkReview=1;
        }else{
            $checkReview=0;
        }
        
        return view('film', ['film' => $film, 'genre' => $genre, 'director'=>$director, 'genreItem'=>$genreItem, 'reviews'=>$reviews, 'checkFilm' => $checkFilm, 'checkReview' => $checkReview]);
    }

}
