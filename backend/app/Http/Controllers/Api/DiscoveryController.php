<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Ecole;
use Illuminate\Http\Request;

class DiscoveryController extends Controller
{
    public function getSchoolInfo($school_code)
    {
        $ecole = Ecole::where('code_ecole', $school_code)
            ->select('id', 'nom', 'logo', 'couleur_primaire', 'couleur_secondaire', 'est_actif')
            ->first();

        if (!$ecole) {
            return response()->json([
                'success' => false,
                'message' => 'École introuvable'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $ecole
        ]);
    }
}