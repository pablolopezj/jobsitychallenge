<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Entry;

class MainController extends Controller
{
    /**
     * Main page shows the latest entries
     *
     */
    public function index() {
        $entries = Entry::orderby('created_at', 'desc')->paginate(3);
        return view('index', compact('entries'));
    }
}