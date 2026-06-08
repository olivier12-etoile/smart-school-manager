<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('paiements', function (Blueprint $table) {
            $table->id();
            $table->foreignId('eleve_id')->constrained('eleves')->onDelete('cascade');
            $table->foreignId('ecole_id')->constrained('ecoles')->onDelete('cascade');
            $table->decimal('montant', 10, 0);
            $table->date('date_paiement');
            $table->string('mode_paiement'); // espèces, Mobile Money, etc.
            $table->string('reference')->nullable();
            $table->text('description')->nullable();
            $table->foreignId('enregistre_par')->constrained('users');
            $table->timestamps();

            $table->index('eleve_id');
            $table->index('ecole_id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('paiements');
    }
};