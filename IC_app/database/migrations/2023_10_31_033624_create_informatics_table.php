<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('informatics', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('mentor_id')->unique();
            $table->string('category')->nullable();
            $table->unsignedInteger('student')->nullable();
            $table->longText('description')->nullable();
            $table->string('status')->nullable();
            $table->foreign ('mentor_id')->references('id')->on('users')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('informatics');
    }
};
