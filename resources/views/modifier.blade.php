<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('assets/style.css') }}">
    <link rel="icon" href="{{ asset('assets/imgs/icon.png') }}">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Modifier parfum</title>
    <style>
        #search-input,#seach-inputt{
            width:20rem;
            padding: .5rem 1rem;
            border-radius:5px;
            border:1px solid black;
        }
    </style>
</head>
<section class="ajouter-parfum" id="niche">
        <h1>Modifier Parfum</h1>



        <form action="{{url('/modifierperfume',$data->id)}}" method="POST" enctype="multipart/form-data">
     @csrf
     @method('PUT')
     <div class="form-group">
         <input type="text" name="title" class="form-control inpt" placeholder="Enter title" value="{{ $data->title }}">
     </div>
     <div class="form-group">
         <input type="number" name="price" class="form-control inpt" placeholder="Enter price" value="{{ $data->price }}">
     </div>
     <div class="form-group">
         <input type="number" name="decantagePrice" class="form-control inpt" placeholder="Enter Decantage Price if it exists" value="{{ $data->decantagePrice }}">
     </div>
     <div class="form-group">
         <input type="number" name="capacite" class="form-control inpt" placeholder="Entrer capacité en ML" value="{{ $data->capacite }}">
     </div>
     
     <div class="form-group">
         <input type="text" name="marque" class="form-control inpt" placeholder="Entrer marque" value="{{ $data->marque }}">
     </div>
     <div class="form-group">
         <input type="text" name="lien" class="form-control inpt" placeholder="Entrer lien des details" value="{{ $data->lien }}">
     </div>
     <div class="form-group">
         <input type="text" name="tete" class="form-control inpt" placeholder="Entrer gout en tete" value="{{ $data->tete }}">
     </div>
     <div class="form-group">
         <input type="text" name="coeur" class="form-control inpt" placeholder="Entrer gout en coeur" value="{{ $data->coeur }}">
     </div>
     <div class="form-group">
         <input type="text" name="fond" class="form-control inpt" placeholder="Entrer gout en fond" value="{{ $data->fond }}">
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
         </select>
     </div>
     
     <div class="form-group">
         <select name="decantage" class="form-control inpt">
             <option value="avec">Avec decantage</option>
             <option value="sans">sans decantage</option>
         </select>
     </div>

    
     <button type="submit" class="btn btn-primary confirm">Add Perfume</button>
 </form>

    </section>

   
</form>
