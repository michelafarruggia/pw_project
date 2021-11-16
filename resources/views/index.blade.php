@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'style.css')

@section('left_navbar')
<li class='active'><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('index') }}">Novità</a></li>
<li class="dropdown">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Categorie <span class="caret"></span></a>
  <ul class="dropdown-menu">
    @foreach($genre as $genre_item)
    <li><a href="#">{{ $genre_item->nome_categoria }}</a></li>
    @endforeach
  </ul>
</li>
@endsection

@section('logsection')
<li><a href="{{ route('login') }}"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login</a></li>
<li><a href="{{ route('register') }}"><span aria-hidden="true"></span> Register</a></li>
@endsection

@section('breadcrumb')
<div class="container">
  <ul class="breadcrumb pull-right">
    <li class="active">Home</li>
  </ul>
</div>
@endsection

@section('listaFilm')
<div class="container">
  <div class="row placeholders">
    <section class="margine-bottom">
      @foreach($film as $film_item)
      <div class="col-xs-6 col-sm-4 col-md-3"><img src="{{ url('/') }}/img/film/{{ $film_item->locandina }}" alt="{{ $film_item->titolo }}" class="img-thumbnail img-responsive crop"></div>
      @endforeach
  </div>
</div>
@endsection