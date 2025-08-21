<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Clear existing records
        DB::table('users')->truncate();

        // Current timestamp
        $now = Carbon::now()->toDateTimeString();
        $updateDate = '2023-11-16 07:37:55';
        $updateDateNext = '2023-11-16 07:37:56';

        // Insert users data
        DB::table('users')->insert([
            [
                'id' => 1,
                'tenant_id' => 1,
                'uuid' => '12345',
                'name' => 'Administrator Doe',
                'rank' => 'kopda',
                'nrp' => '118929',
                'nick_name' => NULL,
                'email' => 'admin@gmail.com',
                'mobile' => '0',
                'email_verified_at' => NULL,
                'password' => Hash::make('password'),
                'image' => NULL,
                'role' => 1,
                'email_verification_status' => 1,
                'phone_verification_status' => 1,
                'google_auth_status' => 0,
                'google2fa_secret' => 'QQKI6NEOYRGL6DYS',
                'google_id' => NULL,
                'facebook_id' => NULL,
                'verify_token' => NULL,
                'otp' => NULL,
                'otp_expiry' => NULL,
                'last_seen' => '2023-09-24 20:07:50',
                'show_email_in_public' => 1,
                'show_phone_in_public' => 1,
                'created_by' => NULL,
                'status' => 1,
                'remember_token' => NULL,
                'deleted_at' => NULL,
                'created_at' => NULL,
                'updated_at' => $updateDate,
            ],
            [
                'id' => 3,
                'tenant_id' => NULL,
                'uuid' => '62cabcb7-f067-494e-b8a7-2865785ba12e',
                'name' => 'Super Admin',
                'rank' => NULL,
                'nrp' => NULL,
                'nick_name' => NULL,
                'email' => 'superadmin@gmail.com',
                'mobile' => '+0000123456',
                'email_verified_at' => $updateDate,
                'password' => Hash::make('password'),
                'image' => NULL,
                'role' => 3,
                'email_verification_status' => 1,
                'phone_verification_status' => 1,
                'google_auth_status' => 0,
                'google2fa_secret' => '5P5XZZ4V2U6NWOI5',
                'google_id' => NULL,
                'facebook_id' => NULL,
                'verify_token' => NULL,
                'otp' => NULL,
                'otp_expiry' => NULL,
                'last_seen' => '2023-09-24 14:01:03',
                'show_email_in_public' => 1,
                'show_phone_in_public' => 1,
                'created_by' => NULL,
                'status' => 1,
                'remember_token' => NULL,
                'deleted_at' => NULL,
                'created_at' => $updateDateNext,
                'updated_at' => $updateDateNext,
            ],
        ]);
    }
}
