@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'style.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('index') }}">
  <font color="#cfb7f6">Tutto Film</font>
</a>
@endsection

@section('left_navbar')
<li class='active'><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('novita', date('Y')) }}">Novità ({{ date('Y') }})</a></li>
@endsection

@section('breadcrumb')
<div class="container">
  <ul class="breadcrumb pull-right">
    <li class="active">Home</li>
  </ul>
</div>
@endsection

@section('content')
<div class="container">
@if (session()->has('message'))
  <div class="alert alert-success">
    {{ session()->get('message') }}
  </div>
  @endif

  <div class="row placeholders">
    <section class="margine-bottom">
      @foreach($film as $film_item)
      <div class="col-xs-6 col-sm-4 col-md-3"><a href="{{ route('film', $film_item->id) }}"><img src="{{ url('/') }}/img/film/{{ $film_item->locandina }}" alt="{{ $film_item->titolo }}" class="img-thumbnail img-responsive"></a></div>
      @endforeach
      @include('modal.deleteProfile')
  </div>

  <div class="pull-right" style="margin-top:30px; margin-bottom:30px">
  <span>
   {{$film->links()}}
  </span>
  </div> 

</div>


@endsection