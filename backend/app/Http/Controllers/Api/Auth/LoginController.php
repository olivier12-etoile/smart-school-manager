<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
            'school_code' => 'required|string|size:6',
        ]);

        // Vérifier que l'école existe
        $ecole = \App\Models\Ecole::where('code_ecole', $request->school_code)->first();
        if (!$ecole) {
            return response()->json(['message' => 'Code école invalide'], 401);
        }

        // Tentative de connexion
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::user();
            // Vérifier que l'utilisateur appartient bien à cette école
            if ($user->ecole_id !== $ecole->id) {
                Auth::logout();
                return response()->json(['message' => 'Accès non autorisé à cette école'], 403);
            }

            $token = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'access_token' => $token,
                'token_type' => 'Bearer',
                'user' => $user,
                'school' => $ecole
            ]);
        }

        return response()->json(['message' => 'Identifiants incorrects'], 401);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json(['message' => 'Déconnecté']);
    }
}