<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;
use App\Models\Film;
use App\Models\Review;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function addReview($film_id)
    {
        if(Auth::check()){
        $film = Film::where('id', '=', $film_id)->first();
        if (Review::where('film_id', '=', $film_id)->where('user_id', Auth::id())->exists()) {
            return redirect()->back()->with('message', '"' . $film->titolo . '" è stato rimosso dalla watchlist!');
        } else {
            $film = Film::where('id', '=', $film_id)->first();
            $dl = new DataLayer();
            $dl->addToWatchlist($film_id);
            return redirect()->back()->with('message', '"' . $film->titolo . '" è stato aggiunto alla watchlist');
        }}else{
            return redirect()->back()->with('message', 'Per aggiungere un film alla watchlist effettuare il login!');
        }
    }
}
