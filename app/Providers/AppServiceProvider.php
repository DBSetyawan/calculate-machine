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
        Voyager::addAction(\App\Actions\JobLevelAction::class);
        Voyager::addAction(\App\Actions\AsumsiAction::class);
        // Voyager::addAction(\App\Actions\ActionRecalculate::class);
        Voyager::addAction(\App\Actions\ActionAccount::class);
        Voyager::addAction(\App\Actions\ActionLabor::class);
        Voyager::addAction(\App\Actions\ActionEditPenyusutan::class);
        Voyager::addAction(\App\Actions\ActionCompany::class);
        Voyager::addAction(\App\Actions\ActionEditMesin::class);
        Voyager::addAction(\App\Actions\ActionMTC::class);
        Voyager::addAction(\App\Actions\grouMesinAction::class);
        Voyager::addAction(\App\Actions\ActionKategoriBagian::class);
        // Voyager::addAction(\App\Actions\SyncCalcPerMesin::class);
        Voyager::addAction(\App\Actions\ActionBagianPenjualan::class);
        Voyager::addAction(\App\Actions\ActionBAU::class);
        Voyager::addAction(\App\Actions\gajilainAction::class);
        Voyager::addAction(\App\Actions\editUserAction::class);
        Voyager::addAction(\App\Actions\ActionEditRoles::class);
        Voyager::replaceAction(EditAction::class,\App\Actions\UbahEditListrik::class);
        Voyager::addAction(\App\Actions\ListrikOutputActionEdit::class);
        Voyager::replaceAction(DeletionAction::class,\App\Actions\DeleteListrikAction::class);
        Voyager::replaceAction(DeletionAction::class,\App\Actions\ActionDeletePenyusutan::class);
        Voyager::replaceAction(ViewAction::class,\App\Actions\ListrikViewAction::class);

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
