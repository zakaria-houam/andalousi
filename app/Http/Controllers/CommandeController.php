<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Mail\Commandes;
use App\Mail\OrderConfirmation;
use Illuminate\Http\Request;
use Yasser\Yalidine\Classes\Yalidine;

class CommandeController extends Controller
{


    public function checkout(Request $request)
    {
        $customer['name'] = $request->name;
        $customer['email'] = $request->Email;
        $customer['phone'] = $request->phone;
        $customer['modeliv'] = $request->mode;
        $customer['wilaya'] = $request->wilaya;
        $customer['address'] = $request->adresse;


        // Get the products, quantities, and prices from the cart
        $products = $request->user()->products;
        $quantities = $products->pluck('pivot.quantity');
        $prices = $products->pluck('price');


        $tableData = [];
        foreach ($products as $index => $product) {
            $tableData[] = [
                'name' => $product->title,
                'price' => $prices[$index],
                'quantity' => $quantities[$index],
                'total' => $prices[$index] * $quantities[$index],
            ];
        }

        $somme = 0;
        foreach ($tableData as $tableDat) {
            $somme = $somme + $tableDat['total'];
        }

        $string = $customer['name'];
        $name = explode(" ", $string);
        $order_id = Carbon::now()->format('YmdHis');
        $parcels = array( // the array that contains all the parcels
            array( // first parcel
                "order_id" => $order_id,
                "firstname" => $name[0],
                "familyname" => $name[1],
                "contact_phone" => $customer['phone'],
                "address" => $customer['address'],
                "to_commune_name" => $customer['wilaya'],
                "to_wilaya_name" => $customer['wilaya'],
                "product_list" => "Collections Parfum",
                "price" => $somme,
                "freeshipping" => true,
                "is_stopdesk" => false,
                "has_exchange" => 0,
                "product_to_collect" => null
            ),
        );
        $response = Yalidine::createParcels($parcels);
    
        $tracking = $response[key($response)]['tracking'];
        $parcels = Yalidine::getParcels($tracking);
        $label = $parcels['data'][0]['label'];


        $customer['link'] = $label;

        \Mail::to('zakariahouamzakaria@gmail.com')->send(new \App\Mail\Commandes($customer, $tableData));
        return redirect()->back()->with('success', 'Votre demande a été enregistrée avec succès nous vous contacterons dès que possible');
    }


    public function sendmail(Request $req)
    {


        $price = $req->price;
        $name = $req->name;
        $email = $req->Email;
        $phone = $req->phone;
        $modeliv = $req->mode;
        $wilaya = $req->wilaya;
        $adresse = $req->adresse;
        $marque = $req->marque;
        $title = $req->title;
        $capadec = $req->capa;
        $capacite = $req->capacite;
        $details = [
            'titre' => 'Achat Parfum' . ' ' . $marque,
            'body' => 'commande parfum via website',
            'name' => 'nom client : ' . ' ' . $name,
            'email' => 'email client : ' . ' ' . $email,
            'phone' => 'telephone client : ' . ' ' . $phone,
            'modeliv' => 'mode livraison : ' . ' ' . $modeliv,
            'wilaya' => 'Wilaya : ' . ' ' . $wilaya,
            'adresse' => 'adresse client : ' . ' ' . $adresse,
            'marque' => 'marque parfum : ' . ' ' . $marque,
            'title' => 'title parfum : ' . ' ' . $title,
            'capadec' => 'capa decantage : ' . ' ' . $capadec . ' ' . 'ML',
            'capacite' => 'capacite :' . ' ' . $capacite . ' ' . 'ML'
        ];


        $string = $name;
        $names = explode(" ", $string);
        
    
        
        if(count($names)==1){
              $firstname=   $names[0];
       $familyname=   $names[0];  
        }else{
            
       $firstname=   $names[0];
       $familyname=   $names[1];  
        }
        
        
        
        $order_id = Carbon::now()->format('YmdHis');
        $parcels = array( // the array that contains all the parcels
            array( // first parcel
                "order_id" => $order_id,
                "firstname" => $firstname,
                "familyname" => $familyname,
                "contact_phone" => $phone,
                "address" => $adresse,
                "to_commune_name" => $wilaya,
                "to_wilaya_name" => $wilaya,
                "product_list" => 'Parfum' . ' ' . $marque,
                "price" => $price,
                "freeshipping" => true,
                "is_stopdesk" => false,
                "has_exchange" => 0,
                "product_to_collect" => null
            ),
        );
        $response = Yalidine::createParcels($parcels);
        $tracking = $response[key($response)]['tracking'];
        $parcels = Yalidine::getParcels($tracking);
        $label = $parcels['data'][0]['label'];



        \Mail::to('zakariahouamzakaria@gmail.com')->send(new \App\Mail\OrderConfirmationMail($details,$label));

        //return redirect()->back();
        return redirect()->back()->with('success', 'Votre demande a été enregistrée avec succès nous vous contacterons dès que possible');
    }
}
