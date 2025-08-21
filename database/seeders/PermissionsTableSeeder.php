<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Clear existing records
        DB::table('permissions')->truncate();

        // Set timestamp
        $timestamp = '2024-08-20 07:52:59';

        // Insert permissions data
        DB::table('permissions')->insert([
            [
                'id' => 1,
                'name' => 'Manage Event',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 2,
                'name' => 'Manage Job Post',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 3,
                'name' => 'Manage Story',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 4,
                'name' => 'Manage Alumni',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 5,
                'name' => 'Manage Membership',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 6,
                'name' => 'Manage Notice',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 7,
                'name' => 'Manage News',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 8,
                'name' => 'Manage Transaction',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 9,
                'name' => 'Manage Donation',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 10,
                'name' => 'Manage Committee',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 11,
                'name' => 'Manage Vote',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 12,
                'name' => 'Manage Moderator',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 13,
                'name' => 'Manage Website Settings',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 14,
                'name' => 'Manage Newsletter',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 15,
                'name' => 'Manage Application Setting',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 16,
                'name' => 'Manage Subscription',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 17,
                'name' => 'Manage Custom Domain',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 18,
                'name' => 'Chat',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
            [
                'id' => 19,
                'name' => 'Manage Version Update',
                'guard_name' => 'web',
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ],
        ]);
    }
}
