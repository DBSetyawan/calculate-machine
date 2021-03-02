<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class BagianPenjualanServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {

        require_once app_path() . '/Http/Controllers/KOP/Helpers/RumusBagianPenjualan.php';

    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
       // $this->app->singleton(ListrikInterface::class,VoyagerListrikController::class);
    }
}
