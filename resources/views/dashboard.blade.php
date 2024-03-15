<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>El-Andalousi dashboard</title>
    <style>
        #search-input,#seach-inputt{
            width:20rem;
            padding: .5rem 1rem;
            border-radius:5px;
            border:1px solid black;
        }
    </style>
</head>
<body>
    <div class="dash-nav">
        <h1>Dashboard panel</h1>
        <a href="#niche">Parfums Niche</a>
        <a href="#orientale">Parfums Orientale</a>
    <form method="POST" action="{{ route('admin.logout') }}">
    @csrf
    <button type="submit">Logout</button>
</form>
    </div>
    
    <section class="ajouter-parfum" id="niche">
        <h1>Ajouter Nouvelle Parfum Niche</h1>



        <form action="/uploadperfume" method="POST" enctype="multipart/form-data">
     @csrf
     <div class="form-group">
         <input type="text" name="title" class="form-control inpt" placeholder="Enter title">
     </div>
     <div class="form-group">
         <input type="number" name="price" class="form-control inpt" placeholder="Enter price">
     </div>
     <div class="form-group">
         <input type="number" name="decantagePrice" class="form-control inpt" placeholder="Enter Decantage Price if it exists">
     </div>
     <div class="form-group">
         <input type="number" name="capacite" class="form-control inpt" placeholder="Entrer capacité en ML">
     </div>
     
     <div class="form-group">
         <select name="marque" class="form-control inpt" id="">
            <option disabled selected>Choisir La Marque</option>
            <option value="Unique'e luxury">Unique'e luxury</option>
  <option value="Nishane">Nishane</option>
  <option value="Thameen">Thameen</option>
  <option value="Clive Christian">Clive Christian</option>
  <option value="Roja parfums">Roja parfums</option>
  <option value="Creed">Creed</option>
  <option value="Ormande Jayne">Ormande Jayne</option>
  <option value="Boadicea the victorious">Boadicea the victorious</option>
  <option value="Penhaligons">Penhaligons</option>
  <option value="Miller Harris">Miller Harris</option>
  <option value="Atelier cologne">Atelier cologne</option>
  <option value="Casamorati">Casamorati</option>
  <option value="Orto Parisi">Orto Parisi</option>
  <option value="Nasomatto">Nasomatto</option>
  <option value="Profumum Roma">Profumum Roma</option>
  <option value="Armani">Armani</option>
  <option value="Dolce & Gabbana">Dolce & Gabbana</option>
  <option value="The merchant of Venice">The merchant of Venice</option>
  <option value="Tiziana Terenzi">Tiziana Terenzi</option>
  <option value="Prada">Prada</option>
  <option value="Parfums de Marly">Parfums de Marly</option>
  <option value="Maison Francis Kurkdjian">Maison Francis Kurkdjian</option>
  <option value="Thomas Kosmala">Thomas Kosmala</option>
  <option value="Dior privé">Dior privé</option>
  <option value="by Kilianl">by Kilianl</option>
  <option value="Maison Margiela">Maison Margiela</option>
  <option value="Diptyque">Diptyque</option>
  <option value="Ex Nihilo">Ex Nihilo</option>
  <option value="Yves Saint Laurent">Yves Saint Laurent</option>
  <option value="parfums vintage">parfums vintage</option>
  <option value="Cartier">Cartier</option>
  <option value="Tom Ford">Tom Ford</option>
  <option value="Byredo">Byredo</option>
  <option value="Amouage">Amouage</option>
  <option value="Gucci">Gucci</option>
  <option value="Versace">Versace</option>
  <option value="Guerlain">Guerlain</option>
  <option value="Chanel">Chanel</option>
         </select>
     </div>
     <div class="form-group">
         <input type="text" name="lien" class="form-control inpt" placeholder="Entrer lien des details">
     </div>
     <div class="form-group">
         <input type="text" name="tete" class="form-control inpt" placeholder="Entrer gout en tete">
     </div>
     <div class="form-group">
         <input type="text" name="coeur" class="form-control inpt" placeholder="Entrer gout en coeur">
     </div>
     <div class="form-group">
         <input type="text" name="fond" class="form-control inpt" placeholder="Entrer gout en fond">
     </div>
     <div class="form-group">
         <textarea name="description" class="form-control" placeholder="Enter description"></textarea>
     </div>

     
     <div class="form-group">
        <h1>Choisir les notes</h1><br>
     <div class="checkbox-container note-checkboxes">
            <label><input type="checkbox" name="note[]" value="boise">Boisé</label>
            <label><input type="checkbox" name="note[]" value="sucre">Sucré</label>
            <label><input type="checkbox" name="note[]" value="gourmand">Gourmand</label>
            <label><input type="checkbox" name="note[]" value="epice">Epicé</label>
            <label><input type="checkbox" name="note[]" value="oud">Oud</label>
            <label><input type="checkbox" name="note[]" value="vanille">Vanille</label>
            <label><input type="checkbox" name="note[]" value="poudre">Poudré</label>
            <label><input type="checkbox" name="note[]" value="patchoulli">Patchoulli</label>
            <label><input type="checkbox" name="note[]" value="tabac">Tabac</label>
            <label><input type="checkbox" name="note[]" value="aromatique">Aromatique</label>
            <label><input type="checkbox" name="note[]" value="frais">Frais</label>
            <label><input type="checkbox" name="note[]" value="marine">Marine</label>
            <label><input type="checkbox" name="note[]" value="agrume">Agrumes</label>
            <label><input type="checkbox" name="note[]" value="rose">Rose</label>
            <label><input type="checkbox" name="note[]" value="floral">Floral</label>
            <label><input type="checkbox" name="note[]" value="oriental">Oriental</label>
            <label><input type="checkbox" name="note[]" value="cuir">Cuir</label>
            <label><input type="checkbox" name="note[]" value="fruité">Fruité</label>
            <label><input type="checkbox" name="note[]" value="notes">notes vertes</label>
          </div>
     </div>
     <div class="form-group">
         <select name="categorie" class="form-control inpt">
         <option value="" selected disabled>choisir le type 1</option>
             <option value="flacon entier">flacon entier</option>
             <option value="décantage">décantage</option>
             <option value="produuit cacheté">produit cacheté</option>
             <option value="testeur original">testeur original</option>
         </select>
     </div>

     <div class="form-group">
         <select name="type" class="form-control inpt">
            <option value="" selected>choisir le type 2</option>
             <option value="flacon entier">flacon entier</option>
             <option value="décantage">décantage</option>
             <option value="produuit cacheté">produit cacheté</option>
             <option value="testeur original">testeur original</option>
         </select>
     </div>


     <div class="form-group">
         <select name="sexe" class="form-control inpt">
            <option value="" selected disabled>choisir le sexe</option>
             <option value="Homme">Homme</option>
             <option value="Femme">Femme</option>
             <option value="Unisexe femme homme">Unisexe</option>
         </select>
     </div>
     
     <div class="form-group">
         <select name="decantage" class="form-control inpt">
             <option value="avec">Avec decantage</option>
             <option value="sans">sans decantage</option>
         </select>
     </div>

     <div class="form-group">
         <label for="image">Image:</label>
         <input type="file" name="image" class="form-control">
     </div>
     <button type="submit" class="btn btn-primary confirm">Add Perfume</button>
 </form>

    </section>

   
