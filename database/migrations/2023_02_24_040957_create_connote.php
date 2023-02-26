<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateConnote extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('connote', function (Blueprint $table) {
            $table->uuid('connote_id')->primary();
            $table->integer('connote_number');
            $table->string('connote_service');
            $table->integer('connote_service_price');
            $table->integer('connote_amount');
            $table->string('connote_code');
            $table->string('connote_booking_code');
            $table->string('connote_order');
            $table->string('connote_state');
            $table->string('connote_state_id');
            $table->foreign('connote_state_id')->references('state_id')->on('state')->onDelete('cascade');
            $table->string('zone_code_from');
            $table->string('zone_code_to');
            $table->integer('surcharge_amount')->nullable();
            $table->integer('actual_weight');
            $table->integer('volume_weight');
            $table->integer('chargeable_weight');
            $table->integer('connote_total_package');
            $table->integer('connote_surcharge_amount');
            $table->integer('connote_sla_day');
            $table->string('source_tariff_db');
            $table->integer('id_source_tariff');
            $table->text('pod')->nullable();
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
        Schema::dropIfExists('connote');
    }
}
