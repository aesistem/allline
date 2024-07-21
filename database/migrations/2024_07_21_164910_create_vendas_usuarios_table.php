<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVendasUsuariosTable extends Migration
{
    public function up()
    {
        Schema::create('vendas_usuarios', function (Blueprint $table) {
            $table->id();
            $table->string('usuario');
            $table->decimal('total_vendas', 10, 2);
            $table->decimal('comissoes', 10, 2);
            $table->integer('quantidade_vendas');
            $table->integer('quantidade_produtos');
            $table->time('tempo_atendimento');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('vendas_usuarios');
    }
}

