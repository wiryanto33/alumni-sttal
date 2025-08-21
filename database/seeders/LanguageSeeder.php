<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LanguageSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('languages')->insert([
            'id'         => 1,
            'language'   => 'English',
            'iso_code'   => 'en',
            'flag_id'    => null,
            'font'       => null,
            'rtl'        => 0,
            'status'     => 1,
            'default'    => 1,
            'created_at' => '2023-09-24 02:01:03',
            'updated_at' => '2023-09-24 02:01:03',
            'deleted_at' => null,
        ]);
    }
}
