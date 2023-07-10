<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\Relations\HasOneOrMany;
use Illuminate\Database\Eloquent\Relations\HasOneThrough;

class PostDetails extends Model
{
    use HasFactory;
    
    function post():BelongsTo
    {
        return $this->belongsTo(Post::class);
    }
    // function user()
    // {
    //     return $this->belongsToMany(User::class, 'posts');
    // }
}
