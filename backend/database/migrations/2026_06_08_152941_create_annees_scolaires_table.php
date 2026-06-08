<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('annees_scolaires', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ecole_id')->constrained('ecoles')->onDelete('cascade');
            $table->string('libelle'); // ex: "2025-2026"
            $table->date('date_debut');
            $table->date('date_fin');
            $table->boolean('est_fermee')->default(false);
            $table->timestamps();

            $table->index('ecole_id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('annees_scolaires');
    }
};