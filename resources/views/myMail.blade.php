<!DOCTYPE html>
<html>
<head>
    <title>Achat via Website</title>
</head>
<body>
    <h1>{{ $details['titre'] }}</h1>
    <p>{{ $details['body'] }}</p>
    <p>{{ $details['name'] }}</p>
    <p>{{ $details['email'] }}</p>
    <p>{{ $details['phone'] }}</p>
    <p>{{ $details['modeliv'] }}</p>
    <p>{{ $details['wilaya'] }}</p>
    <p>{{ $details['adresse'] }}</p>
    <p>{{ $details['marque'] }}</p>
    <p>{{ $details['title'] }}</p>
    <p>{{ $details['capadec'] }}</p>
    <p>{{ $details['capacite'] }}</p>

    <br>
    <a href="{{$label}}" download>
        <button style="background-color: #4CAF50; color: white; padding: 8px 15px; border: none; cursor: pointer; border-radius: 4px;">
            Telecharger Le bordereau
        </button>
    </a>
    <br>
    <p> Merci, Cordialement!</p>
</body>
</html>
