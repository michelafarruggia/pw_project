<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>@yield('titolo')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <!-- Fogli di stile -->
    <link rel="stylesheet" href="{{ url('/') }}/css/bootstrap.css">
    <link rel="stylesheet" href="{{ url('/') }}/css/@yield('stile')">
    <!-- jQuery e plugin JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="{{ url('/') }}/js/bootstrap.js"></script>
</head>

<body>
    <nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                @yield('navbar-brand')
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    @yield('left_navbar')
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Categorie <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            @foreach($genre as $genre_item)
                            <li><a href="{{ route('categoria', $genre_item->id) }}">{{ $genre_item->nome_categoria }}</a></li>
                            @endforeach
                        </ul>
                    </li>
                </ul>

                <form class="navbar-form navbar-left" action="/search" method="GET" role="search">
                    <input class="form-control me-2" type="search" placeholder="Cerca..." aria-label="Search" name="term" id="term">
                    <button class="btn btn-outline-success hidden-xs" type="submit"><span class="glyphicon glyphicon-search"></button>
                </form>


                <ul class="nav navbar-nav navbar-right">
                    @if(Auth::check())
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">{{ Auth::user()->name }}<span class="caret"></span></a>
                        <ul class="dropdown-menu center-text">
                            <li><a href="{{ route('watchlist') }}">Watchlist</a></li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf

                                    <x-dropdown-link :href="route('logout')" onclick="event.preventDefault();
                                                this.closest('form').submit();">
                                        {{ __('Log Out') }}
                                    </x-dropdown-link>
                                </form>
                            </li>

                        </ul>
                    </li>
                    @else
                    <li><a href="{{ route('login') }}"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login</a></li>
                    <li><a href="{{ route('register') }}"><span aria-hidden="true"></span> Register</a></li>
                    @endif
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    @yield('breadcrumb')

    @yield('content')

</body>

</html>