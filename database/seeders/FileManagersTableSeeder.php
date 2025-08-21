<?php

namespace Database\Seeders;

use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FileManagersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('file_managers')->insert([
            [
                'id' => 1,
                'tenant_id' => 1,
                'file_type' => 'image/png',
                'storage_type' => 'public',
                'original_name' => 'logo-black.png',
                'file_name' => '6751695564188.png',
                'user_id' => 1,
                'path' => 'uploads/Setting/6751695564188.png',
                'extension' => 'png',
                'size' => '1422',
                'external_link' => null,
                'deleted_at' => null,
                'created_at' => '2023-09-24 08:03:08',
                'updated_at' => '2023-11-16 07:37:55',
            ],
            [
                'id' => 2,
                'tenant_id' => 1,
                'file_type' => 'image/png',
                'storage_type' => 'public',
                'original_name' => 'logo.png',
                'file_name' => '3371695564188.png',
                'user_id' => 1,
                'path' => 'uploads/Setting/3371695564188.png',
                'extension' => 'png',
                'size' => '3895',
                'external_link' => null,
                'deleted_at' => null,
                'created_at' => '2023-09-24 08:03:08',
                'updated_at' => '2023-11-16 07:37:55',
            ],
            [
                'id' => 3,
                'tenant_id' => 1,
                'file_type' => 'image/png',
                'storage_type' => 'public',
                'original_name' => 'favicon.png',
                'file_name' => '5561695564188.png',
                'user_id' => 1,
                'path' => 'uploads/Setting/5561695564188.png',
                'extension' => 'png',
                'size' => '924',
                'external_link' => null,
                'deleted_at' => null,
                'created_at' => '2023-09-24 08:03:08',
                'updated_at' => '2023-11-16 07:37:55',
            ],
            [
                'id' => 4,
                'tenant_id' => 1,
                'file_type' => 'image/jpeg',
                'storage_type' => 'public',
                'original_name' => 'regiser-left-image.jpg',
                'file_name' => '6251695564188.jpg',
                'user_id' => 1,
                'path' => 'uploads/Setting/6251695564188.jpg',
                'extension' => 'jpg',
                'size' => '86463',
                'external_link' => null,
                'deleted_at' => null,
                'created_at' => '2023-09-24 08:03:08',
                'updated_at' => '2023-11-16 07:37:55',
            ],
        ]);
    }
}
