<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('periodes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ecole_id')->constrained('ecoles')->onDelete('cascade');
            $table->foreignId('annee_scolaire_id')->constrained('annees_scolaires')->onDelete('cascade');
            $table->string('nom'); // "Trimestre 1", "Semestre 1", etc.
            $table->date('date_debut');
            $table->date('date_fin');
            $table->enum('statut', ['planifie', 'actif', 'cloture'])->default('planifie');
            $table->timestamps();

            $table->index('ecole_id');
            $table->index('annee_scolaire_id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('periodes');
    }
};