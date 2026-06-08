<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use App\Models\Ecole;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class RegisterSchoolController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'school_name' => 'required|string|max:255',
            'admin_name' => 'required|string|max:255',
            'admin_email' => 'required|email|unique:users,email',
            'admin_password' => 'required|min:8|confirmed',
            'phone' => 'nullable|string',
            'address' => 'nullable|string',
        ]);

        DB::beginTransaction();

        try {
            // Générer un code école unique de 6 caractères
            $code = $this->generateUniqueSchoolCode();

            // Créer l'école
            $ecole = Ecole::create([
                'code_ecole' => $code,
                'nom' => $request->school_name,
                'adresse' => $request->address,
                'telephone' => $request->phone,
                'email' => $request->admin_email,
                'statut_abonnement' => 'essai',
                'abonnement_expire_le' => now()->addDays(30),
                'est_actif' => true,
            ]);

            // Créer l'utilisateur administrateur (directeur)
            $user = User::create([
                'name' => $request->admin_name,
                'email' => $request->admin_email,
                'password' => Hash::make($request->admin_password),
                'ecole_id' => $ecole->id,
                'role' => 'directeur',
                'mot_de_passe_modifie' => false,
            ]);

            DB::commit();

            // Générer un token Sanctum
            $token = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'success' => true,
                'message' => 'École créée avec succès',
                'data' => [
                    'school' => $ecole,
                    'user' => $user,
                    'token' => $token,
                ]
            ], 201);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Erreur lors de la création : ' . $e->getMessage(),
            ], 500);
        }
    }

    private function generateUniqueSchoolCode(): string
    {
        do {
            $code = strtoupper(Str::random(6));
        } while (Ecole::where('code_ecole', $code)->exists());

        return $code;
    }
}