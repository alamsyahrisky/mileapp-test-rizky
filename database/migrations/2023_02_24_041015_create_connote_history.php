<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateConnoteHistory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('connote_history', function (Blueprint $table) {
            $table->uuid('connote_history_id')->primary();
            $table->string('connote_id');
            $table->foreign('connote_id')->references('connote_id')->on('connote')->onDelete('cascade');
            $table->integer('connote_history_number');
            $table->string('connote_history_service');
            $table->integer('connote_history_service_price');
            $table->integer('connote_history_amount');
            $table->string('connote_history_code');
            $table->string('connote_history_booking_code');
            $table->string('connote_history_order');
            $table->string('connote_history_state');
            $table->string('connote_state_id');
            $table->foreign('connote_state_id')->references('state_id')->on('state')->onDelete('cascade');
            $table->string('zone_code_from');
            $table->string('zone_code_to');
            $table->integer('surchange_amount');
            $table->string('transaction_id');
            $table->integer('actual_weight');
            $table->integer('volume_weight');
            $table->integer('chargeable_weight');
            $table->integer('connote_history_total_package');
            $table->integer('connote_history_surcharge_amount');
            $table->integer('connote_history_sla_day');
            $table->string('source_tariff_db');
            $table->integer('id_source_tariff');
            $table->text('pod');
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
        Schema::dropIfExists('connote_history');
    }
}
