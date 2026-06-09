<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserModulePermission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class UserManagementController extends Controller
{
    // Liste des utilisateurs de l'école (sauf super_admin)
    public function index(Request $request)
    {
        $schoolId = $request->user()->ecole_id;
        $users = User::where('ecole_id', $schoolId)
            ->where('role', '!=', 'super_admin')
            ->with('modulePermissions')
            ->get();
        return response()->json($users);
    }

    // Créer un utilisateur (censeur, secretaire, enseignant)
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'role' => ['required', Rule::in(['censeur', 'secretaire', 'enseignant'])],
            // Le mot de passe temporaire sera généré automatiquement
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $schoolId = $request->user()->ecole_id;

        // Génération d'un mot de passe temporaire (ex: Temp@ suivi de 6 caractères aléatoires)
        $tempPassword = 'Temp@' . substr(str_shuffle('ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789'), 0, 8);
        
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($tempPassword),
            'ecole_id' => $schoolId,
            'role' => $request->role,
            'mot_de_passe_modifie' => false,
        ]);

        // Optionnel : envoyer un email avec le mot de passe temporaire (à implémenter avec un job)
        // Mail::to($user)->send(new WelcomeTeacherMail($tempPassword));

        return response()->json([
            'message' => 'Utilisateur créé avec succès',
            'user' => $user,
            'temp_password' => $tempPassword // À retirer en production, ou à afficher une seule fois
        ], 201);
    }

    // Changer le rôle d'un utilisateur
    public function updateRole(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'role' => ['required', Rule::in(['directeur', 'censeur', 'secretaire', 'enseignant'])],
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = User::where('ecole_id', $request->user()->ecole_id)->findOrFail($id);
        // Empêcher de modifier un super_admin
        if ($user->role === 'super_admin') {
            return response()->json(['message' => 'Action non autorisée'], 403);
        }

        $user->role = $request->role;
        $user->save();

        return response()->json(['message' => 'Rôle mis à jour', 'user' => $user]);
    }

    // Gérer les permissions modulaires d'un utilisateur
    public function updateModules(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'modules' => 'required|array',
            'modules.*.module_name' => 'required|string',
            'modules.*.is_allowed' => 'required|boolean',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = User::where('ecole_id', $request->user()->ecole_id)->findOrFail($id);
        
        // Synchronisation des permissions
        foreach ($request->modules as $mod) {
            UserModulePermission::updateOrCreate(
                ['user_id' => $user->id, 'module_name' => $mod['module_name']],
                ['is_allowed' => $mod['is_allowed']]
            );
        }

        return response()->json(['message' => 'Permissions mises à jour']);
    }
}