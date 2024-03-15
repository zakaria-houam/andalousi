@include('header')

<div class="voirplus">

    <div class="details">

        <div class="left"
             style="background:url({{ asset('parfumesImages/' . $data->image) }}); background-position: center; background-size: cover;">
            <h2>{{$data->note}}</h2>
        </div>

        <div class="right">


            <div class="title-price">

                <div class="title">
                    <h3 class="marque">{{$data->marque}}</h3>
                    <h3 class="title">{{$data->title}}</h3>
                </div>

                <div class="price">
                    @if (Auth::check())
                        <form action="{{ route('likes.add', $data->id) }}" method="POST">
                            @csrf
                            @endif

                            <button type="submit"><i class='bx bx-heart'></i></button>
                        </form>
                        <h3 class="decantage-price">{{$data->decantagePrice}} DA pour 10 ML</h3>
                        <h3 class="total-price">{{$data->price}} DA</h3>

                </div>

            </div>


            <div class="gouts">
                <div class="tete">
                    <h3>Tete</h3>
                    <h4>{{$data->tete}}</h4>
                </div>
                <div class="coeur">
                    <h3>Coeur</h3>
                    <h4>{{$data->coeur}}</h4>
                </div>
                <div class="fond">
                    <h3>Fond</h3>
                    <h4>{{$data->fond}}</h4>
                </div>
            </div>

            <div class="acheter">
                @if ($data->decantage == "avec")
                    <select name="" id="typeacheter">
                        <option value="flacon">ACHETER FLACON ENTIER</option>

                        <option value="decantage">ACHETER AVEC DECANTAGE</option>
                    </select>

                @else
                    <select name="" id="typeacheter">
                        <option value="decantage">ACHETER FLACON ENTIER</option>
                        <option value="flacon" disabled>ACHETER AVEC DECANTAGE</option>

                    </select>
                @endif


                <button id="openPopupBtn">ACHETER</button>
            </div>

            <div class="add-panier">
                <div class="counter">
                    <button class="left-button">-</button>
                    <h4 class="middle">1</h4>
                    <button class="right-button">+</button>
                </div>
                <div class="add-to-cart">
                    @if (Auth::check())
                        <form action="{{ route('cart.add', $data->id) }}" method="POST">
                            @csrf
                            @endif
                            <button type="submit">AJOUTER AU PANIER</button>
                        </form>
                </div>
            </div>

            <p>{{$data->description}}</p>
            <p>pour plus d'informations sur ce parfum <a href="{{$data->lien}}">cliquer ici</a></p>


        </div>


    </div>

</div>

<div id="popup" class="popup">
    <div class="popup-content">
        <span class="close">&times;</span>
        <h2>Entrez vos informations pour confirmer la commande:</h2>
        @if($data->price > 2000)
    <h2 class="free" style="color:red;">Vous Avez Livraison Gratuite</h2>
@endif

            <form action="{{ route('commande') }}" method="POST">
                @csrf




                <input id="id" type="hidden" name="price" class="form-control"
                       value="{{$data->price}}">



            <div class="user-infos">
                <label for="name">Name:</label>
                <input  required type="text" id="name" name="name" @if (Auth::check()) value="  {{ Auth::user()->name }} @endif"
                       placeholder="Entre votre nom">
                <label for="email">Email:</label>
                <input type="email" id="email" name="Email"
                       @if (Auth::check())  value="  {{ Auth::user()->email }} @endif" placeholder="Entre votre email">
                <label for="phone">N° télephone:</label>
                <input required  type="phone" id="phone" name="phone"
                       @if (Auth::check())  value=" {{ Auth::user()->phone }} @endif"
                       placeholder="Entre votre N° télephone">
                <label for="phone">Mode de livraison:</label>
                <select   name="mode" id="" required>
                    <option value="" selected disabled>choisir mode de livraison</option>
                    <option value="stopdesk">Stop Desk</option>
                    <option value="domicile">Domicile</option>
                </select>
                <label for="phone">La Wilaya :</label>
                <select name="wilaya" id="wilaya" required>
                    <option value="" selected disabled>choisir la wilaya</option>
                    <option value="Adrar">Adrar</option>
                    <option value="Laghouat">Laghouat</option>
                    <option value="Tébessa">Tébessa</option>
                </select>
                <label for="adresse">adresse complete:</label>
                <input type="text" id="adresse" name="adresse" placeholder="Entre votre adresse" required>
            </div>

            <div class="commande-info">
                <label for="marque">marque du parfum :</label>
                <input type="text" name="marque" value="{{$data->marque}}">
                <label for="title">Nom du parfum :</label>
                <input type="text" name="title" value="{{$data->title}}">
                <label for="title">Capacité du parfum :</label>
                @if ($data->decantage == "avec")
                    <h4 class="dcntg-price">Cette Parfum est avec décantage</h4>
                    <select name="capa">
                        <option value="" selected disabled>Choisir votre capacité</option>
                        <option value="5">5 ML</option>
                        <option value="10">10 ML</option>
                        <option value="15">15 ML</option>
                        <option value="20">20 ML</option>
                        <option value="25">25 ML</option>
                        <option value="30">30 ML</option>
                    </select>

                @else
                    <input type="text" name="capacite" value="{{$data->capacite}} ML">

                @endif
                <button type="submit">confirmer la commande</button>
            </div>


        </form>

    </div>
</div>

<div class="nouveau">
    <h1>VOUS POURRIEZ AUSSI AIMER</h1>
    <div class="parfumes-cards">


        @foreach ($last as $results)

            <a href="{{url('/voirplus',$results->id)}}" class="card-link">
                <div class="card">

                    <div class="top" style="background:url({{ asset('parfumesImages/' . $results->image) }}); background-position: center;
    background-size: cover;">

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


<script>

</script>

@include('footer')
