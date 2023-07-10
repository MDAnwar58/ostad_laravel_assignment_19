<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('post_comments', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('post_id');
            $table->unsignedBigInteger('post_detail_id');
            $table->string('name', 50);
            $table->text('comment');
            $table->foreign('post_id')->references('id')->on('posts')
            ->restrictOnDelete()
            ->cascadeOnUpdate();
            $table->foreign('post_detail_id')->references('id')->on('post_details')
            ->restrictOnDelete()
            ->cascadeOnUpdate();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('post_comments');
    }
};
