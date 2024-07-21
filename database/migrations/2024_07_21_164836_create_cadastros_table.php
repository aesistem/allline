<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCadastrosTable extends Migration
{
    public function up()
    {
        Schema::create('cadastros', function (Blueprint $table) {
            $table->id();
            $table->enum('tipo', ['produtos', 'clientes', 'usuarios', 'fornecedores']);
            $table->integer('quantidade');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('cadastros');
    }
}
