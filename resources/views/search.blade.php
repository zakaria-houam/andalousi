@include('header')
<div class="panier">
    <h1>Votre Recherche Resultat</h1>

<div class="parfumes-cards" id="parfumes-cards">
@foreach ($results as $results)

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
@include('footer')