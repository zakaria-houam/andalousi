<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="icon" href="./assets/imgs/icon.png">
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
            <img src="./assets/imgs/logo.png" alt="">
        </div>
        <div class="icons">
        <a href="/login"><img src="./assets/imgs/Layer 2.png" alt=""></a>
        @if (Auth::check())
            <a href="/likes"><img src="./assets/imgs/Vector.png" alt=""></a>
            
    

            
            <a href="/cart"><img src="./assets/imgs/Cart component.png" alt=""></a>
            <p> {{ Auth::user()->name }}</p>
            @else
            <a href="/login"><img src="./assets/imgs/Vector.png" alt=""></a>
            
    

            
            <a href="/login"><img src="./assets/imgs/Cart component.png" alt=""></a>
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


<section class="home" id="home">
<div class="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./assets/imgs/home-page1.png" alt="Slide 1">
    </div>
    <div class="carousel-item">
      <img src="./assets/imgs/home-page2.png" alt="Slide 2">
    </div>
    <div class="carousel-item">
      <img src="./assets/imgs/home-page3.png" alt="Slide 3">
    </div>
    <div class="carousel-item">
      <img src="./assets/imgs/home-page4.png" alt="Slide 4">
    </div>
  </div>
  
</div>

<div class="benefits">
    <img src="./assets/imgs/fragrances.png" alt="">
    <img src="./assets/imgs/livraison.png" alt="">
    <img src="./assets/imgs/paiment.png" alt="">
</div>
</section>

<section class="cats" id="cats">
    <h1 class="title">Être Différent, Sentir Unique !</h1>

    <div class="types">
        <div class="luxe">
            <a href="/luxe"><img src="./assets/imgs/luxe.png" alt="" onmousedown="return false;"></a>
        </div>
        <div class="clone">
            <a href="/orientale"><img src="./assets/imgs/clone.png" alt="" onmousedown="return false;"></a>
        </div>
    </div>
</section>


<div class="nouveau" id="nouveau">
    <h1>Nouveaux Parfums</h1>
    <div class="parfumes-cards">
    @foreach ($last as $results)

  <a href="{{url('/voirplus',$results->id)}}" class="card-link">
    <div class="card">

      <div class="top" style="background:url(./parfumesImages/{{$results->image}}); background-position: center;
        background-size: cover;">
        <h3>Nouveauté</h3>
      </div>

      <div class="bottom">
        <div class="notes">
          <h3>{{$results->note}}</h3>
          @if (Auth::check())
            <form action="{{ route('likes.add', $results->id) }}" method="POST">
              @csrf
              @endif 
              <button type="submit"><i class='bx bx-heart'></i></button>
            </form>
          
        </div>

        <div class="title-price">
          <div class="title">
            <h3 class="marque">{{$results->marque}}</h3>
            <h3 class="title">{{$results->title}}</h3>
          </div>
          <div class="price">
            <h3 class="price">{{$results->price}} Da</h3>
          </div>
        </div>

        <div class="gouts">
          <div class="tete">
            <h3>Tete</h3>
            <h4>{{$results->tete}}</h4>
          </div>
          <div class="coeur">
            <h3>Coeur</h3>
            <h4>{{$results->coeur}}</h4>
          </div>
          <div class="fond">
            <h3>Fond</h3>
            <h4>{{$results->fond}}</h4>
          </div>
        </div>

        <div class="voirparfum">
          <h2>Voir Plus</h2>
        </div>
      </div>

    </div>
  </a>
@endforeach



      

    </div>
</div>
</div>
<footer>
    <div class="footer-top">
        <form action="">
            <input type="text" placeholder="Votre email pour recevoir les nouveaux produits">
            <button type="submit">Valider</button>
        </form>
    </div>
    <div class="footer-bottom">
        <div class="left">
            <img src="./assets/imgs/logo.png" alt="">
            <h2>El Andaloussi Perfumes</h2>
            <h5><img src="./assets/imgs/location.png" alt="">   25 Rue Mohamed Boukhezar Bab El Oeud Alger</h5>
        </div>
        <div class="center">
            <ul>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">Acceuil</a></li>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">Parfums Niche et de luxe</a></li>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">Parfums orientales et clones</a></li>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">Nouveautés</a></li>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">Meilleures ventes</a></li>

            </ul>
        </div>
        <div class="right">
        <ul>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">livraison</a></li>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">Contactez-nous</a></li>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">Notre Compte</a></li>
                <li><a href="#"><img src="./assets/imgs/fleche.png" alt="">FAQ</a></li>
            </ul>
        </div>
    </div>
</footer>



    <script src="./assets/js.js"></script>
</body>
</html>