<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Orientale extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
    Schema::create('orientale', function (Blueprint $table) {
        $table->id();
        $table->string('title');
        $table->float('price');
        $table->string('marque');
        $table->string('note')->nullable();
        $table->string('lien')->nullable();
        $table->text('description')->nullable();
        $table->string('categorie');
        $table->string('sexe')->nullable();
        $table->string('type');
        $table->string('tete')->nullable();
        $table->string('coeur')->nullable();
        $table->string('fond')->nullable();
        $table->string('capacite');
        $table->string('decantage')->nullable();
        $table->string('decantagePrice')->nullable();
        $table->string('image')->nullable();
        $table->timestamps();
    });
}

/**
 * Reverse the migrations.
 *
 * @return void
 */
public function down()
{
    Schema::dropIfExists('orientale');
}
}
