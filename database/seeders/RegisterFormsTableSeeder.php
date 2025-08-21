<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RegisterFormsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('register_forms')->insert([
            'tenant_id' => 1,
            'enable_batch' => 1,
            'enable_department' => 1,
            'enable_passing_year' => 1,
            'enable_role_number' => 1,
            'enable_attachment' => 1,
            'enable_date_of_birth' => 1,
            'enable_gender' => 1,
            'custom_fields' => null,
            'created_at' => '2023-11-16 07:37:54',
            'updated_at' => '2023-11-16 07:37:54',
        ]);
    }
}
