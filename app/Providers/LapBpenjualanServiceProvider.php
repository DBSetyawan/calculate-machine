<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class LapBpenjualanServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        require_once app_path() . '/Http/Controllers/KOP/Helpers/RumusLapBagPenjualan.php';
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
    }
}
