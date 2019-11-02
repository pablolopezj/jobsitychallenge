<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Entry;


class AuthorController extends Controller
{
    /**
     * Show all the entries of each author
     */
    public function index($user_id) {
        
        $entries = Entry::where('user_id', $user_id)->orderby('created_at', 'desc')->paginate(3);

        return view('author.entries', compact('entries'));
    }
}
