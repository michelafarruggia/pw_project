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

    public function addToWatchlist($id)
    {
        $filmToWatch = MovieToWatch::where('id', '=', $id) ->where( 'user_id', Auth::id())->first();
        if (MovieToWatch::where('id', '=', $id)->where( 'user_id', Auth::id())->exists()) {
            $dl = new DataLayer();
            $dl->removeFromWatchlist($id);
            return redirect()->back()->with('message', '"'.$filmToWatch->titolo.'" è stato rimosso dalla watchlist!');
         } else{
        $film = Film::where('id', '=', $id)->first();
        $dl = new DataLayer();
        $dl->addToWatchlist($id);
        return redirect()->back()->with('message', '"'.$film->titolo.'" è stato aggiunto alla watchlist');
        }
    }


}
