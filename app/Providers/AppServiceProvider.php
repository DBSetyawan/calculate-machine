<?php

namespace App\Providers;

//use Illuminate\Support\ServiceProvider;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Actions\ViewAction;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use App\Http\Controllers\KOP\Service\ListrikInterface;
use App\Http\Controllers\KOP\VoyagerListrikController;
use TCG\Voyager\Actions\EditAction;
use TCG\Voyager\Actions\DeletionAction;

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
        Voyager::replaceAction(EditAction::class,\App\Actions\UbahEditListrik::class);
        Voyager::replaceAction(DeletionAction::class,\App\Actions\DeleteListrikAction::class);

        Schema::defaultStringLength(191);
        
        Blade::directive('rupiahs', function ($frm) {
            return "Rp. <?php echo number_format($frm, 0, ',', '.'); ?>";
        });
        
        $this->app->singleton(ListrikInterface::class,VoyagerListrikController::class);

        view()->composer('partials.messages', function ($view) {

            $messages = self::messages();
  
            return $view->with('messages', $messages);
        });
        
    }
}
