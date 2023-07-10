<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Post;
use App\Models\PostDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    function welcome()
    {
        return view('pages.welcome.index');
    }
    function postDetail($id)
    {
        $post = Post::find($id);
        return view('pages.welcome.details', compact('post'));
    }
    function commentStore(Request $request)
    {
        $request->validate([
            'post_id' => 'required',
            'post_detail_id' => 'required',
            'name' => 'required',
            'comment' => 'required',
        ]);
        
        $comment = new Comment();
        $comment->post_id = $request->post_id;
        $comment->post_detail_id = $request->post_detail_id;
        $comment->name = $request->name;
        $comment->comment = $request->comment;
        $comment->save();

        return redirect()->back()->with('success', 'Comment added successfully!');
    }
    function posts()
    {
        $posts = Post::with('user')->latest()->get();
        return $posts;
    }
    function postDetailGet($id)
    {
        $post_details = Post::where('id', $id)->with('user', 'postdetail')->first();
        return $post_details;
    }
    function commentGet($post_id, $post_detail_id)
    {
        $comments = Comment::where('post_id', $post_id)->orWhere('post_detail_id', $post_detail_id)->latest()->get();
        return $comments;
    }
}
