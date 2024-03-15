<?php

namespace App\Http\Controllers;
use App\Models\Perfume;
use App\Models\orientale;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class MainController extends Controller
{
    public function index(){
        $last = perfume::latest()->take(4)->get();

        return view('home',compact('last'));
    }

    public function uploadperfume(Request $request){
        $parfume = new Perfume();

        $parfume->title = $request->title;
        $parfume->decantagePrice = $request->decantagePrice;
        $parfume->price = $request->input('price');
        $parfume->description = $request->input('description');
        $parfume->type = $request->input('type');
        $parfume->categorie = $request->input('categorie');
        $parfume->sexe = $request->input('sexe');
        $parfume->decantage = $request->input('decantage');
        $notes = $request->input('note'); // get the array of notes
        $noteString = implode(',', $notes); // convert the array to a comma-separated string
        $parfume->note = $noteString;
        $parfume->lien = $request->input('lien');
        $parfume->marque= $request->input('marque');
        $parfume->tete= $request->input('tete');
        $parfume->coeur= $request->input('coeur');
        $parfume->fond= $request->input('fond');
        $parfume->capacite= $request->input('capacite');
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $filename = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/parfumesImages');
            $image->move($destinationPath, $filename);
            $parfume->image = $filename;
        }

        $parfume->save();

        return redirect()->back();
    }

    public function modifierperfume(Request $request,$id){
        $parfume = perfume::find($id);
        $parfume->title = $request->title;
        $parfume->decantagePrice = $request->decantagePrice;
        $parfume->price = $request->input('price');
        $parfume->description = $request->input('description');
        $parfume->type = $request->input('type');
        $parfume->categorie = $request->input('categorie');
        $parfume->sexe = $request->input('sexe');
        $parfume->decantage = $request->input('decantage');
        $notes = $request->input('note'); // get the array of notes
        $noteString = implode(',', $notes); // convert the array to a comma-separated string
        $parfume->note = $noteString;
        $parfume->lien = $request->input('lien');
        $parfume->marque= $request->input('marque');
        $parfume->tete= $request->input('tete');
        $parfume->coeur= $request->input('coeur');
        $parfume->fond= $request->input('fond');
        $parfume->capacite= $request->input('capacite');

        $parfume->save();
        return redirect()->back();
    }

   

    public function luxe(){
            $results = DB::table('perfumes')
                ->orderBy('created_at', 'desc')
                ->where('categorie','!=', 'orientale')
                ->get();
            return view('luxe',compact('results'));
    }

    public function orientale(){
            $results = DB::table('perfumes')
                ->orderBy('created_at', 'desc')
                ->where('categorie','=', 'orientale')
                ->get();
            return view('orientale',compact('results'));
    }

    public function voirplus($id){
            $data = perfume::find($id);
            $user = user::all();
            $notes = explode(",", $data->sexe);
            $last = Perfume::where('id', '<>', $id)
                ->where('categorie','!=','orientale')
                ->orderBy('created_at', 'desc')
                ->take(4)
                ->get();
                
                        
                if ($data) {
                    return view('details', compact('data','last','user'));
                } else {
                    abort(404); // or redirect to a custom error page
                }

    }

    public function suprrimer($id){
            $data = perfume::find($id);
            $data->delete();
            return redirect()->back();
    }
    public function modifier($id){
        $data = perfume::find($id);
        return view('modifier',compact('data'));
}

    public function addToCart($id){
            $product = perfume::findOrFail($id);
            $user = Auth::user();
            
                // Check if the product is already in the cart
            $existingProduct = $user->products()->where('perfume_id', $product->id)->first();
            
            if ($existingProduct) {
                    // Increase the quantity of the existing product in the cart
                    $existingProduct->pivot->increment('quantity');
            } 
            else {
                    // Add the new product to the cart
                $user->products()->attach($product->id, ['quantity' => 1]);
            }
            
            return redirect()->back();
    }
            

            public function addToLikes($id){
                $product = perfume::findOrFail($id);
                $user = Auth::user();

                $user->likes()->attach($product->id);

                return redirect()->back();
            }

            public function likes(){
                $user = Auth::user();
                return view('likes', compact('user'));
            }

            public function cart(){
                $user = Auth::user();
                return view('cart', compact('user'));
            }

            public function removeFromCart($id){
                $product = perfume::findOrFail($id);
                $user = Auth::user();
                $user->products()->detach($product->id);
                return redirect()->back()->with('success', 'Product removed from cart successfully!');
            }

            public function removeFromLikes($id){
                $product = perfume::findOrFail($id);
                $user = Auth::user();
                $user->products()->detach($product->id);
                return redirect()->back();
            }
            
            public function update($id){
                $product = perfume::findOrFail($id);
                $user = Auth::user();
                $existingProduct = $user->products()->where('perfume_id', $product->id)->first();
            
                if ($existingProduct) {
                    // Increase the quantity of the existing product in the cart
                    $existingProduct->pivot->increment('quantity');
                } else {
                    // Add the new product to the cart
                    $user->products()->attach($product->id, ['quantity' => 1]);
                }
            
                return redirect()->back();
            }






            public function filter(Request $request){
    // get the form data from the request
                $type = $request->input('type');
                $sexe = $request->input('sexe');
                $marque = $request->input('marque');
                $note = $request->input('note');
                $cat = $request->input('cat');

    // convert array inputs to strings
                $type = is_array($type) ? implode(',', $type) : $type;
                $sexe = is_array($sexe) ? implode(',', $sexe) : $sexe;
                $marque = is_array($marque) ? implode(',', $marque) : $marque;
                $note = is_array($note) ? implode(',', $note) : $note;
                $cat = is_array($cat) ? implode(',', $cat) : $cat;
    // retrieve the filtered data from the database
                $results = perfume::when($type, function ($query, $type) {
                $types = explode(',', $type);
                return $query->where(function ($query) use ($types) {
                    foreach ($types as $type) {
                $query->orWhere('type', 'like', "%$type%");
            }
        });
    })
    ->when($sexe, function ($query, $sexe) {
        $sexes = explode(',', $sexe);
        return $query->where(function ($query) use ($sexes) {
            foreach ($sexes as $sexe) {
                $query->orWhere('sexe', 'like', "%$sexe%");
            }
        });
    })
    ->when($cat, function ($query, $cat) {
        $categorie = explode(',', $cat);
        if ($cat == "orientale") {
            return $query->where('categorie','=','orientale');
        }
        elseif ($cat == "niche") {
            return $query->where('categorie','!=','orientale');
        }
        else{
            $query->where('categorie', '!=', 'orientale')
            ->orWhere('categorie', '=', 'orientale');
        }
        
    })
    ->when($marque, function ($query, $marque) {
        $marques = explode(',', $marque);
        return $query->where(function ($query) use ($marques) {
            foreach ($marques as $marque) {
                $query->orWhere('marque', 'like', "%$marque%");
            }
        });
    })
            ->when($note, function ($query, $note) {
             $notes = explode(',', $note);
            return $query->where(function ($query) use ($notes) {
            foreach ($notes as $note) {
                $query->orWhere(function ($query) use ($note) {
                    $query->where('note', 'like', "%$note%")
                        ->orWhere('description', 'like', "%$note%");
                });
            }
        });
    })
        ->get();

    // pass the filtered data to the view
    return view('filter', ['results' => $results]);
        }


        public function search(Request $request){
            $searchTerm = $request->input('query');

    // retrieve the search results from the database
            $results = perfume::where(function ($query) use ($searchTerm) {
            $query->where('type', 'like', "%$searchTerm%")
                ->orWhere('sexe', 'like', "%$searchTerm%")
                ->orWhere('marque', 'like', "%$searchTerm%")
                ->orWhere('note', 'like', "%$searchTerm%")
                ->orWhere('title', 'like', "%$searchTerm%");
            })
            ->get();

    // pass the search results to the view
             return view('search', ['results' => $results]);
        }


    public function contact(){
        return view('contact');
    }
    
    
    
    
    
    
    

}


