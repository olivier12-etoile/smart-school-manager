<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('notes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('eleve_id')->constrained('eleves')->onDelete('cascade');
            $table->foreignId('classe_id')->constrained('classes')->onDelete('cascade');
            $table->foreignId('matiere_id')->constrained('matieres')->onDelete('cascade');
            $table->foreignId('periode_id')->constrained('periodes')->onDelete('cascade');
            $table->decimal('note', 5, 2); // ex: 14.50
            $table->enum('statut', ['brouillon', 'soumis', 'valide', 'rejete'])->default('brouillon');
            $table->text('motif_rejet')->nullable();
            $table->foreignId('enseignant_id')->constrained('users')->onDelete('cascade');
            $table->timestamps();

            $table->index('eleve_id');
            $table->index('classe_id');
            $table->index('periode_id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('notes');
    }
};