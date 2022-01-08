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

    public function listFilmPaginated()
    {
        $listFilms = Film::orderBy('titolo', 'asc')->paginate(8);
        return $listFilms;
    }

    public function listReviewsPaginated()
    {
        $listReviews = Review::where('user_id', Auth::id())->orderBy('created_at','desc')->paginate(5);
        return $listReviews;
    }

    public function findFilmById($id)
    {
        return Film::find($id);
    }

    public function findFilmTitleById($id)
    {
        $titolo= Film::where('id', '=', $id)->select('titolo')->value('titolo');
        return $titolo;
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

    public function findFilmsByGenreIdPaginated($id)
    {
        $listFilms = Film::where('categoria_id', '=', $id)->paginate(8);
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

    public function removeWatchlist()
    {
        MovieToWatch::where('user_id', Auth::id())->delete();
    }

    public function removeReviews()
    {
        Review::where('user_id', Auth::id())->delete();
    }

    public function removeUser()
    {
        User::where('id', Auth::id())->delete();
    }

    public function filmToWatch()
    {
        $listIdFilms = MovieToWatch::all()->where('user_id', Auth::id())->pluck(['film_id']);
 
        $films=array();
        foreach($listIdFilms as $film_id_item)
        {
            $film_el=$this->findFilmById($film_id_item);
            array_push($films, $film_el);
        }
        return $films;
    }

    public function addReviewFilm($film_id, $request)
    {
        $titolo = $request->titolo;
        $testo = $request->textarea;
        $stelle = $request->stelle;
       
        Review::insert([
            'titolo' => $titolo,
            'numStelle' => $stelle,
            'testo' => $testo,
            'film_id' => $film_id,
            'titolo_film' => $this->findFilmTitleById($film_id),
            'user_id' => Auth::id(),
            'nomeUtente' => Auth::user()->name
        ]);
       
    }

    public function getReviewAboutFilm($film_id)
    {
        $reviews = Review::where('film_id', '=', $film_id)->get();
        return $reviews;
    }

    public function getReviewAboutFilmPaginated($film_id)
    {
        $reviews = Review::where('film_id', '=', $film_id)->orderBy('created_at','desc')->paginate(3);
        return $reviews;
    }

    public function removeReviewFilm($id)
    {
        Review::where('id', '=', $id)->delete();
    }

    public function updateReviewFilm($request, $id){
        $titolo = $request->titolo;
        $testo = $request->textarea;
        $stelle = $request->stelle;

        if($titolo!=NULL and $stelle!=NULL){
        Review::where('id', $id)
              ->update(['titolo' => $titolo, 'numStelle' => $stelle, 'testo' => $testo]);
        }else if($titolo==NULL and $stelle!=NULL){
            Review::where('id', $id)
              ->update(['numStelle' => $stelle, 'testo' => $testo]);
        }else{
            Review::where('id', $id)
              ->update(['titolo' => $titolo, 'testo' => $testo]);
        }
    }
}
