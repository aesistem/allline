<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTopProdutosTable extends Migration
{
    public function up()
    {
        Schema::create('top_produtos', function (Blueprint $table) {
            $table->id();
            $table->string('produto');
            $table->integer('quantidade');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('top_produtos');
    }
}

