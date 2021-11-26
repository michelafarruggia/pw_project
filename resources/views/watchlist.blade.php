@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'film.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('index') }}">
    <font color="#cfb7f6">Film & TV</font>
</a>
@endsection

@section('left_navbar')
<li class='active'><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('index') }}">Novità ({{ date('Y') }})</a></li>
@endsection

@section('content')
<div class="container">
    <div class="row placeholders">
        <section class="margine-bottom">
            <h1>La tua watchlist:</h1>
            <div class="container">
                <div class="row placeholders">
                    <section class="margine-bottom">
                        @foreach($film as $film_item)
                        <div class="col-xs-6 col-sm-4 col-md-3"><a href="{{ route('film', $film_item->id) }}"><img src="{{ url('/') }}/img/film/{{ $film_item->locandina }}" alt="{{ $film_item->titolo }}" class="img-thumbnail img-responsive"></a></div>
                        @endforeach
                </div>
            </div>
        </section>
    </div>
</div>
@endsection