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

Route::get('/index', function () {
    $dl = new DataLayer();
    $genre = $dl->listGenre();
    $film = $dl->listFilms();
    return view('index', ['genre' => $genre, 'film' => $film]);
})->middleware(['auth'])->name('index');

Route::get('/film/{id}', [\App\Http\Controllers\MovieController::class, 'show'])->name('film');

Route::get('/categoria/{id}', [\App\Http\Controllers\GenreController::class, 'getFilmGenreId'])->name('categoria');

Route::get('/novita/{annoCorrente}', [\App\Http\Controllers\NovitaController::class, 'getNewFilm'])->name('novita');

Route::get('/search', [\App\Http\Controllers\SearchController::class, 'search'])->name('search');

Route::get('/director/{id}', [\App\Http\Controllers\DirectorController::class, 'index'])->name('director');

require __DIR__.'/auth.php';
