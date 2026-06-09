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

Route::middleware('auth:sanctum')->group(function () {
    // Gestion des utilisateurs (réservé au directeur)
    Route::get('/users', [App\Http\Controllers\Api\UserManagementController::class, 'index']);
    Route::post('/users', [App\Http\Controllers\Api\UserManagementController::class, 'store']);
    Route::put('/users/{id}/role', [App\Http\Controllers\Api\UserManagementController::class, 'updateRole']);
    Route::put('/users/{id}/modules', [App\Http\Controllers\Api\UserManagementController::class, 'updateModules']);
});

Route::middleware(['auth:sanctum', 'role:directeur'])->group(function () {
    Route::get('/users', [UserManagementController::class, 'index']);
    Route::post('/users', [UserManagementController::class, 'store']);
    Route::put('/users/{id}/role', [UserManagementController::class, 'updateRole']);
    Route::put('/users/{id}/modules', [UserManagementController::class, 'updateModules']);
});