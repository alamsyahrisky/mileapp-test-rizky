<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKoli extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('koli', function (Blueprint $table) {
            $table->uuid('koli_id')->primary();
            $table->string('connote_id');
            $table->foreign('connote_id')->references('connote_id')->on('connote')->onDelete('cascade');
            $table->integer('koli_length')->nullable();
            $table->string('awb_url');
            $table->integer('koli_chargeable_weight');
            $table->integer('koli_width')->nullable();
            $table->string('koli_surcharge')->nullable();
            $table->integer('koli_height')->nullable();
            $table->text('koli_description');
            $table->string('koli_formula_id')->nullable();
            $table->integer('koli_volume')->nullable();
            $table->integer('koli_weight')->nullable();
            $table->string('koli_code');
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
        Schema::dropIfExists('koli');
    }
}
