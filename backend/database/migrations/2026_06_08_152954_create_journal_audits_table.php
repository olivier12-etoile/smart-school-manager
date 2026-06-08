<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('journal_audits', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users');
            $table->string('action'); // "modification_note", "suppression_paiement"
            $table->string('table_name');
            $table->unsignedBigInteger('record_id');
            $table->json('anciennes_valeurs')->nullable();
            $table->json('nouvelles_valeurs')->nullable();
            $table->string('ip_adresse', 45)->nullable();
            $table->timestamps();

            $table->index('user_id');
            $table->index('table_name');
            $table->index('record_id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('journal_audits');
    }
};