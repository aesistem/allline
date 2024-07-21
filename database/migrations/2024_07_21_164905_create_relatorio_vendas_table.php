<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRelatorioVendasTable extends Migration
{
    public function up()
    {
        Schema::create('relatorio_vendas', function (Blueprint $table) {
            $table->id();
            $table->enum('status', ['concluidas', 'canceladas', 'diario']);
            $table->enum('mes', ['janeiro', 'fevereiro', 'marco', 'abril', 'maio', 'junho', 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro']);
            $table->decimal('valor_vendas', 10, 2)->nullable();
            $table->integer('quantidade_vendas')->nullable();
            $table->decimal('total_descontos', 10, 2)->nullable();
            $table->decimal('total_lucros', 10, 2)->nullable();
            $table->decimal('ticket_medio', 10, 2)->nullable();
            $table->time('tempo_medio_atendimento')->nullable();
            $table->integer('quantidade_produtos_vendidos')->nullable();
            $table->decimal('lucros_perdidos', 10, 2)->nullable();
            $table->integer('quantidade_produtos_perdidos')->nullable();
            $table->integer('quantidade_vendas_perdidas')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('relatorio_vendas');
    }
}

