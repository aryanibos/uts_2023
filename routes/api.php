<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\NewsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->group(function () {
    // Menampilkan News
    Route::get('/news', [NewsController::class, 'index']);

    // Menambahkan News
    Route::post('/news', [NewsController::class, 'store']);

    // Menampilkan News berdasarkan id
    Route::get('/news/{id}', [NewsController::class, 'show']);

    // Mengubah News berdasarkan id
    Route::put('/news/{id}', [NewsController::class, 'update']);

    // Menghapus News berdasarkan id
    Route::delete('/news/{id}', [NewsController::class, 'destroy']);

    // Mencari News berdasarkan title
    Route::get('/news/search/{title}', [NewsController::class, 'search']);

    // Menampilkan News berdasarkan sport
    Route::get('/news/category/sport', [NewsController::class, 'sport']);

    // Menampilkan News berdasarkan finance
    Route::get('/news/category/finance', [NewsController::class, 'finance']);

    // Menampilkan News berdasarkan automotive
    Route::get('/news/category/automotive', [NewsController::class, 'automotive']);
});

// Melakukan register
Route::post('/register', [AuthController::class, 'register']);

// Melakukan login
Route::post('/login', [AuthController::class, 'login']);
