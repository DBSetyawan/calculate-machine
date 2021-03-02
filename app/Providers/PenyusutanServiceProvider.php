<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class PenyusutanServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        require_once app_path() . '/Http/Controllers/KOP/Helpers/RumusPerhitunganPenyusutan.php';
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        // 
    }
}
