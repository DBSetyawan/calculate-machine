<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class LaporabBiayaAdministrasiUmumrServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        require_once app_path() . '/Http/Controllers/KOP/Helpers/RumusLaporanBiayaAdministrasiUmum.php';
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
