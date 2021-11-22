@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'style.css')

@section('left_navbar')
<li><a href="{{ route('index') }}">Home</a></li>
<li class='active'><a href="{{ route('novita', 2021) }}">Novità</a></li>
@endsection

@section('logsection')
<li><a href="{{ route('login') }}"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login</a></li>
<li><a href="{{ route('register') }}"><span aria-hidden="true"></span> Register</a></li>
@endsection

@section('breadcrumb')
<div class="container">
  <ul class="breadcrumb pull-right">
    <li><a href="{{ route('index') }}">Home</a></li>
    <li class="active">Novita</li>
  </ul>
</div>
@endsection

@section('content')
<div class="container">
  <div class="row placeholders">
    <section class="margine-bottom">
      @foreach($film as $film_item)
      <div class="col-xs-6 col-sm-4 col-md-3"><a href="{{ route('film', $film_item->id) }}"><img src="{{ url('/') }}/img/film/{{ $film_item->locandina }}" alt="{{ $film_item->titolo }}" class="img-thumbnail img-responsive"></a></div>
      @endforeach
  </div>
</div>
@endsection