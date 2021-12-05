@extends('layouts.master')

@section('titolo', 'MyMovies')

@section('stile', 'film.css')

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
    <li><a href="{{ route('index') }}">Home</a></li>
    <li class="active">Le mie recensioni</li>
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
  @foreach($reviews as $review)
  <div class="review-box">
    <b>{{ $review-> titolo }}</b>

    <div class="container">
      @php
      $i = 0;
      $stelle=$review->numStelle
      @endphp
      @for($i = 0; $i <= $stelle-1; $i++) 
      <span class="glyphicon glyphicon-star">
      @endfor
      @for($i = 0; $i <= 5-$stelle-1; $i++) 
      <span class="glyphicon glyphicon-star-empty">
      @endfor
    </div>

   

    <hr>
    {{ $review -> testo }}
   
    <div class="form-group">
        <button style="margin-top:10px" type="button" title="Elimina recensione" class="btn btn-primary" data-toggle="modal" data-target="#deleteReviewModal" value="removeReview">Cancella recensione</button>
        @include('modal.deleteReview')
    </div>
  </div>
  @endforeach
</div>
@endsection