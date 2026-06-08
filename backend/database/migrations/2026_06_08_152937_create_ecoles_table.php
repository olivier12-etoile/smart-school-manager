<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('ecoles', function (Blueprint $table) {
            $table->id();
            $table->string('code_ecole', 6)->unique();   // AGLA01
            $table->string('nom');
            $table->string('logo')->nullable();
            $table->string('couleur_primaire', 7)->default('#1a73e8');
            $table->string('couleur_secondaire', 7)->default('#34a853');
            $table->string('adresse')->nullable();
            $table->string('telephone')->nullable();
            $table->string('email')->nullable();
            $table->enum('statut_abonnement', ['essai', 'actif', 'expire'])->default('essai');
            $table->timestamp('abonnement_expire_le')->nullable();
            $table->boolean('est_actif')->default(true);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('ecoles');
    }
};