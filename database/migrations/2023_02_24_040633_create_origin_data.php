<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOriginData extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('origin_data', function (Blueprint $table) {
            $table->uuid('origin_data_id')->primary();
            $table->string('zone_code');
            $table->string('customer_id');
            $table->foreign('customer_id')->references('customer_id')->on('customer')->onDelete('cascade');
            $table->string('location_id');
            $table->foreign('location_id')->references('location_id')->on('location')->onDelete('cascade');
            $table->string('organization_id');
            $table->foreign('organization_id')->references('organization_id')->on('organization')->onDelete('cascade');
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
        Schema::dropIfExists('origin_data');
    }
}
