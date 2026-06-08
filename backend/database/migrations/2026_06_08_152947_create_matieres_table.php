<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('matieres', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ecole_id')->constrained('ecoles')->onDelete('cascade');
            $table->string('nom'); // "Mathématiques", "Français"
            $table->integer('coefficient')->default(1);
            $table->timestamps();

            $table->index('ecole_id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('matieres');
    }
};