<?php

namespace App\Http\Controllers;
use App\Models\Perfume;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $last = Perfume::latest()->take(4)->get();
    return redirect('/')->with('last', $last);
    }
}
