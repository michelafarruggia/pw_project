@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'film.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('index') }}">
    <font color="#cfb7f6">Tutto Film</font>
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
            <br>
            <div class="container">
                <div class="row placeholders">
                    <section class="margine-bottom">
                        @if(!empty($film))
                        @foreach($film as $film_item)
                        <div class="col-xs-6 col-sm-4 col-md-3"><a href="{{ route('film', $film_item->id) }}"><img src="{{ url('/') }}/img/film/{{ $film_item->locandina }}" alt="{{ $film_item->titolo }}" class="img-thumbnail img-responsive"></a></div>
                        @endforeach
                        @else
                        <div class="alert alert-success" role="alert">La tua watchlist è vuota</div>
                        @endif
                        @include('modal.deleteProfile')
                </div>
            </div>
        </section>
    </div>
</div>
@endsection