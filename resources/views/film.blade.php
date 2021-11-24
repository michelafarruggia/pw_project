@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'film.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('index') }}">
  <font color="#cfb7f6">Film & SerieTV</font>
</a>
@endsection

@section('left_navbar')
<li><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('novita', 2021) }}">Novità</a></li>
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
  <h1>{{ $film->titolo }} ({{$film->anno}})</h1>
  <div style="float: left; margin-right: 10px">
    <img src="{{ url('/') }}/img/film/{{ $film->locandina }}" alt="{{ $film->titolo }}" class="img-thumbnail img-responsive" />
  </div>
  <p>
    <br><br>
    <font color="#cfb7f6"><b>REGISTA:</b></font> <a href="{{ route('director', $film->director_id) }}"> {{ $director->firstname }} {{ $director->lastname }}</a>
    <br><br>
    <font color="#cfb7f6"><b>CATEGORIA:</b></font> {{ $genreItem->nome_categoria }}
    <br><br>
    <font color="#cfb7f6"><b>DURATA:</b></font> {{ $film->durata }} minuti
    <br><br>
    <font color="#cfb7f6"><b>SINOSSI:</b></font> {{ $film->trama }}
  </p>

</div>



@endsection