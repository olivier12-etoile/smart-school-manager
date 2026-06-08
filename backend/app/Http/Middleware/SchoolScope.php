<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SchoolScope
{
    /**
     * Handle an incoming request.
     */
    public function handle(Request $request, Closure $next): Response
    {
        $user = $request->user();
        if ($user && $user->ecole_id) {
            // On partage l'ID de l'école dans la requête pour l'utiliser dans les contrôleurs
            $request->merge(['school_id' => $user->ecole_id]);

            // Tu peux aussi définir un helper global si besoin
            // app()->instance('current_school_id', $user->ecole_id);
        }
        return $next($request);
    }
}