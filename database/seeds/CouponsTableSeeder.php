<?php

use App\Coupon;
use Illuminate\Database\Seeder;

class CouponsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Coupon::create([
        	'code' => 'abc123',
        	'type' => 'fixed',
        	'value' => 100,
        ]);

        Coupon::create([
        	'code' => 'abc456',
        	'type' => 'percent',
        	'percent_off' => 30,
        ]);
    }
}
