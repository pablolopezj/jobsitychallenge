<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Entry extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', 'title', 'content',
    ];

    /**
     * Get author of the entry
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
