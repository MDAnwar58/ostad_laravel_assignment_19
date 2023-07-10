<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'welcome'])->name('home');
Route::get('/post-detail/{id}', [HomeController::class, 'postDetail'])->name('post.detail');
Route::post('/comment-store' , [HomeController::class, 'commentStore'])->name('comment.store');

// routes for axios api calling
Route::get('/posts' , [HomeController::class, 'posts']);
Route::get('/post-detail-get/{id}', [HomeController::class, 'postDetailGet']);
Route::get('/comment-get/{post_id}/{post_detail_id}' , [HomeController::class, 'commentGet']);
