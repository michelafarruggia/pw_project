<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;
use App\Models\Film;
use App\Models\Review;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function index()
    {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->listFilms();
        $reviews = $dl->listReviewsPaginated();
        //return view('home', compact('genre'));
        return view('myReview', ['genre' => $genre, 'film' => $film, 'reviews' => $reviews]);
    }

    public function addReview(Request $request, $film_id)
    {
        $request->validate([
            'titolo' => 'required',
            'stelle' => 'required',
            'textarea' => 'max:255',
        ]);

        $dl = new DataLayer();
        $dl->addReviewFilm($film_id, $request);
        return redirect()->back()->with('message', 'La tua recensione è stata aggiunta');
    }

    public function removeReview($id)
    {
        $dl = new DataLayer();
        $dl->removeReviewFilm($id);
        return redirect()->back()->with('message', 'La tua recensione è stata correttamente eliminata');
    }
}
