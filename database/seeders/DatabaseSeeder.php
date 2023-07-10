<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // insert user
        // \App\Models\Post::factory(3)->create();

        // \App\Models\Post::factory()->create([
        //     'user_id' => 4,
        //     'title' => 'Euismod curae purus si ex',
        //     'short_des' => 'Curae mus nec lectus risus blandit quam maecenas senectus commodo felis. Sollicitudin interdum sapien mauris facilisi tristique vulputate auctor. Nec aliquam molestie semper euismod taciti purus cubilia adipiscing eget. Enim purus dolor sit auctor ultrices arcu ultricies dui urna velit.',
        //     'image' => 'http://localhost:8000/assets/images/blog1.jpg',
        // ]);

        // insert post
        // $faker = Faker::create();

        // // Define the number of posts you want to create
        // $postCount = 10;

        // for ($i = 0; $i < $postCount; $i++) {
        //     // Generate fake data for each post
        //     $title = $faker->sentence;
        //     $shortDes = $faker->paragraph;
        //     $image = $faker->imageUrl('http://localhost:8000/assets/images/blog1.jpg');

        //     // Randomly select a user_id from the users table
        //     $user_id = User::inRandomOrder()->first()->id;

        //     // Insert the post into the posts table
        //     DB::table('posts')->insert([
        //         'user_id' => $user_id,
        //         'title' => $title,
        //         'short_des' => $shortDes,
        //         'image' => $image,
        //         'created_at' => now(),
        //         'updated_at' => now(),
        //     ]);
        // }

        // insert post details
        // $faker = Faker::create();

        // // Retrieve all post IDs from the posts table
        // $postIds = Post::pluck('id');

        // foreach ($postIds as $postId) {
        //     // Generate fake data for each post detail
        //     $des = $faker->paragraph;

        //     // Insert the post detail into the post_details table
        //     DB::table('post_details')->insert([
        //         'post_id' => $postId,
        //         'des' => $des,
        //         'created_at' => now(),
        //         'updated_at' => now(),
        //     ]);
        // }

        // insert comment 
        $faker = Faker::create();

        // Retrieve all post and post detail IDs
        $postIds = DB::table('posts')->pluck('id');
        $postDetailIds = DB::table('post_details')->pluck('id');

        // Generate five sets of fake comments
        $commentCount = 5;

        for ($i = 0; $i < $commentCount; $i++) {
            // Randomly select post and post detail IDs
            $postId = $faker->randomElement($postIds);
            $postDetailId = $faker->randomElement($postDetailIds);

            // Generate fake data for each comment
            $name = $faker->name;
            $comment = $faker->sentence;

            // Insert the comment into the post_comments table
            DB::table('post_comments')->insert([
                'post_id' => $postId,
                'post_detail_id' => $postDetailId,
                'name' => $name,
                'comment' => $comment,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
