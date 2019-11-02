<?php

namespace App\Http\Controllers\Twitter;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HiddenTweet;

class StatusTwController extends Controller
{
    /**
     * Set the current status of a tweet to be shown or hidden
     */
    public function setStatusTweet() {
        
        if(request('status') == 1) {
            $hiddentw = HiddenTweet::where('tw_id', '=', request('twitter_id'))->firstOrFail();
            $hiddentw->status = 1;
            $hiddentw->save();
        }
        
        if (!HiddenTweet::where('tw_id', '=', request('twitter_id'))->exists()) {
            HiddenTweet::create([
                'user_id' => request('user_id'),
                'tw_id'   => request('twitter_id'),
                'status' =>  request('status'),
            ]);
        }

        return  request('twitter_id');
    }
}
