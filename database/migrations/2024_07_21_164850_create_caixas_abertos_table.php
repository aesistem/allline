<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCaixasAbertosTable extends Migration
{
    public function up()
    {
        Schema::create('caixas_abertos', function (Blueprint $table) {
            $table->id();
            $table->string('usuario');
            $table->time('hora_abertura');
            $table->date('data_abertura');
            $table->decimal('saldo_inicial', 10, 2);
            $table->decimal('saldo_atual', 10, 2);
            $table->decimal('entradas', 10, 2);
            $table->decimal('saidas', 10, 2);
            $table->decimal('dinheiro', 10, 2);
            $table->decimal('credito', 10, 2);
            $table->decimal('debito', 10, 2);
            $table->decimal('cheque', 10, 2);
            $table->decimal('convenio', 10, 2);
            $table->decimal('v_refeicao', 10, 2);
            $table->decimal('v_combustivel', 10, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('caixas_abertos');
    }
}

