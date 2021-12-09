<?php

use Illuminate\Support\Facades\Route;
use App\Models\DataLayer;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/', [\App\Http\Controllers\FrontController::class, 'index']);

Route::get('/index', [\App\Http\Controllers\FrontController::class, 'index'])->name('index');

Route::get('/authenticated', function () {
    $dl = new DataLayer();
    $genre = $dl->listGenre();
    $film = $dl->listFilmPaginated();
    return view('index', ['genre' => $genre, 'film' => $film]);
})->middleware(['auth'])->name('authenticated');

Route::get('/film/{id}', [\App\Http\Controllers\MovieController::class, 'show'])->name('film');

Route::get('/categoria/{id}', [\App\Http\Controllers\GenreController::class, 'getFilmGenreId'])->name('categoria');

Route::get('/novita/{annoCorrente}', [\App\Http\Controllers\NovitaController::class, 'getNewFilm'])->name('novita');

Route::get('/search', [\App\Http\Controllers\SearchController::class, 'search'])->name('search');

Route::get('/director/{id}', [\App\Http\Controllers\DirectorController::class, 'index'])->name('director');

Route::get('/watchlist', [\App\Http\Controllers\WatchlistController::class, 'index'])->name('watchlist');

Route::post('/add/watchlist/{id}', [\App\Http\Controllers\WatchlistController::class, 'addToWatchlist'])->name('watchlistroute');

Route::post('/add/review/{id}', [\App\Http\Controllers\ReviewController::class, 'addReview'])->name('addReview');

Route::get('/myReview', [\App\Http\Controllers\ReviewController::class, 'index'])->name('myReview');

Route::post('/remove/review/{id}', [\App\Http\Controllers\ReviewController::class, 'removeReview'])->name('removeReview');

Route::post('/update/review/{id}', [\App\Http\Controllers\ReviewController::class, 'updateReview'])->name('updateReview');

require __DIR__.'/auth.php';
