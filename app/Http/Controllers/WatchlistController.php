<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataLayer;

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
        $dl = new DataLayer();
        $dl->addToWatchlist($id);
        return redirect()->back()->with('message', 'Film aggiunto alla watchlist');
    }

}
