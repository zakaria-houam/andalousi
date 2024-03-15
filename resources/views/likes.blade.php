@include('header')

<h1 class="favoris-title">Les parfums favoris</h1>
<div class="parfumes-cards">
        @foreach ($user->products as $results)
        <div class="card">

            <div class="top" style="background:url(./parfumesImages/{{$results->image}}); background-position: center;
    background-size: cover;">
    <h3>Favori</h3>
</div>

            <div class="bottom">

                <div class="notes">
                    <h3>{{$results->note}}</h3>
                    <form action="{{ route('likes.remove', $results->id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="confirm"> <i class='bx bxs-heart'></i></button>
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
                    <a href="{{url('/voirplus',$results->id)}}">Voir Plus</a>
                </div>
            </div>
        </div>
@endforeach


      

    </div>

@include('footer')