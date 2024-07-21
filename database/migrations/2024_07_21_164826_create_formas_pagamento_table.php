<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFormasPagamentoTable extends Migration
{
    public function up()
    {
        Schema::create('formas_pagamento', function (Blueprint $table) {
            $table->id();
            $table->enum('forma_pagamento', ['dinheiro', 'credito', 'debito', 'pix', 'prazo']);
            $table->decimal('valor', 10, 2);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('formas_pagamento');
    }
}
