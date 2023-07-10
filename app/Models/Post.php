<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Post extends Model
{
    use HasFactory;
    function user():BelongsTo
    {
        return $this->belongsTo(User::class);
    }
    function postdetail():HasOne
    {
        return $this->hasOne(PostDetails::class);
    }
}
