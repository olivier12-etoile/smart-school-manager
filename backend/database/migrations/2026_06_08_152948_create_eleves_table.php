<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('eleves', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ecole_id')->constrained('ecoles')->onDelete('cascade');
            $table->string('matricule')->unique();
            $table->string('nom');
            $table->string('prenom');
            $table->date('date_naissance')->nullable();
            $table->enum('sexe', ['M', 'F'])->nullable();
            $table->string('lieu_naissance')->nullable();
            $table->string('adresse')->nullable();
            $table->string('telephone_parent')->nullable();
            $table->string('nom_parent')->nullable();
            $table->boolean('est_actif')->default(true);
            $table->timestamps();

            $table->index('ecole_id');
            $table->index('matricule');
        });
    }

    public function down()
    {
        Schema::dropIfExists('eleves');
    }
};