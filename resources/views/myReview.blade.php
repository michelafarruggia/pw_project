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
  <h3>Recensioni degli utenti </h3>
  <hr>

  <div class="container">
    @foreach($reviews as $review)
    <div class="review-box">
      <h4>Recensione del film <font color="#cfb7f6">{{ $review->titolo_film }}</font>
      </h4>
      <hr>
      <font color="#cfb7f6"><b>{{ $review-> titolo }}</b></font>

      <div class="container">
        @php
        $i = 0;
        $stelle=$review->numStelle
        @endphp
        @for($i = 0; $i <= $stelle-1; $i++) <font color="#cfb7f6"><span class="glyphicon glyphicon-star"></font>
            @endfor
            @for($i = 0; $i <= 5-$stelle-1; $i++) <font color="#cfb7f6"><span class="glyphicon glyphicon-star-empty"></font>
                @endfor
      </div>
      <br>
      {{ $review -> testo }}
      <div class="form-group">
        <button style="margin-top:10px" type="button" title="Elimina recensione" class="btn btn-primary" data-toggle="modal" data-target="#deleteReviewModal{{$review->id}}" value="removeReview" >Cancella recensione</button>
        @include('modal.deleteReview')
      </div>
    </div>
  </div>
  @endforeach

  <div class="pull-right" style="margin-top:30px; margin-bottom:30px">
  <span>
   {{$reviews->links()}}
  </span>
  </div>  

</div>
@endsection