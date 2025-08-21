<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CurrencySeeder extends Seeder
{
    public function run(): void
    {
        DB::table('currencies')->insert([
            ['id' => 1, 'tenant_id' => 1, 'currency_code' => 'USD', 'symbol' => '$', 'currency_placement' => 'before', 'current_currency' => 1, 'created_at' => '2023-09-24 02:01:03', 'updated_at' => '2023-11-16 07:37:54'],
            ['id' => 2, 'tenant_id' => 1, 'currency_code' => 'BDT', 'symbol' => '৳', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-09-24 02:01:03', 'updated_at' => '2023-11-16 07:37:54'],
            ['id' => 3, 'tenant_id' => 1, 'currency_code' => 'INR', 'symbol' => '₹', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-09-24 02:01:03', 'updated_at' => '2023-11-16 07:37:54'],
            ['id' => 4, 'tenant_id' => 1, 'currency_code' => 'GBP', 'symbol' => '£', 'currency_placement' => 'after', 'current_currency' => 0, 'created_at' => '2023-09-24 02:01:03', 'updated_at' => '2023-11-16 07:37:54'],
            ['id' => 5, 'tenant_id' => 1, 'currency_code' => 'MXN', 'symbol' => '$', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-09-24 02:01:03', 'updated_at' => '2023-11-16 07:37:54'],
            ['id' => 6, 'tenant_id' => 1, 'currency_code' => 'SAR', 'symbol' => 'SR', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-09-24 02:01:03', 'updated_at' => '2023-11-16 07:37:54'],
            ['id' => 7, 'tenant_id' => 0, 'currency_code' => 'USD', 'symbol' => '$', 'currency_placement' => 'before', 'current_currency' => 1, 'created_at' => '2023-11-16 07:37:56', 'updated_at' => '2023-11-16 07:37:56'],
            ['id' => 8, 'tenant_id' => 0, 'currency_code' => 'BDT', 'symbol' => '৳', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-11-16 07:37:56', 'updated_at' => '2023-11-16 07:37:56'],
            ['id' => 9, 'tenant_id' => 0, 'currency_code' => 'INR', 'symbol' => '₹', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-11-16 07:37:56', 'updated_at' => '2023-11-16 07:37:56'],
            ['id' => 10, 'tenant_id' => 0, 'currency_code' => 'GBP', 'symbol' => '£', 'currency_placement' => 'after', 'current_currency' => 0, 'created_at' => '2023-11-16 07:37:56', 'updated_at' => '2023-11-16 07:37:56'],
            ['id' => 11, 'tenant_id' => 0, 'currency_code' => 'MXN', 'symbol' => '$', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-11-16 07:37:56', 'updated_at' => '2023-11-16 07:37:56'],
            ['id' => 12, 'tenant_id' => 0, 'currency_code' => 'SAR', 'symbol' => 'SR', 'currency_placement' => 'before', 'current_currency' => 0, 'created_at' => '2023-11-16 07:37:56', 'updated_at' => '2023-11-16 07:37:56'],
        ]);
    }
}
