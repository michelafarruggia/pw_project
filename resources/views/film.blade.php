@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'film.css')

@section('left_navbar')
<li class='active'><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('index') }}">Novità</a></li>
@endsection

@section('logsection')
<li><a href="{{ route('login') }}"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login</a></li>
<li><a href="{{ route('register') }}"><span aria-hidden="true"></span> Register</a></li>
@endsection

@section('breadcrumb')
<div class="container">
  <ul class="breadcrumb pull-right">
    <li><a href="{{ route('index') }}">Home</a></li>
    <li class="active">{{ $film->titolo }}</li>
  </ul>
</div>
@endsection

@section('content')
<div class="container">
  <h1>{{ $film->titolo }} ({{$film->anno}}) </h1>


  <div style="float: left; margin-right: 10px">
    <img src="{{ url('/') }}/img/film/{{ $film->locandina }}" alt="{{ $film->titolo }}" class="img-thumbnail img-responsive" />
  </div>
  <p>
    <br><br>
    <b>REGISTA:</b> {{ $director->firstname }} {{ $director->lastname }}
    <br><br>
    <b>CATEGORIA:</b> {{ $genreItem->nome_categoria }}
    <br><br>
    <b>DURATA:</b> {{ $film->durata }} minuti
    <br><br>
    <b>SINOSSI:</b> {{ $film->trama }}
  </p>
  
</div>



@endsection