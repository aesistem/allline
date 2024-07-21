<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContasReceberTable extends Migration
{
    public function up()
    {
        Schema::create('contas_receber', function (Blueprint $table) {
            $table->id();
            $table->enum('status', ['receber', 'recebidas']);
            $table->enum('mes', ['janeiro', 'fevereiro', 'marco', 'abril', 'maio', 'junho', 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro']);
            $table->decimal('valor', 10, 2);
            $table->decimal('atual', 10, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('contas_receber');
    }
}
