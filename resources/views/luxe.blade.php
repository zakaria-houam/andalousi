@include('header')

<div class="luxes">
    <h1>Parfums Niche et de Luxe</h1>
    <div class="filtres">
        <select name="trier" id="sort-select" onchange="sortCards()">
            <option value="" selected disabled>Trier par</option>
            <option value="nouveau">Nouveau Produit</option>
            <option value="nom">Nom de A à Z</option>
            <option value="prix">Prix Croissant</option>
            <option value="aleatoire">Aléatoire</option>
        </select>
        <button class="open-filter">FILTRER</button>
        <button class="hide">Hide</button>
    </div>

    <div class="parfumes-cards" id="parfumes-cards">
    @foreach ($results as $results)

<a href="{{url('/voirplus',$results->id)}}" class="card-link">
  <div class="card" data-id="{{$results->id}}">

    <div class="top" style="background:url(./parfumesImages/{{$results->image}}); background-position: center;
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

<div class="filtre-container">
  <div class="close-filter">
    <h1>Filtrer</h1>
    <h1 class="close-filters">X</h1>
  </div>
  <div class="filter-selects">
    <form method="GET" action="/filter">
      @csrf 

      <div class="form-top">
      <div class="accordion">
      <div class="accordion-item">
    <div class="accordion-title">CATEGORIE</div>
    <div class="accordion-content">

    <div class="checkbox-container type-checkboxes">
            <label><input type="checkbox" name="cat[]" value="niche">Niche</label>
            <label><input type="checkbox" name="cat[]" value="orientale">Orientale</label>
            
          </div>


    </div>
  </div>
  <div class="accordion-item">
    <div class="accordion-title">TYPE</div>
    <div class="accordion-content">

    <div class="checkbox-container type-checkboxes">
            <label><input type="checkbox" name="type[]" value="decantage">Décantage</label>
            <label><input type="checkbox" name="type[]" value="flacon">Flacon Entier</label>
            <label><input type="checkbox" name="type[]" value="produit cachete">Produit Cacheté</label>
            <label><input type="checkbox" name="type[]" value="testeur original">Testeur Original</label>
          </div>


    </div>
  </div>
  <div class="accordion-item">
    <div class="accordion-title">SEXE</div>
    <div class="accordion-content">
    <div class="checkbox-container sexe-checkboxes">
            <label><input type="radio" name="sexe[]" value="homme">Homme</label>
            <label><input type="radio" name="sexe[]" value="femme">Femme</label>
            <label><input type="radio" name="sexe[]" value="unisexe">Unisexe</label>
          </div>
    </div>
  </div>
  <div class="accordion-item">
    <div class="accordion-title">MARQUE</div>
    <div class="accordion-content">
    <div class="checkbox-container marque-checkboxes">
    <label><input type="checkbox" name="marque[]" value="Unique'e luxury">Unique'e luxury</label><br>
  <label><input type="checkbox" name="marque[]" value="Nishane">Nishane</label><br>
  <label><input type="checkbox" name="marque[]" value="Thameen">Thameen</label><br>
  <label><input type="checkbox" name="marque[]" value="Clive Christian">Clive Christian</label><br>
  <label><input type="checkbox" name="marque[]" value="Roja parfums">Roja parfums</label><br>
  <label><input type="checkbox" name="marque[]" value="Creed">Creed</label><br>
  <label><input type="checkbox" name="marque[]" value="Ormande Jayne">Ormande Jayne</label><br>
  <label><input type="checkbox" name="marque[]" value="Boadicea the victorious">Boadicea the victorious</label><br>
  <label><input type="checkbox" name="marque[]" value="Penhaligons">Penhaligons</label><br>
  <label><input type="checkbox" name="marque[]" value="Miller Harris">Miller Harris</label><br>
  <label><input type="checkbox" name="marque[]" value="Atelier cologne">Atelier cologne</label><br>
  <label><input type="checkbox" name="marque[]" value="Casamorati">Casamorati</label><br>
  <label><input type="checkbox" name="marque[]" value="Orto Parisi">Orto Parisi</label><br>
  <label><input type="checkbox" name="marque[]" value="Nasomatto">Nasomatto</label><br>
  <label><input type="checkbox" name="marque[]" value="Profumum Roma">Profumum Roma</label><br>
  <label><input type="checkbox" name="marque[]" value="Armani">Armani</label><br>
  <label><input type="checkbox" name="marque[]" value="Dolce & Gabbana">Dolce & Gabbana</label><br>
  <label><input type="checkbox" name="marque[]" value="The merchant of Venice">The merchant of Venice</label><br>
  <label><input type="checkbox" name="marque[]" value="Tiziana Terenzi">Tiziana Terenzi</label><br>
  <label><input type="checkbox" name="marque[]" value="Prada">Prada</label><br>
  <label><input type="checkbox" name="marque[]" value="Parfums de Marly">Parfums de Marly</label><br>
  <label><input type="checkbox" name="marque[]" value="Maison Francis Kurkdjian">Maison Francis Kurkdjian</label><br>
  <label><input type="checkbox" name="marque[]" value="Thomas Kosmala">Thomas Kosmala</label><br>
  <label><input type="checkbox" name="marque[]" value="Dior privé">Dior privé</label><br>
  <label><input type="checkbox" name="marque[]" value="by Kilianl">by Kilianl</label><br>
  <label><input type="checkbox" name="marque[]" value="Maison Margiela">Maison Margiela</label><br>
  <label><input type="checkbox" name="marque[]" value="Diptyque">Diptyque</label><br>
  <label><input type="checkbox" name="marque[]" value="Ex Nihilo">Ex Nihilo</label><br>
  <label><input type="checkbox" name="marque[]" value="Yves Saint Laurent">Yves Saint Laurent</label><br>
  <label><input type="checkbox" name="marque[]" value="parfums vintage">parfums vintage</label><br>
  <label><input type="checkbox" name="marque[]" value="Cartier">Cartier</label><br>
  <label><input type="checkbox" name="marque[]" value="Tom Ford">Tom Ford</label><br>
  <label><input type="checkbox" name="marque[]" value="Byredo">Byredo</label><br>
  <label><input type="checkbox" name="marque[]" value="Amouage">Amouage</label><br>
  <label><input type="checkbox" name="marque[]" value="Gucci">Gucci</label><br>
  <label><input type="checkbox" name="marque[]" value="Versace">Versace</label><br>
  <label><input type="checkbox" name="marque[]" value="Guerlain">Guerlain</label><br>
  <label><input type="checkbox" name="marque[]" value="Chanel">Chanel</label><br>
          </div>
    </div>
  </div>

  <div class="accordion-item">
    <div class="accordion-title">NOTE</div>
    <div class="accordion-content">
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
  </div>
