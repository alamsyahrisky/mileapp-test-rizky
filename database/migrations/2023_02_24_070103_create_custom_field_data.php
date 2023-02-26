<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomFieldData extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('custom_field_data', function (Blueprint $table) {
            $table->uuid('custom_field_data_id')->primary();
            $table->text('custom_field_data_value')->nullable();
            $table->string('custom_field_data_relation');
            $table->string('custom_field_data_module');
            $table->string('custom_field_data_custom_id');
            $table->foreign('custom_field_data_custom_id')->references('custom_field_id')->on('custom_field')->onDelete('cascade');
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
        Schema::dropIfExists('custom_field_data');
    }
}
