<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomer extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customer', function (Blueprint $table) {
            $table->uuid('customer_id')->primary();
            $table->string('customer_name');
            $table->string('customer_code');
            $table->text('customer_address')->nullable();
            $table->string('customer_email')->nullable();
            $table->integer('customer_phone')->nullable();
            $table->text('customer_address_detail')->nullable();
            $table->string('customer_zip_code')->nullable();
            $table->softDeletes();
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
        Schema::dropIfExists('customer');
    }
}
