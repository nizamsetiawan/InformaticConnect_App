<?php

use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\CourseController;
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

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

// Artikel
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/artikel', [ArtikelController::class, 'index'])->name('artikel');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/create_artikel', function () {
        return view('artikel/create_artikel');
    })->name('create_artikel');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::post('/store_artikel', [ArtikelController::class, 'store'])->name('store_artikel');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/delete_artikel/{id}', [ArtikelController::class, 'destroy'])->name('delete_artikel');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('artikel/edit_artikel/{id}', [ArtikelController::class, 'edit'])->name('edit_artikel');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::post('/update_artikel/{id}', [ArtikelController::class, 'update'])->name('update_artikel');
});
// End Artikel

// Course
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/course', [CourseController::class, 'index'])->name('course');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/create_course', function () {
        return view('course/create_course');
    })->name('create_course');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::post('/store_course', [CourseController::class, 'store'])->name('store_course');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/delete_course/{id}', [CourseController::class, 'destroy'])->name('delete_course');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('course/edit_course/{id}', [CourseController::class, 'edit'])->name('edit_course');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::post('/update_course/{id}', [CourseController::class, 'update'])->name('update_course');
});
// End Course