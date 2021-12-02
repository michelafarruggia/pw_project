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
  @if (session()->has('message'))
  <div class="alert alert-success">
    {{ session()->get('message') }}
  </div>
  @endif

  <div style="float: left; margin-right: 20px">
    <font style="font-size: 250%">{{ $film->titolo }} ({{$film->anno}})</font>
  </div>
</div>

<div class="container">
  <div style="float: left; margin-right: 0px">
    <img src="{{ url('/') }}/img/film/{{ $film->locandina }}" alt="{{ $film->titolo }}" class="img-thumbnail img-responsive" />
  </div>

  <div class="box">
    <p>
      <br><br>
    <div class="form-inline">
      <div class="form-group">
        <button type="button" title="Guarda il trailer" class="btn btn-primary" data-toggle="modal" data-target="#demoModal"><span class="glyphicon glyphicon-facetime-video"></button>
        @include('modal.trailer')
        <script>
          $(document).ready(function() {
            /* Get iframe src attribute value i.e. YouTube video url
            and store it in a variable */
            var url = $("#cartoonVideo").attr('src');

            /* Remove iframe src attribute on page load to
            prevent autoplay in background */
            $("#cartoonVideo").attr('src', '');

            /* Assign the initially stored url back to the iframe src
            attribute when modal is displayed */
            $("#demoModal").on('shown.bs.modal', function() {
              $("#cartoonVideo").attr('src', url);
            });

            /* Assign empty url value to the iframe src attribute when
            modal hide, which stop the video playing */
            $("#demoModal").on('hide.bs.modal', function() {
              $("#cartoonVideo").attr('src', '');
            });
          });
        </script>
      </div>
      <div class="form-group">
        <form action="{{ route('watchlistroute', $film->id) }}" method="POST">
          @csrf
          @method('POST')
          <button class="btn btn-primary" title="Aggiungi/rimuovi dalla Watchlist" type="submit button" value="toWatch"><span class="glyphicon glyphicon-bookmark"></span></button>
        </form>
      </div>
      <div class="form-group">
        <form action="{{ route('addReview', $film->id) }}" method="POST">
          @csrf
          @method('POST')
          <button type="button" title="Scrivi una recensione" class="btn btn-primary" data-toggle="modal" data-target="#reviewModal" value="addReview"><span class="glyphicon glyphicon-pencil"></button>
          @include('modal.review')
      </div>
    </div>
  </div>
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

<div class="container">
  <h3>Recensioni degli utenti: </h3>
</div>
</div>
</div>



@endsection