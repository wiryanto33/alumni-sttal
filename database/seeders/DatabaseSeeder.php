<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use File;
use GatewayCurrenciesSeeder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            TenantsTableSeeder::class,
            DomainsTableSeeder::class,
            RegisterFormsTableSeeder::class,
            EmailTemplatesTableSeeder::class,
            FileManagersTableSeeder::class,
            FrontendSectionsTableSeeder::class,
            GatewaySeeder::class,

            LanguageSeeder::class,
            SettingsTableSeeder::class,
            CurrencySeeder::class,
            UsersTableSeeder::class,
            // PermissionsTableSeeder::class,

        ]);
    }
}
