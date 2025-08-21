<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Carbon;

class GatewayCurrenciesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $now = Carbon::now();

        $data = [
            // Tenant ID = 1
            ['id' => 1, 'gateway_id' => 1, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 2, 'gateway_id' => 2, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 3, 'gateway_id' => 3, 'currency' => 'INR', 'conversion_rate' => 80.00],
            ['id' => 4, 'gateway_id' => 4, 'currency' => 'INR', 'conversion_rate' => 80.00],
            ['id' => 5, 'gateway_id' => 5, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 6, 'gateway_id' => 6, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 7, 'gateway_id' => 7, 'currency' => 'BDT', 'conversion_rate' => 100.00],
            ['id' => 8, 'gateway_id' => 8, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 9, 'gateway_id' => 9, 'currency' => 'BRL', 'conversion_rate' => 5.00],
            ['id' => 10, 'gateway_id' => 10, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 11, 'gateway_id' => 11, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 12, 'gateway_id' => 12, 'currency' => 'INR', 'conversion_rate' => 80.00],
            ['id' => 13, 'gateway_id' => 13, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 14, 'gateway_id' => 14, 'currency' => 'TRY', 'conversion_rate' => 27.00],
            ['id' => 15, 'gateway_id' => 15, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 16, 'gateway_id' => 16, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 17, 'gateway_id' => 17, 'currency' => 'LKR', 'conversion_rate' => 320.00],
            ['id' => 18, 'gateway_id' => 18, 'currency' => 'XOF', 'conversion_rate' => 600.00],
            ['id' => 19, 'gateway_id' => 19, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 20, 'gateway_id' => 20, 'currency' => 'MYR', 'conversion_rate' => 4.50],
            ['id' => 21, 'gateway_id' => 21, 'currency' => 'EGP', 'conversion_rate' => 30.00],
            ['id' => 22, 'gateway_id' => 22, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 23, 'gateway_id' => 23, 'currency' => 'CNY', 'conversion_rate' => 7.00],
            ['id' => 24, 'gateway_id' => 24, 'currency' => 'USD', 'conversion_rate' => 1.00],

            // Tenant ID = null (global entries)
            ['id' => 25, 'gateway_id' => 25, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 26, 'gateway_id' => 26, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 27, 'gateway_id' => 27, 'currency' => 'INR', 'conversion_rate' => 80.00],
            ['id' => 28, 'gateway_id' => 28, 'currency' => 'INR', 'conversion_rate' => 80.00],
            ['id' => 29, 'gateway_id' => 29, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 30, 'gateway_id' => 30, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 31, 'gateway_id' => 31, 'currency' => 'BDT', 'conversion_rate' => 100.00],
            ['id' => 32, 'gateway_id' => 32, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 33, 'gateway_id' => 33, 'currency' => 'BRL', 'conversion_rate' => 5.00],
            ['id' => 34, 'gateway_id' => 34, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 35, 'gateway_id' => 35, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 36, 'gateway_id' => 36, 'currency' => 'INR', 'conversion_rate' => 80.00],
            ['id' => 37, 'gateway_id' => 37, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 38, 'gateway_id' => 38, 'currency' => 'TRY', 'conversion_rate' => 27.00],
            ['id' => 39, 'gateway_id' => 39, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 40, 'gateway_id' => 40, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 41, 'gateway_id' => 41, 'currency' => 'LKR', 'conversion_rate' => 320.00],
            ['id' => 42, 'gateway_id' => 42, 'currency' => 'XOF', 'conversion_rate' => 600.00],
            ['id' => 43, 'gateway_id' => 43, 'currency' => 'NGN', 'conversion_rate' => 464.00],
            ['id' => 44, 'gateway_id' => 44, 'currency' => 'MYR', 'conversion_rate' => 4.50],
            ['id' => 45, 'gateway_id' => 45, 'currency' => 'EGP', 'conversion_rate' => 30.00],
            ['id' => 46, 'gateway_id' => 46, 'currency' => 'USD', 'conversion_rate' => 1.00],
            ['id' => 47, 'gateway_id' => 47, 'currency' => 'CNY', 'conversion_rate' => 7.00],
            ['id' => 48, 'gateway_id' => 48, 'currency' => 'USD', 'conversion_rate' => 1.00],
        ];

        foreach ($data as &$item) {
            $item['created_at'] = $now;
            $item['updated_at'] = $now;
            $item['deleted_at'] = null;
        }

        DB::table('gateway_currencies')->insert($data);
    }
}
