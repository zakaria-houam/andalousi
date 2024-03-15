<?php

namespace App\Http\Controllers;
use App\Models\Perfume;
use App\Models\orientale;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminLoginController extends Controller
{
    public function showLoginForm()
{
    return view('admin.login');
}
public function login(Request $request)
{
    $adminEmail = "admin@exemple.com";
    $adminPassword = "secret";

    $email = $request->input('email');
    $password = $request->input('password');

    if ($email == $adminEmail && $password == $adminPassword) {
        $data = DB::table('perfumes')
        ->orderBy('created_at', 'desc')
        ->where('categorie','!=', 'orientale')
        ->get();

        $orientale = DB::table('perfumes')
        ->orderBy('created_at', 'desc')
        ->where('categorie','=', 'orientale')
        ->get();
        return view('dashboard',compact('data','orientale'));
    }

    return redirect()->back()->with('error', 'Invalid login credentials');
}

public function logout()
{
    Auth::logout();
    return redirect('/');
}

}
