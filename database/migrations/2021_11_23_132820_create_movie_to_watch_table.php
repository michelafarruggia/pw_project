<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMovieToWatchTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('movie_to_watch', function (Blueprint $table) {
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
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('movie_to_watch', function ($table) {
            Schema::dropIfExists('movie_to_watch');
            $table->dropForeign('film_categoria_id_foreign');
            $table->dropForeign('film_director_id_foreign');
        });
    }

    
}