</div>
      </div>
      <div class="form-bottom">
        
        <button type="submit" class="filter-button">FILTRER</button>
        <button type="reset" class="filter-button">Annuler Filter</button>
      </div>
    </form>
  </div>
</div>





<script>
   function sortCards() {
    const select = document.getElementById('sort-select');
    const container = document.getElementById('parfumes-cards');
    const cards = container.querySelectorAll('.card');

    let sortedCards = Array.from(cards);

    switch (select.value) {
        case 'nouveau':
          console.log("hello")
            sortedCards.sort((a, b) => {
                return b.getAttribute('data-id') - a.getAttribute('data-id');
            });
            break;
            case 'nom':
  sortedCards.sort((a, b) => {
    return a.querySelector('.marque').textContent.localeCompare(b.querySelector('.marque').textContent);
  });
  break;

        case 'prix':
            sortedCards.sort((a, b) => {
                return parseInt(a.querySelector('.price').textContent) - parseInt(b.querySelector('.price').textContent);
            });
            break;
        case 'aleatoire':
            sortedCards = shuffleArray(sortedCards);
            break;
        default:
            break;
    }

    container.innerHTML = '';

    sortedCards.forEach((card) => {
        container.appendChild(card);
    });
}

function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

const accordionItems = document.querySelectorAll('.accordion-item');

accordionItems.forEach(item => {
  const title = item.querySelector('.accordion-title');
  title.addEventListener('click', () => {
    item.classList.toggle('active');
  });
});



</script>
@include('footer')