</form>


<div class="nouveau">
    <h1>toutes les parfums Niche disponible</h1>
    <input type="search" id="search-input" placeholder="Search...">
    <div class="parfumes-cards">
        @foreach ($data as $results)
        <div class="card">

            <div class="top" style="background:url(./parfumesImages/{{$results->image}}); background-position: center;
    background-size: cover;">
    <h3>Nouveauté</h3>
</div>

            <div class="bottom">

                <div class="notes">
                    <h3>{{$results->note}}</h3>
                    <i class='bx bx-heart'></i>
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
                    <a href="{{url('/modifier',$results->id)}}" style="background:green;">Modifier</a>
                    <a href="{{url('/suprrimer',$results->id)}}" style="background:red;">Suprrimer</a>
                </div>
            </div>
        </div>
@endforeach


      

    </div>
</div>
</div>












<section class="ajouter-parfum" id="orientale">
        <h1>Ajouter Nouvelle Parfum Orientale</h1>



        <form action="/uploadperfume" method="POST" enctype="multipart/form-data">
     @csrf
     <div class="form-group">
         <input type="text" name="title" class="form-control inpt" placeholder="Enter title">
     </div>
     <div class="form-group">
         <input type="number" name="price" class="form-control inpt" placeholder="Enter price">
     </div>
     <div class="form-group">
         <input type="number" name="decantagePrice" class="form-control inpt" placeholder="Enter Decantage Price if it exists">
     </div>
     <div class="form-group">
         <input type="number" name="capacite" class="form-control inpt" placeholder="Entrer capacité en ML">
     </div>
     <div class="form-group">
        <h1>Choisir les notes</h1><br>
     <div class="checkbox-container note-checkboxes">
            <label><input type="checkbox" name="note[]" value="boise">Boisé</label>
            <label><input type="checkbox" name="note[]" value="sucre">Sucré</label>
            <label><input type="checkbox" name="note[]" value="gourmand">Gourmand</label>
            <label><input type="checkbox" name="note[]" value="epice">Epicé</label>
            <label><input type="checkbox" name="note[]" value="oud">Oud</label>
            <label><input type="checkbox" name="note[]" value="vanille">Vanille</label>
            <label><input type="checkbox" name="note[]" value="poudre">Poudré</label>
            <label><input type="checkbox" name="note[]" value="patchoulli">Patchoulli</label>
            <label><input type="checkbox" name="note[]" value="tabac">Tabac</label>
            <label><input type="checkbox" name="note[]" value="aromatique">Aromatique</label>
            <label><input type="checkbox" name="note[]" value="frais">Frais</label>
            <label><input type="checkbox" name="note[]" value="marine">Marine</label>
            <label><input type="checkbox" name="note[]" value="agrume">Agrumes</label>
            <label><input type="checkbox" name="note[]" value="rose">Rose</label>
            <label><input type="checkbox" name="note[]" value="floral">Floral</label>
            <label><input type="checkbox" name="note[]" value="oriental">Oriental</label>
            <label><input type="checkbox" name="note[]" value="cuir">Cuir</label>
            <label><input type="checkbox" name="note[]" value="fruité">Fruité</label>
            <label><input type="checkbox" name="note[]" value="notes">notes vertes</label>
          </div>
     </div>
     <div class="form-group">
         <select name="marque" class="form-control inpt">
            <option disabled selected>Choisir La Marque</option>
            <option value="ASQ">ASQ</option>
            <option value="Ibrahimalqurashi">Ibrahimalqurashi</option>
            <option value="Arabian Oud">Arabian Oud</option>
            <option value="Al-Dakheel Oud">Al-Dakheel Oud</option>
            <option value="Al-Madjed Oud">Al-Madjed Oud</option>
            <option value="Rasasi">Rasasi</option>
            <option value="Afnan">Afnan</option>
            <option value="Armaf">Armaf</option>
            <option value="Lattafa">Lattafa</option>
            <option value="Fragranceworld">Fragranceworld</option>
            <option value="L'orientale Fragrances">L'orientale Fragrances</option>
         </select>
     </div>
     <div class="form-group">
         <input type="text" name="lien" class="form-control inpt" placeholder="Entrer lien des details">
     </div>
     <div class="form-group">
         <input type="text" name="tete" class="form-control inpt" placeholder="Entrer gout en tete">
     </div>
     <div class="form-group">
         <input type="text" name="coeur" class="form-control inpt" placeholder="Entrer gout en coeur">
     </div>
     <div class="form-group">
         <input type="text" name="fond" class="form-control inpt" placeholder="Entrer gout en fond">
     </div>
     <div class="form-group">
         <textarea name="description" class="form-control" placeholder="Enter description"></textarea>
     </div>

     

     <div class="form-group">
         <select name="categorie" class="form-control inpt">
             <option value="orientale">orientale</option>
             
         </select>
     </div>

     <div class="form-group">
         <select name="type" class="form-control inpt">
            <option value="" selected>choisir le type 2</option>
             <option value="flacon entier">flacon entier</option>
             <option value="décantage">décantage</option>
             <option value="produuit cacheté">produit cacheté</option>
             <option value="testeur original">testeur original</option>
         </select>
     </div>


     <div class="form-group">
         <select name="sexe" class="form-control inpt">
            <option value="" selected disabled>choisir le sexe</option>
             <option value="Homme">Homme</option>
             <option value="Femme">Femme</option>
             <option value="Unisexe femme homme">Unisexe</option>
         </select>
     </div>
     
     <div class="form-group">
         <select name="decantage" class="form-control inpt">
             <option value="avec">Avec decantage</option>
             <option value="sans">sans decantage</option>
         </select>
     </div>

     <div class="form-group">
         <label for="image">Image:</label>
         <input type="file" name="image" class="form-control">
     </div>
     <button type="submit" class="btn btn-primary confirm">Add Perfume</button>
 </form>

    </section>

   
