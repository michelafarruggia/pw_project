<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFilmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('film', function (Blueprint $table) {
            $table->increments('id');
            $table->string('titolo');
            $table->integer('anno');
            $table->text('trama');
            $table->text('locandina');
            $table->integer('categoria_id');
            $table->integer('durata')->unsigned();
            $table->integer('director_id');

            $table->foreign('categoria_id')
            ->references('id')
            ->on('genre')
            ->onDelete('cascade');

            $table->foreign('director_id')
            ->references('id')
            ->on('gdirector')
            ->onDelete('cascade');

            $table->timestamps();
            $table->engine = 'MyISAM';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('film', function ($table) {
            Schema::dropIfExists('film');
            $table->dropForeign('film_categoria_id_foreign');
            $table->dropForeign('film_director_id_foreign');
        });
    }
}
