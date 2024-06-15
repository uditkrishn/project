<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;

use App\Http\Controllers\ImportController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/register', [RegistrationController::class, 'index']);
// Route::post('/register', [RegistrationController::class, 'register']);

Route::get('/', function (){
    return view('home');
});

Route::controller(AuthController::class)->group(function (){
    Route::get('register', 'register')->name('register');
    Route::post('register', 'registersave')->name('register.save');

    Route::get('login', 'login')->name('login');
    Route::post('login', 'loginaction')->name('login.action');

    Route::get('logout', 'logout')->middleware('auth')->name('logout');
});

// Normal Users Routes List
Route::middleware(['auth', 'user-access:user'])->group(function() {
    Route::get('/home', [HomeController::class, 'index'])->name('home');
});

// Admin Routes List
Route::middleware(['auth', 'user-access:admin'])->group(function() {
    Route::get('admin/home', [HomeController::class, 'adminhome'])->name('admin/home');

    Route::get('/admin/profile', [AdminController::class, 'profilepage'])->name('admin/profile');
});



Route::get('/import', function () {
    return view('import');
})->name('import.form');

Route::post('/import', [ImportController::class, 'import'])->name('import');



