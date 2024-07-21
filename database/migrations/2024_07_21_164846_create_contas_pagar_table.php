<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContasPagarTable extends Migration
{
    public function up()
    {
        Schema::create('contas_pagar', function (Blueprint $table) {
            $table->id();
            $table->enum('status', ['pagas', 'pendentes']);
            $table->enum('mes', ['janeiro', 'fevereiro', 'marco', 'abril', 'maio', 'junho', 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro']);
            $table->decimal('valor', 10, 2);
            $table->decimal('atual', 10, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('contas_pagar');
    }
}