</form>


<div class="nouveau">
    <h1>toutes les parfums Orientale disponible</h1>
    <input type="search" id="search-inputt" placeholder="Search..." style="width:10rem: height:2rem; border-radius:5px;">
    <div class="parfumes-cards">
        @foreach ($orientale as $results)
        <div class="card" id="card">

            <div class="top" style="background:url(./parfumesImages/{{$results->image}}); background-position: center;
    background-size: cover;">
    <h3>Nouveauté</h3>
</div>

            <div class="bottom">

                <div class="notes">
                    <h3>{{$results->note}}</h3>
                    <i class='bx bx-heart'></i>
                </div>

                <div class="title-price">

                    <div class="title">
                        <h3 class="marque">{{$results->marque}}</h3>
                        <h3 class="title card-title">{{$results->title}}</h3>
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
                    <a href="{{url('/modifier',$results->id)}}" style="background:green;">Modifier</a>
                    <a href="{{url('/suprrimer',$results->id)}}" style="background:red;">Suprrimer</a>
                </div>
                
            </div>
        </div>
@endforeach


      

    </div>
</div>
</div>



<script>
  const searchInput = document.getElementById('search-input');
  
  searchInput.addEventListener('input', () => {
    const searchQuery = searchInput.value.trim().toLowerCase();
  filterCards(searchQuery);
  });

  function filterCards(searchQuery) {
  const cards = document.querySelectorAll('.card');
  
  cards.forEach(card => {
    const title = card.querySelector('.title').textContent.toLowerCase();
    
    if (title.includes(searchQuery)) {
      card.style.display = 'block';
    } else {
      card.style.display = 'none';
    }
  });
}



const searchInputt = document.getElementById('search-inputt');
  
  searchInputt.addEventListener('input', () => {
    const searchQuery = searchInputt.value.trim().toLowerCase();
  filterCardss(searchQuery);
  });

  function filterCardss(searchQuery) {
  const cards = document.querySelectorAll('#card');
  
  cards.forEach(card => {
    const title = card.querySelector('.title').textContent.toLowerCase();
    
    if (title.includes(searchQuery)) {
      card.style.display = 'block';
    } else {
      card.style.display = 'none';
    }
  });
}


</script>
</body>
</html>