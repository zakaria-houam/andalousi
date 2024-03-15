@include('header')

<div class="contact-section">
    <h1>Contactez-nous</h1>
    <form action="{{asset('contact-form.php')}}" method="post">
        @csrf

        <label for="sujet">Sujet :</label>
        <select name="sujet" id="sujet">
            <option value="suivi de commande">Suivi De Commande</option>
            <option value="conseil sur les parfums">Conseil Sur Les Parfums</option>
            <option value="donnés personselles">Mes Donnés personnelles</option>
            <option value="autre">Autre Sujet</option>
        </select>
        <label for="mail">Votre Mail :</label>
        <input type="email" name="email" id="mail" placeholder="Exemple@gmail.com">
        <label for="message">Message :</label>
        <input type="text" class="inpt-msg" placeholder="message" name="message">
        <button type="submit">Envoyer</button>
    </form>
</div>


@include('footer')