<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TenantsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tenants')->insert([
            'id' => 1,
            'created_at' => '2023-11-16 07:37:54',
            'updated_at' => '2023-11-16 07:37:54',
            'data' => null,
        ]);
    }
}
