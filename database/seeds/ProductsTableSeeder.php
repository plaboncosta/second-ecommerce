<?php

use App\Product;
use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        // For Laptop
        for($i = 1; $i <= 30; $i++)
        {
            Product::create([
                'name' => 'Laptop ' . $i,
                'slug' => 'laptop-' . $i,
                'details' => [13, 14, 15][array_rand([13, 14, 15])] . ' inch,' . [1, 2, 3][array_rand([1, 2, 3])] . ' TB SSD, 32GB ROM',
                'price' => rand(15000, 25000),
                'description' => 'Lorem ' . $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.',
            ])->categories()->attach(1);
        }

        $product = Product::find(1);
        $product->categories()->attach(2);


        // For Desktops
        for($i = 1; $i <= 9; $i++)
        {
            Product::create([
                'name' => 'Desktops ' . $i,
                'slug' => 'desktop-' . $i,
                'details' => [13, 14, 15][array_rand([13, 14, 15])] . ' inch,' . [1, 2, 3][array_rand([1, 2, 3])] . ' TB SSD, 32GB ROM',
                'price' => rand(45000, 60000),
                'description' => 'Lorem ' . $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.',
            ])->categories()->attach(2);
        }



        // For Mobile Phones
        for($i = 1; $i <= 9; $i++)
        {
            Product::create([
                'name' => 'Mobile Phones ' . $i,
                'slug' => 'phone-' . $i,
                'details' => [13, 14, 15][array_rand([13, 14, 15])] . ' inch,' . [1, 2, 3][array_rand([1, 2, 3])] . ' TB SSD, 32GB ROM',
                'price' => rand(15000, 30000),
                'description' => 'Lorem ' . $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.',
            ])->categories()->attach(3);
        }




        // For Tablets
        for($i = 1; $i <= 9; $i++)
        {
            Product::create([
                'name' => 'Tablets ' . $i,
                'slug' => 'tablet-' . $i,
                'details' => [13, 14, 15][array_rand([13, 14, 15])] . ' inch,' . [1, 2, 3][array_rand([1, 2, 3])] . ' TB SSD, 32GB ROM',
                'price' => rand(45000, 60000),
                'description' => 'Lorem ' . $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.',
            ])->categories()->attach(4);
        }        


        // For TVs
        for($i = 1; $i <= 9; $i++)
        {
            Product::create([
                'name' => 'TVs ' . $i,
                'slug' => 'tv-' . $i,
                'details' => [13, 14, 15][array_rand([13, 14, 15])] . ' inch,' . [1, 2, 3][array_rand([1, 2, 3])] . ' TB SSD, 32GB ROM',
                'price' => rand(18000, 25000),
                'description' => 'Lorem ' . $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.',
            ])->categories()->attach(5);
        }



        // For Digital Cameras
        for($i = 1; $i <= 9; $i++)
        {
            Product::create([
                'name' => 'Digital Cameras ' . $i,
                'slug' => 'camera-' . $i,
                'details' => [13, 14, 15][array_rand([13, 14, 15])] . ' inch,' . [1, 2, 3][array_rand([1, 2, 3])] . ' TB SSD, 32GB ROM',
                'price' => rand(20000, 25000),
                'description' => 'Lorem ' . $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.',
            ])->categories()->attach(6);
        }



        // For Appliances
        for($i = 1; $i <= 9; $i++)
        {
            Product::create([
                'name' => 'Appliances ' . $i,
                'slug' => 'appliance-' . $i,
                'details' => [13, 14, 15][array_rand([13, 14, 15])] . ' inch,' . [1, 2, 3][array_rand([1, 2, 3])] . ' TB SSD, 32GB ROM',
                'price' => rand(10000, 25000),
                'description' => 'Lorem ' . $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.',
            ])->categories()->attach(7);
        }

        
    }
}
