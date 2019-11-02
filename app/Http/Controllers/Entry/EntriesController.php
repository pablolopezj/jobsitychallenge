<?php

/**
 * @author Pablo Isaac López Jaimes
 * @since 2019-10-31
 */
namespace App\Http\Controllers\Entry;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Entry;
use Auth;
use App\Api\Twitter\ApiTwitter;

class EntriesController extends Controller
{
    /**
     * Show form to create a new request
     */
    public function create() 
    {
        return view('entry.formentry');
    }

    /**
     * Show a single entry
     * @param int $entry
     */
    public function show($entry)
    {
        $apitw = new ApiTwitter();
        $tweets = $apitw->getTweets();

        $entry = Entry::findOrFail($entry);
        return view('entry.singleentry', compact('entry', 'tweets'));
    }

    /**
     * Save & validate the request
     *  
     * @return \Illuminate\Http\Response
     */
    public function store() 
    {
        request()->validate([
            'title'       => 'required',
            'content'     => 'required',
        ]);
        
        Entry::create([
            'user_id' => Auth::user()->id,
            'title'   => request('title'),
            'content' => request('content'),
        ]);

        return redirect()->route('main');
    }

    /**
     * Show form to update an entry 
     */
    public function update(Entry $entry) 
    {
        return view('entry.update', compact('entry'));
    }

    /**
     * Save an updated entry
     */
    public function saveupdate() 
    {
     
        $entry = Entry::findOrFail(request('entryId'));

        $entry->update(request()->validate([
            'title'       => 'required',
            'content'     => 'required',
        ]));

        return redirect()->route('main');

    }
}
