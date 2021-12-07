<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;
use App\Models\MovieToWatch;
use App\Models\Film;
use Illuminate\Support\Facades\Auth;

class WatchlistController extends Controller
{
    public function index()
    {
        $dl = new DataLayer();
        $genre = $dl->listGenre();
        $film = $dl->filmToWatch();
        return view('watchlist', ['genre' => $genre, 'film' => $film]);
    }

    public function addToWatchlist($film_id)
    {
        $film = Film::where('id', '=', $film_id)->first();
        if (MovieToWatch::where('film_id', '=', $film_id)->where('user_id', Auth::id())->exists()) {
            $dl = new DataLayer();
            $dl->removeFromWatchlist($film_id);
            return redirect()->back()->with('message', '"' . $film->titolo . '" è stato rimosso dalla watchlist!');
        } else {
            $film = Film::where('id', '=', $film_id)->first();
            $dl = new DataLayer();
            $dl->addToWatchlist($film_id);
            return redirect()->back()->with('message', '"' . $film->titolo . '" è stato aggiunto alla watchlist');
        }
    }
}
