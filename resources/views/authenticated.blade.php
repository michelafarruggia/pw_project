@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'style.css')

@section('left_navbar')
<li class='active'><a href="{{ route('index') }}">Home</a></li>
<li><a href="{{ route('index') }}">Novità</a></li>
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