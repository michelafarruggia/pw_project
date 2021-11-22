@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'style.css')

@section('navbar-brand')
<a class="navbar-brand" href="{{ route('authenticated') }}">
    <font color="#cfb7f6">Film & SerieTV</font>
</a>
@endsection

@section('left_navbar')
<li class='active'><a href="{{ route('authenticated') }}">Home</a></li>
<li><a href="{{ route('authenticated') }}">Novità</a></li>
@endsection

@section('logsection')
//
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
    <div class="row placeholders">
        <section class="margine-bottom">
            //PAGINA DA AUTENTICATO
        </section>
    </div>
</div>
@endsection