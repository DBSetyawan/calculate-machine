<?php

namespace App\Providers;

//use Illuminate\Support\ServiceProvider;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use App\Http\Controllers\KOP\Service\ListrikInterface;
use App\Http\Controllers\KOP\VoyagerListrikController;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton('VoyagerAuth', function () {
            return 'admin';
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Voyager::addAction(\App\Actions\ActionRecalculate::class);
        Voyager::addAction(\App\Actions\SyncCalcPerMesin::class);

        Schema::defaultStringLength(191);
        
        Blade::directive('rupiahs', function ($frm) {
            return "Rp. <?php echo number_format($frm, 0, ',', '.'); ?>";
        });
        
        $this->app->singleton(ListrikInterface::class,VoyagerListrikController::class);

        view()->composer('partials.messages', function ($view) {

            $messages = self::messages();
  
            return $view->with('messages', $messages);
        });

        // Voyager::replaceAction(ViewAction::class,\App\Actions\class::class);
    }
}
