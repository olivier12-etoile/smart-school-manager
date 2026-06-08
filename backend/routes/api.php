<?php
use App\Http\Controllers\Api\Auth\RegisterSchoolController;

Route::post('/register-school', [RegisterSchoolController::class, 'register']);

Route::get('/school/{school_code}/info', [DiscoveryController::class, 'getSchoolInfo']);

Route::post('/login', [App\Http\Controllers\Api\Auth\LoginController::class, 'login']);
Route::middleware('auth:sanctum')->post('/logout', [App\Http\Controllers\Api\Auth\LoginController::class, 'logout']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/sync/push', [SyncController::class, 'push']);
    Route::get('/sync/pull', [SyncController::class, 'pull']);
});