<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <title>Confirmation de commande</title>
    <style>
        /* CSS Styles for the table */
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h1>Détail De La Commande</h1>

<p><strong>Nom client:</strong> {{ $customer['name'] }}</p>
<p><strong>Address:</strong> {{ $customer['address'] }}</p>
<p><strong>Telephone client:</strong> {{ $customer['phone'] }}</p>
<p><strong>Mode livraison:</strong> {{ $customer['modeliv'] }}</p>
<p><strong>Wilaya:</strong> {{ $customer['wilaya'] }}</p>
<p><strong>Adresse client:</strong> {{ $customer['address'] }}</p>



<table>
    <thead>
    <tr>
        <th>Produit</th>
        <th>Prix</th>
        <th>Quantity</th>
        <th>Total</th>
    </tr>
    </thead>
    <tbody>
    @foreach($products as $product)
        <tr>
            <td>{{ $product['name'] }}</td>
            <td>{{ $product['price'] }}</td>
            <td>{{ $product['quantity'] }}</td>
            <td>{{ $product['total'] }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
<br><br>
<a href="{{ $customer['link'] }}" download>
    <button style="background-color: #4CAF50; color: white; padding: 8px 15px; border: none; cursor: pointer; border-radius: 4px;">
        Telecharger Le bordereau
    </button>
</a>
<br><br>
<p>Merci,<br>El andalousi</p>

</body>
</html>
