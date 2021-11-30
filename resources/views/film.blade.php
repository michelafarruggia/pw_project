@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'film.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('index') }}">
  <font color="#cfb7f6">Tutto Film</font>
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
  <div class="container">
    @if (session()->has('message'))
    <div class="alert alert-success">
      {{ session()->get('message') }}
    </div>
    @endif
    <div style="float: left; margin-right: 20px">
      <font style="font-size: 250%">{{ $film->titolo }} ({{$film->anno}})</font>
    </div>
    @if(Auth::check())
    <form action="{{ route('watchlistroute', $film->id) }}" method="POST">
      @csrf
      @method('POST')
      <button style="margin-top:10px" class="btn btn-primary" type="submit" value="toWatch"><span class="glyphicon glyphicon-bookmark" style="color:#b185db"></span></button>
    </form>
    @endif
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#demoModal">Trailer</button>
  </div>
</div>

@include('modal.trailer')

<div class="container">
  <div style="float: left; margin-right: 0px">
    <img src="{{ url('/') }}/img/film/{{ $film->locandina }}" alt="{{ $film->titolo }}" class="img-thumbnail img-responsive" />
  </div>

  <div class="container">
    <p>
      <br><br>
      <font color="#cfb7f6"><b>REGISTA:</b></font> <a href="{{ route('director', $film->director_id) }}"> {{ $director->firstname }} {{ $director->lastname }}</a>
      <br><br>
      <font color="#cfb7f6"><b>CATEGORIA:</b></font> {{ $genreItem->nome_categoria }}
      <br><br>
      <font color="#cfb7f6"><b>DURATA:</b></font> {{ $film->durata }} minuti
      <br><br>
      <font color="#cfb7f6"><b>SINOSSI:</b></font> {{ $film->trama }}
      <br><br>
    </p>
  </div>
</div>
</div>



@endsection