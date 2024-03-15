@include('header')
<div class="panier">
    <h1>Panier</h1>
<style>

    .popup-content {
        position: absolute;
        top: 34%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
    }

</style>



    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @if ($user->products->isEmpty())
        <p>Your cart is empty.</p>
    @else
        <div class="panier-center">
            <div class="panier-cards">
                @foreach ($user->products as $product)
                    <div class="panier-card">
                        <img src="{{asset('./parfumesImages/' . $product->image)}}" alt="" width="70px">
                        <div>
                            <h2>{{ $product->title }} , {{$product->marque}}</h2>
                            <form action="{{ route('cart.update', $product->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <h2>{{ $product->pivot->quantity }}</h2>
                                <button type="submit" name="quantity" value="1">+</button>
                            </form>
                            <h2>{{ $product->pivot->quantity * $product->price }} DA</h2>
                        </div>
                        <form action="{{ route('cart.remove', $product->id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="confirm">X</button>
                        </form>
                    </div>
                @endforeach





            </div>

            <div class="facture">

                <div class="top-facture">
                    <div>
                        <h4>{{ $user->products->sum(function ($product) { return $product->pivot->quantity; }) }} Parfums</h4>
                        <h4>{{ $user->products->sum(function ($product) { return $product->pivot->quantity * $product->price; }) }} DA</h4>
                    </div>
                    <div>
                        <h4>Livraison </h4>
                        <h4>À déterminer </h4>
                    </div>
                    <div class="total">
                        <h2>TOTAL TTC </h2>
                        <h2>{{ $user->products->sum(function ($product) { return $product->pivot->quantity * $product->price; }) }} DA</h2>
                    </div>
                    <form action="{{ route('checkout') }}" method="POST"> <!-- Updated form action -->
                        @csrf

                        <button type="button" class="confrim" id="openPopupBtn">COMMANDER</button>
                    </form>

                </div>
                <div class="bottom-facture">
                    <img src="./assets/imgs/fragrances.png" alt="" width="80px" >
                    <img src="./assets/imgs/livraison.png" alt="" width="80px" style="margin-left:6rem;">
                    <img src="./assets/imgs/paiment.png" alt="" width="80px" style="margin-left:5rem;">
                </div>
            </div>
        </div>

    @endif
</div>



<div id="popup" class="popup">
    <div class="popup-content">
        <span class="close">&times;</span>
        <h2>Entrez vos informations pour confirmer la commande:</h2>
        @if($user->products->sum(function ($product) { return $product->pivot->quantity * $product->price; }) > 2000)
    <h2 class="free" style="color:red;">Vous Avez Livraison Gratuite</h2>
@endif

        <form action="{{ route('checkout') }}" method="POST">
            @csrf


            <div class="user-infos">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" @if (Auth::check()) value="  {{ Auth::user()->name }} @endif"
                       placeholder="Entre votre nom">
                <label for="email">Email:</label>
                <input type="email" id="email" name="Email"
                       @if (Auth::check())  value="  {{ Auth::user()->email }} @endif" placeholder="Entre votre email">
                <label for="phone">N° télephone:</label>
                <input type="phone" id="phone" name="phone"
                       @if (Auth::check())  value=" {{ Auth::user()->phone }} @endif"
                       placeholder="Entre votre N° télephone">

            </div>

            <div class="commande-info">
                <label for="phone">Mode de livraison:</label>
                <select name="mode" id="" required>
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
                <button type="submit">confirmer la commande</button>
            </div>


        </form>

    </div>
</div>






<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<script>
    $(document).ready(function () {
        $('select[name="wilaya"]').on('change', function () {
            var wilaya = $(this).val();
            if (wilaya) {
                $.ajax({
                    url: "{{ URL::to('classes') }}/" + wilaya,
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        $('select[name="Class_id"]').empty();
                        $.each(data, function (key, value) {
                            $('select[name="Class_id"]').append('<option value="' + key + '">' + value + '</option>');
                        });
                    },
                });
            } else {
                console.log('AJAX load did not work');
            }
        });
    });
</script>

@include('footer')
