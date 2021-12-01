<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class DataLayer extends Model
{
    use HasFactory;

    public function listGenre()
    {
        $listGenres = Genre::orderBy('nome_categoria', 'asc')->get();
        return $listGenres;
    }

    public function listFilms()
    {
        $listFilms = Film::orderBy('titolo', 'asc')->get();
        return $listFilms;
    }

    public function findFilmById($id)
    {
        return Film::find($id);
    }

    public function findDirectorById($id)
    {
        return Director::find($id);
    }

    public function findGenreById($id)
    {
        return Genre::find($id);
    }

    public function findFilmsByGenreId($id)
    {
        $listFilms = Film::where('categoria_id', '=', $id)->get();
        return $listFilms;
    }

    public function getNewFilm($annoCorrente)
    {
        $listFilms = Film::where('anno', '=', $annoCorrente)->get();
        return $listFilms;
    }

    public function getFilmByTitle($request)
    {
        $film = Film::where([
            ['titolo', '!=', Null],
            [function ($query) use ($request) {
                if (($term = $request->term)) {
                    $query->orWhere('titolo', 'LIKE', '%' . $term . '%')->get();
                }
            }]
        ])->orderBy('titolo', 'asc')->paginate(15);

        return $film;
    }

    public function addToWatchlist($film_id)
    {
        MovieToWatch::insert([
            'user_id' => Auth::id(),
            'film_id' => $film_id
        ]);
    }

    public function removeFromWatchlist($film_id)
    {
        MovieToWatch::where('film_id', '=', $film_id)->where('user_id', Auth::id())->delete();
    }

    public function filmToWatch()
    {
        $listIdFilms = MovieToWatch::where('user_id', Auth::id())->select(['film_id'])->get();
        foreach($listIdFilms as $film_id_item)
        {
            $film_el=$this->findFilmById($film_id_item);
        }
        return $film_el;
    }
}
