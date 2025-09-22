<?php
// Temporary diagnostic script to inspect build/version flags
// Usage: php tools/check_build.php

use Illuminate\Contracts\Console\Kernel as ConsoleKernel;

require __DIR__ . '/../vendor/autoload.php';

$app = require __DIR__ . '/../bootstrap/app.php';

$kernel = $app->make(ConsoleKernel::class);
$kernel->bootstrap();

try {
    $build = App\Models\Setting::where('option_key', 'build_version')->value('option_value');
    $current = App\Models\Setting::where('option_key', 'current_version')->value('option_value');
    echo "DB build_version: " . var_export($build, true) . PHP_EOL;
    echo "DB current_version: " . var_export($current, true) . PHP_EOL;
    echo "Code build_version: " . config('app.build_version') . PHP_EOL;
    echo "Code current_version: " . config('app.current_version') . PHP_EOL;
} catch (Throwable $e) {
    echo 'Error: ' . $e->getMessage() . PHP_EOL;
    exit(1);
}

