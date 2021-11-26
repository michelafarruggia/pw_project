@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'film.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('index') }}">
  <font color="#cfb7f6">Film & TV</font>
</a>
@endsection

@section('left_navbar')
<li><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('novita', date('Y')) }}">Novità ({{ date('Y') }})</a></li>
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
  <form action="/watchlist" method="POST" role="watchlist">
    <button class="btn btn-outline-success colored" type="submit"><span class="glyphicon glyphicon-bookmark"></span></button>
   
  </form>
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