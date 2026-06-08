<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Eleve;
use App\Models\Note;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class SyncController extends Controller
{
    public function push(Request $request)
    {
        $user = $request->user();
        $schoolId = $user->ecole_id;

        DB::beginTransaction();
        try {
            $syncedUuids = [];

            // Synchronisation des élèves
            foreach ($request->input('eleves', []) as $eleveData) {
                $eleve = Eleve::updateOrCreate(
                    ['uuid' => $eleveData['uuid']],
                    [
                        'matricule' => $eleveData['matricule'],
                        'nom' => $eleveData['nom'],
                        'prenom' => $eleveData['prenom'],
                        'ecole_id' => $schoolId,
                        // ... autres champs
                    ]
                );
                $syncedUuids[] = $eleve->uuid;
            }

            // Synchronisation des notes (avec vérification conflit)
            foreach ($request->input('notes', []) as $noteData) {
                $existing = Note::where('uuid', $noteData['uuid'])->first();
                if ($existing && $existing->updated_at >= $noteData['updated_at']) {
                    continue; // local plus récent, on ignore
                }
                // Règle prioritaire : si l'utilisateur courant est admin (directeur/censeur) et la note vient d'un enseignant, l'admin écrase
                if ($existing && $user->role !== 'enseignant' && $existing->role_derniere_modif === 'enseignant') {
                    // l'admin écrase
                }
                $note = Note::updateOrCreate(
                    ['uuid' => $noteData['uuid']],
                    [
                        'eleve_id' => $noteData['eleve_id'],
                        'classe_id' => $noteData['classe_id'],
                        'matiere_id' => $noteData['matiere_id'],
                        'periode_id' => $noteData['periode_id'],
                        'note' => $noteData['note'],
                        'statut' => $noteData['statut'],
                        'updated_at' => $noteData['updated_at'],
                        'role_derniere_modif' => $user->role,
                    ]
                );
                $syncedUuids[] = $note->uuid;
            }

            DB::commit();
            return response()->json(['synced_uuids' => $syncedUuids]);
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error("Sync push error: " . $e->getMessage());
            return response()->json(['error' => 'Erreur serveur'], 500);
        }
    }

    public function pull(Request $request)
    {
        $since = $request->get('since');
        $user = $request->user();
        $schoolId = $user->ecole_id;

        $eleves = Eleve::where('ecole_id', $schoolId)
            ->when($since, fn($q) => $q->where('updated_at', '>', $since))
            ->get();

        $notes = Note::whereHas('eleve', fn($q) => $q->where('ecole_id', $schoolId))
            ->when($since, fn($q) => $q->where('updated_at', '>', $since))
            ->get();

        return response()->json([
            'eleves' => $eleves,
            'notes' => $notes,
        ]);
    }
}