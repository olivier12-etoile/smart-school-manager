<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('inscriptions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('eleve_id')->constrained('eleves')->onDelete('cascade');
            $table->foreignId('classe_id')->constrained('classes')->onDelete('cascade');
            $table->foreignId('annee_scolaire_id')->constrained('annees_scolaires')->onDelete('cascade');
            $table->enum('statut', ['inscrit', 'promu', 'redouble', 'diplome', 'exclu'])->default('inscrit');
            $table->timestamps();

            $table->unique(['eleve_id', 'annee_scolaire_id']); // Un élève ne peut être inscrit qu'une fois par année
            $table->index('classe_id');
            $table->index('annee_scolaire_id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('inscriptions');
    }
};