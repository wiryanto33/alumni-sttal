<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DomainsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('domains')->insert([
            'id' => 1,
            'domain' => 'default',
            'tenant_id' => 1,
            'created_at' => '2023-11-16 07:37:54',
            'updated_at' => '2023-11-16 07:37:54',
        ]);
    }
}
