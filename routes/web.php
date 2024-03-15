<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\AdminLoginController;
use Illuminate\Http\Request;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[MainController::class,'index']);
Route::get('/luxe',[MainController::class,'luxe']);
Route::get('/orientale',[MainController::class,'orientale']);
Route::get('/voirplus/{id}',[MainController::class,'voirplus']);
Route::get('/suprrimer/{id}',[MainController::class,'suprrimer']);
Route::get('/modifier/{id}',[MainController::class,'modifier']);
Route::put('/modifierperfume/{id}',[MainController::class,'modifierperfume']);
Auth::routes();
Route::post('/cart/{id}', [MainController::class, 'addToCart'])->name('cart.add');
Route::get('/cart', [MainController::class, 'cart']);
Route::post('/likes/{id}', [MainController::class, 'addToLikes'])->name('likes.add');
Route::get('/likes', [MainController::class, 'likes']);

Route::put('/cart/{id}', [MainController::class, 'update'])->name('cart.update');
Route::delete('/cart/{id}', [MainController::class, 'removeFromCart'])->name('cart.remove');
Route::delete('/likes/{id}', [MainController::class, 'removeFromLikes'])->name('likes.remove');
Route::get('/admin-login', [AdminLoginController::class, 'showLoginForm'])->name('admin.login');
Route::get('/submitdashboard123456789875421365478965412364', [AdminLoginController::class, 'login']);

Route::post('/logout', [AdminLoginController::class, 'logout'])->name('admin.logout');
Route::post('/uploadperfume', [MainController::class, 'uploadperfume']);
Route::post('/uploadperfumeorientale', [MainController::class, 'uploadperfumeorientale']);
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('welcome');

Route::get('/filter', [MainController::class, 'filter']);
Route::get('/search', [MainController::class, 'search']);

Route::get('/contact', [MainController::class, 'contact']);

Route::post('/contact-form', [MainController::class, 'sendMail']);


Route::post('commande', [App\Http\Controllers\CommandeController::class, 'sendmail'])->name('commande');
Route::post('checkout', [App\Http\Controllers\CommandeController::class, 'checkout'])->name('checkout');

Route::post("/sendmail",function(Request $req){
    $name = $req->name ;
    $email = $req->Email ;
    $phone = $req->phone;
    $modeliv = $req->mode ;
    $wilaya = $req->wilaya ;
    $adresse = $req->adresse ;
    $marque = $req->marque;
    $title = $req->title ;
    $capadec = $req->capa ;
    $capacite = $req->capacite ;
    $details = [
        'titre' => 'Achat Parfum'.' '.$marque,
        'body' => 'commande parfum via website',
        'name'=>'nom client : ' .' '.$name,
        'email'=>'email client : ' .' '.$email,
        'phone'=>'telephone client : ' .' '.$phone,
        'modeliv'=>'mode livraison : ' .' '.$modeliv,
        'wilaya'=>'Wilaya : ' .' '.$wilaya,
        'adresse'=>'adresse client : ' .' '.$adresse,
        'marque'=>'marque parfum : ' .' '.$marque,
        'title'=>'title parfum : ' .' '.$title,
        'capadec'=>'capa decantage : ' .' '.$capadec.' '.'ML',
        'capacite'=>'capacite :'.' '.$capacite.' '.'ML'
    ];

    \Mail::to('z_houam@inptic.edu.dz')->send(new \App\Mail\OrderConfirmationMail($details));
    return redirect()->back()->with('success', 'les informations ont été enregistrer avec succès');
    //return redirect()->back();
});


