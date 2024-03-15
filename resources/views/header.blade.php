<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('assets/style.css') }}">
    <link rel="icon" href="{{ asset('assets/imgs/icon.png') }}">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>El-Andalousi</title>
</head>
<body>
    <div class="pre-navbar">
        <div class="menu">
        <i class='bx bx-menu-alt-left'></i>
        </div>
        <div class="search-bar">
        <form action="/search" method="get">
                @csrf 
                <input type="text" name="query" placeholder="Rechercher une marque, Produit , Note ...">

            </form>
        </div>
        <div class="logo">
            <img src="{{asset('assets/imgs/logo.png')}}" alt="">
        </div>
        <div class="icons">
        <a href="/login"><img src="{{asset('assets/imgs/Layer 2.png')}}" alt=""></a>
        @if (Auth::check())
            <a href="/likes"><img src="{{asset('assets/imgs/Vector.png')}}" alt=""></a>
          
            
            <a href="/cart"><img src="{{asset('/assets/imgs/Cart component.png')}}" alt=""></a>
           
    <p> {{ Auth::user()->name }}</p>
    @else
    <a href="/login"><img src="{{asset('assets/imgs/Vector.png')}}" alt=""></a>
          
            
            <a href="/login"><img src="{{asset('/assets/imgs/Cart component.png')}}" alt=""></a>
@endif
        </div>
    </div>


    <div class="navbar">
        <ul>
        <li class="search-phone">
            <form action="/search" method="get">
                @csrf 
                <input type="text" name="query" placeholder="Rechercher une marque, Produit , Note ...">

            </form>
            </li>
            <li><a href="/">Acceuil</a></li>
            <li><a href="/#cats">Catégories</a></li>
            <li><a href="/#nouveau">Nouveautés</a></li>
            <li><a href="">Offres</a></li>
            <li><a href="/contact">Contactez-nous</a></li>
            <li><a href="">@if (Auth::check())
    <form action="/logout" method="POST">
        @csrf
        <button type="submit">Logout</button>
    </form>
@endif</a></li>
        </ul>
    </div>