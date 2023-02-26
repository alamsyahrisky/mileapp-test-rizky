<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransaction extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaction', function (Blueprint $table) {
            $table->uuid('transaction_id')->primary();
            $table->string('customer_id');
            $table->foreign('cutomer_id')->references('customer_id')->on('customer')->onDelete('cascade');
            $table->integer('transaction_amount');
            $table->integer('transaction_discount')->nullable();
            $table->string('transaction_additional_field')->nullable();
            $table->string('transaction_payment_type');
            $table->string('transaction_state');
            $table->string('transaction_code');
            $table->integer('transaction_order');
            $table->string('location_id');
            $table->foreign('location_id')->references('location_id')->on('location')->onDelete('cascade');
            $table->string('organization_id');
            $table->foreign('organization_id')->references('organization_id')->on('organization')->onDelete('cascade');
            $table->string('transaction_payment_type_name');
            $table->integer('transaction_cash_amount')->nullable();
            $table->integer('transaction_cash_change')->nullable();
            $table->string('connote_id');
            $table->foreign('connote_id')->references('connote_id')->on('connote')->onDelete('cascade');
            $table->string('origin_data_id');
            $table->foreign('origin_data_id')->references('origin_data_id')->on('origin_data')->onDelete('cascade');
            $table->string('destination_data_id');
            $table->foreign('destination_data_id')->references('destination_data_id')->on('destination_data')->onDelete('cascade');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transaction');
    }
}
