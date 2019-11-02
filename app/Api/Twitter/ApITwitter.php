<?php 

namespace App\Api\Twitter;

use GuzzleHttp\Client;
use GuzzleHttp\HandlerStack;
use GuzzleHttp\Subscriber\Oauth\Oauth1;
use App\Models\HiddenTweet;

class ApiTwitter
{
    /**
     * Gets some related tweets from Twitter API
     *
     */
    public function getTweets()
    {
        $stack = HandlerStack::create();
        $middleware = new Oauth1([
            'consumer_key'    => env('TW_CONSUMER_KEY'),
            'consumer_secret' => env('TW_CONSUMER_SECRET'),
            'token'           => env('TW_TOKEN'),
            'token_secret'    => env('TW_TOKEN_SECRET')
        ]);

        $stack->push($middleware);

        $client = new Client([
            'base_uri' => 'https://api.twitter.com/1.1/',
            'handler' => $stack
        ]);

        $res = $client->get('search/tweets.json?q="Laravel"', ['auth' => 'oauth']);
        return $this->organizeTweets(json_decode($res->getBody()->getContents())->statuses);
    }

    /**
     * Organize the information of the tweets to display
     * 
     * @param json $tweets
     */
    private function organizeTweets($tweets) {
        $structure = [];
        $index = 0;
        foreach ($tweets as $tweet) {
            $hidden  = HiddenTweet::where('tw_id', '=', $tweet->id)->first();

            $structure[$index]['id'] = $tweet->id;
            $structure[$index]['text'] = $tweet->text;

            if ( is_null($hidden ) ){
                $structure[$index]['author_hidden'] = '';
                $structure[$index]['status'] = '1';
            } else {
                $structure[$index]['author_hidden'] = $hidden->user_id;
                $structure[$index]['status'] = $hidden->status;
            }

            $index++;
            if($index >= 5) break; 
        }
        return $structure;
    }
}