// database/migrations/xxxx_xx_xx_create_user_module_permissions_table.php
<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('user_module_permissions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('module_name'); // ex: 'notes_validation', 'paiements_consultation'
            $table->boolean('is_allowed')->default(true);
            $table->timestamps();

            $table->unique(['user_id', 'module_name']);
        });
    }

    public function down()
    {
        Schema::dropIfExists('user_module_permissions');
    }
};