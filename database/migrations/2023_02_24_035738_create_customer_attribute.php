<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomerAttribute extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customer_attribute', function (Blueprint $table) {
            $table->uuid('customer_attribute_id')->primary();
            $table->string('customer_attribute_key');
            $table->string('customer_attribute_value');
            $table->string('customer_id');
            $table->foreign('customer_id')->references('customer_id')->on('customer')->onDelete('cascade');
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
        Schema::dropIfExists('customer_attribute');
    }
}
