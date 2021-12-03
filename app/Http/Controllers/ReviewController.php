<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;
use App\Models\Film;
use App\Models\Review;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function addReview(Request $request, $film_id)
    {
        if(Auth::check()){
        $film = Film::where('id', '=', $film_id)->first();
        if (Review::where('film_id', '=', $film_id)->where('user_id', Auth::id())->exists()) {
            return redirect()->back()->with('message', 'Hai già scritto una recensione su '.'"' . $film->titolo . '"');
        } else {
            $dl = new DataLayer();
            $dl->addReviewFilm($film_id, $request);
            return redirect()->back()->with('message', 'La tua recensione è stata aggiunta');
        }}else{
            return redirect()->back()->with('message', 'Per scrivere una recensione effettuare il login!');
        }
    }
}
