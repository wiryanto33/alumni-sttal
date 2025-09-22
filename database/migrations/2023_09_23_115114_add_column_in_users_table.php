<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasColumn('users', 'last_seen')) {
            Schema::table('users', function (Blueprint $table) {
                // Make it nullable; app logic can set/update this value
                $table->dateTime('last_seen')->nullable()->after('otp_expiry');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        if (Schema::hasColumn('users', 'last_seen')) {
            Schema::table('users', function (Blueprint $table) {
                $table->dropColumn('last_seen');
            });
        }
    }
};
