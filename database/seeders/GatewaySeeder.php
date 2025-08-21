<?php

namespace Database\Seeders;

use Carbon\Carbon;
use DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GatewaySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $now = Carbon::parse('2023-11-16 07:37:56');

        $gateways = [
            // tenant_id = 1
            ['id' => 1, 'tenant_id' => 1, 'title' => 'Paypal', 'slug' => 'paypal'],
            ['id' => 2, 'tenant_id' => 1, 'title' => 'Stripe', 'slug' => 'stripe'],
            ['id' => 3, 'tenant_id' => 1, 'title' => 'Razorpay', 'slug' => 'razorpay'],
            ['id' => 4, 'tenant_id' => 1, 'title' => 'Instamojo', 'slug' => 'instamojo'],
            ['id' => 5, 'tenant_id' => 1, 'title' => 'Mollie', 'slug' => 'mollie'],
            ['id' => 6, 'tenant_id' => 1, 'title' => 'Paystack', 'slug' => 'paystack'],
            ['id' => 7, 'tenant_id' => 1, 'title' => 'Sslcommerz', 'slug' => 'sslcommerz'],
            ['id' => 8, 'tenant_id' => 1, 'title' => 'Flutterwave', 'slug' => 'flutterwave'],
            ['id' => 9, 'tenant_id' => 1, 'title' => 'Mercadopago', 'slug' => 'mercadopago'],
            ['id' => 10, 'tenant_id' => 1, 'title' => 'Binance', 'slug' => 'binance'],
            ['id' => 11, 'tenant_id' => 1, 'title' => 'Coinbase', 'slug' => 'coinbase'],
            ['id' => 12, 'tenant_id' => 1, 'title' => 'Paytm', 'slug' => 'paytm'],
            ['id' => 13, 'tenant_id' => 1, 'title' => 'Maxicash', 'slug' => 'maxicash'],
            ['id' => 14, 'tenant_id' => 1, 'title' => 'Iyzico', 'slug' => 'iyzico'],
            ['id' => 15, 'tenant_id' => 1, 'title' => 'Bitpay', 'slug' => 'bitpay'],
            ['id' => 16, 'tenant_id' => 1, 'title' => 'Zitopay', 'slug' => 'zitopay'],
            ['id' => 17, 'tenant_id' => 1, 'title' => 'Payhere', 'slug' => 'payhere'],
            ['id' => 18, 'tenant_id' => 1, 'title' => 'Cinetpay', 'slug' => 'cinetpay'],
            ['id' => 19, 'tenant_id' => 1, 'title' => 'Voguepay', 'slug' => 'voguepay'],
            ['id' => 20, 'tenant_id' => 1, 'title' => 'Toyyibpay', 'slug' => 'toyyibpay'],
            ['id' => 21, 'tenant_id' => 1, 'title' => 'Paymob', 'slug' => 'paymob'],
            ['id' => 22, 'tenant_id' => 1, 'title' => 'Authorize', 'slug' => 'authorize'],
            ['id' => 23, 'tenant_id' => 1, 'title' => 'Alipay', 'slug' => 'alipay'],
            ['id' => 24, 'tenant_id' => 1, 'title' => 'Bank', 'slug' => 'bank'],

            // tenant_id = null (global/default)
            ['id' => 25, 'tenant_id' => null, 'title' => 'Paypal', 'slug' => 'paypal'],
            ['id' => 26, 'tenant_id' => null, 'title' => 'Stripe', 'slug' => 'stripe'],
            ['id' => 27, 'tenant_id' => null, 'title' => 'Razorpay', 'slug' => 'razorpay'],
            ['id' => 28, 'tenant_id' => null, 'title' => 'Instamojo', 'slug' => 'instamojo'],
            ['id' => 29, 'tenant_id' => null, 'title' => 'Mollie', 'slug' => 'mollie'],
            ['id' => 30, 'tenant_id' => null, 'title' => 'Paystack', 'slug' => 'paystack'],
            ['id' => 31, 'tenant_id' => null, 'title' => 'Sslcommerz', 'slug' => 'sslcommerz'],
            ['id' => 32, 'tenant_id' => null, 'title' => 'Flutterwave', 'slug' => 'flutterwave'],
            ['id' => 33, 'tenant_id' => null, 'title' => 'Mercadopago', 'slug' => 'mercadopago'],
            ['id' => 34, 'tenant_id' => null, 'title' => 'Binance', 'slug' => 'binance'],
            ['id' => 35, 'tenant_id' => null, 'title' => 'Coinbase', 'slug' => 'coinbase'],
            ['id' => 36, 'tenant_id' => null, 'title' => 'Paytm', 'slug' => 'paytm'],
            ['id' => 37, 'tenant_id' => null, 'title' => 'Maxicash', 'slug' => 'maxicash'],
            ['id' => 38, 'tenant_id' => null, 'title' => 'Iyzico', 'slug' => 'iyzico'],
            ['id' => 39, 'tenant_id' => null, 'title' => 'Bitpay', 'slug' => 'bitpay'],
            ['id' => 40, 'tenant_id' => null, 'title' => 'Zitopay', 'slug' => 'zitopay'],
            ['id' => 41, 'tenant_id' => null, 'title' => 'Payhere', 'slug' => 'payhere'],
            ['id' => 42, 'tenant_id' => null, 'title' => 'Cinetpay', 'slug' => 'cinetpay'],
            ['id' => 43, 'tenant_id' => null, 'title' => 'Voguepay', 'slug' => 'voguepay'],
            ['id' => 44, 'tenant_id' => null, 'title' => 'Toyyibpay', 'slug' => 'toyyibpay'],
            ['id' => 45, 'tenant_id' => null, 'title' => 'Paymob', 'slug' => 'paymob'],
            ['id' => 46, 'tenant_id' => null, 'title' => 'Authorize', 'slug' => 'authorize'],
            ['id' => 47, 'tenant_id' => null, 'title' => 'Alipay', 'slug' => 'alipay'],
            ['id' => 48, 'tenant_id' => null, 'title' => 'Bank', 'slug' => 'bank'],
        ];

        foreach ($gateways as &$gateway) {
            $gateway['image'] = 'assets/images/gateway-icon/' . $gateway['slug'] . '.png';
            $gateway['status'] = 1;
            $gateway['mode'] = 2;
            $gateway['url'] = $gateway['key'] = $gateway['secret'] = null;
            $gateway['created_at'] = $gateway['updated_at'] = $now;
            $gateway['deleted_at'] = null;
        }

        DB::table('gateways')->insert($gateways);
    }
}
