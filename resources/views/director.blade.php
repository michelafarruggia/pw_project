@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'director.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('index') }}">
  <font color="#cfb7f6">Film & SerieTV</font>
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
    <li class="active">{{ $director->firstname }}  {{ $director->lastname }}</li>
  </ul>
</div>
@endsection

@section('content')
<div class="container">
  <div class="center-block">
  <h1>{{ $director->firstname }}  {{ $director->lastname }}</h1>
  <div style="float: left; margin-right: 10px">
  <img src="{{ url('/') }}/img/director/{{ $director->immagine }}" alt="{{ $director->firstname }}{{ $director->lastname }}" class="img-thumbnail img-responsive" />
  </div>
  <p>
    <br><br>
    {{ $director->descrizione }}
  </p>
</div>
</div>
@endsection