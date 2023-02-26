<?php

use App\Http\Controllers\ConnoteController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\DestinationDataController;
use App\Http\Controllers\LocationController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\OriginDataController;
use App\Http\Controllers\StateController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TransactionContrroller;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('register',[UserController::class, 'register']);
Route::post('login',[UserController::class, 'login']);

Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('user',[UserController::class,'fetch']);
    Route::resource('customer', CustomerController::class);
    Route::resource('location', LocationController::class);
    Route::resource('organization', OrganizationController::class);
    Route::resource('origin_data', OriginDataController::class);
    Route::resource('destination_data', DestinationDataController::class);
    Route::resource('state', StateController::class);
    Route::resource('connote', ConnoteController::class);
    Route::resource('package', TransactionContrroller::class);
});
