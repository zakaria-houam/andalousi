<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('assets/style.css') }}">
    <link rel="icon" href="{{ asset('assets/imgs/icon.png') }}">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>El-Andalousi</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
<div class="pre-navbar">
    <div class="menu">
        <i class='bx bx-menu-alt-left'></i>
    </div>
    <div class="search-bar">
        <input type="text" placeholder="Recherche une marque, Produit , Note ...">
    </div>
    <div class="logo">
        <img src="./assets/imgs/logo.png" alt="">
    </div>
    <div class="icons">
        <a href="/login"><img src="{{asset('assets/imgs/Layer 2.png')}}" alt=""></a>
        @if (Auth::check())
            <a href=""><img src="{{asset('assets/imgs/Vector.png')}}" alt=""></a>


            <a href=""><img src="{{asset('/assets/imgs/Cart component.png')}}" alt=""></a>

            <p> {{ Auth::user()->name }}</p>
        @endif
    </div>
</div>


<div class="navbar">
    <ul>
        <li><a href="/">Acceuil</a></li>
        <li><a href="/#cats">Catégories</a></li>
        <li><a href="">Nouveautés</a></li>
        <li><a href="">Meilleures ventes</a></li>
        <li><a href="">Contactez-nous</a></li>

    </ul>
</div>

<div id="app">


    <div class="container">


        <div class="links">
            <!--
                <a class="navbar-brand" href="{{ url('/') }}">
                    Retour à la page d'acceiull
                </a><br>-->


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav me-auto">

                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ms-auto">
                    <div class="auth-links">


                        <!-- Authentication Links -->
                        @guest

                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <p>vous avez dejà un compte ? <a class="nav-link"
                                                                     href="{{ route('login') }}">{{ __('Se connecter') }}</a>
                                    </p>

                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <p>Ou bien <a class="nav-link"
                                                  href="{{ route('register') }}">{{ __('Créer un nouveau compte') }}</a>
                                    </p>

                                </li>
                    </div>
                    @endif

                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>

        <main class="py-4">
            @yield('content')
        </main>
    </div>


    <div class="right">
        <p>Les parfums proposés chez El Andaloussi sont soigneusement sélectionnés pour leur qualité exceptionnelle et
            leur originalité. Que vous cherchiez un parfum léger et floral pour le printemps, une fragrance épicée et
            chaleureuse pour l'hiver, ou quelque chose d'unique et de sophistiqué pour une occasion spéciale, vous
            trouverez forcément votre bonheur chez El Andaloussi.</p>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>













@include('footer')
