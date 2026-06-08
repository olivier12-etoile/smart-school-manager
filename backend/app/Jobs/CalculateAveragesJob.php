<?php

namespace App\Jobs;

use App\Models\Periode;
use App\Models\Note;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class CalculateAveragesJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, SerializesModels;

    protected $periodeId;

    public function __construct($periodeId)
    {
        $this->periodeId = $periodeId;
    }

    public function handle()
    {
        // Ici, logique de calcul des moyennes par élève, matière, etc.
        Log::info("Calcul des moyennes pour la période {$this->periodeId} en arrière-plan");
        // Exemple : récupérer toutes les notes de la période, grouper, calculer
        // ...
    }
}