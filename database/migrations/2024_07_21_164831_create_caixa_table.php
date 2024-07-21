<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCaixaTable extends Migration
{
    public function up()
    {
        Schema::create('caixa', function (Blueprint $table) {
            $table->id();
            $table->enum('tipo', ['saldo', 'entradas', 'saidas']);
            $table->enum('mes', ['janeiro', 'fevereiro', 'marco', 'abril', 'maio', 'junho', 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro']);
            $table->decimal('valor', 10, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('caixa');
    }
}
