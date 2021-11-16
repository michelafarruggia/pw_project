@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'style.css')

@section('left_navbar')
<li class='active'><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('index') }}">Novità</a></li>
<li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Categorie <span class="caret"></span></a>
    <ul class="dropdown-menu">
        <@foreach($genre as $genre_item)
        <li><a href="#">{{ $genre_item->nome_categoria }}</a></li>
        @endforeach
    </ul>
</li>
@endsection

@section('logsection')

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
            <div class="col-xs-6 col-sm-4 col-md-3"><img src="{{ url('/') }}/img/film/peaky_blinders.jpg" alt="Peaky Blinders" class="img-thumbnail img-responsive crop"></div>
            <div class="col-xs-6 col-sm-4 col-md-3"><img src="{{ url('/') }}/img/film/tenet.jpg" alt="Tenet" class="img-thumbnail img-responsive crop"></div>
            <div class="col-xs-6 col-sm-4 col-md-3"><img src="{{ url('/') }}/img/film/The-Conjuring.jpg" alt="The Conjuring" class="img-thumbnail img-responsive crop"></div>
            <div class="col-xs-6 col-sm-4 col-md-3"><img src="{{ url('/') }}/img/film/titanic.jpg" alt="The Conjuring" class="img-thumbnail img-responsive crop"></div>
            <div class="col-xs-6 col-sm-4 col-md-3"><img src="{{ url('/') }}/img/film/mr_robot.jpg" alt="mr" class="img-thumbnail img-responsive crop"></div>
            <div class="col-xs-6 col-sm-4 col-md-3"><img src="{{ url('/') }}/img/film/demon_slayer.jpg" alt="ds" class="img-thumbnail img-responsive crop"></div>
        </section>
    </div>
</div>
@endsection