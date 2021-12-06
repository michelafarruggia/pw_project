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
        $reviews = $dl->listReviews();
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

        if (Auth::check()) {
            $film = Film::where('id', '=', $film_id)->first();
            if (Review::where('film_id', '=', $film_id)->where('user_id', Auth::id())->exists()) {
                return redirect()->back()->with('message', 'Hai già scritto una recensione su ' . '"' . $film->titolo . '"');
            } else if ($request->titolo != NULL and $request->stelle != NULL) {
                $dl = new DataLayer();
                $dl->addReviewFilm($film_id, $request);
                return redirect()->back()->with('message', 'La tua recensione è stata aggiunta');
            } else{
                return redirect()->back()->with('message', 'Compilare i campi obbligatori *');
            }
        } else {
            return redirect()->back()->with('message', 'Per scrivere una recensione effettuare il login!');
        }
    }

    public function removeReview($film_id)
    {
        $dl = new DataLayer();
        $dl->removeReviewFilm($film_id);
        return redirect()->back()->with('message', 'La tua recensione è stata correttamente eliminata');
    }
}
