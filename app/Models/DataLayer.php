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

    public function addToWatchlist($id)
    {
        $film = $this->findFilmById($id);

        MovieToWatch::insert([
            'id' => $film->id,
            'titolo' => $film->titolo,
            'anno' => $film->anno,
            'trama' => $film->trama,
            'locandina' => $film->locandina,
            'categoria_id' => $film->categoria_id,
            'durata' => $film->durata,
            'director_id' => $film->director_id,
            'user_id' => Auth::id()
        ]);
    }

    public function filmToWatch()
    {
        $listFilms = MovieToWatch::orderBy('titolo', 'asc')->where('user_id', Auth::id())->get();
        return $listFilms;
    }
}
