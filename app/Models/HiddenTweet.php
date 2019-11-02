<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class HiddenTweet extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'tw_id', 'status',
    ];

    /**
     * Get user 
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
