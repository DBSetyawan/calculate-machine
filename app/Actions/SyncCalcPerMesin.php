<?php

namespace App\Actions;

use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Actions\AbstractAction;

class SyncCalcPerMesin extends AbstractAction
{
    public function getTitle()
    {
        return;
    }

    public function getIcon()
    {
        return 'voyager-external';
    }

    public function getAttributes()
    {
        // if(Auth::user()->role->id == 3 || Auth::user()->role->id == 1 || Auth::user()->role->id == 2) {
            return [
                'class' => 'btn btn-sm btn-primary pull-right',
            ];
        // }
        //     else {

        //         return [
        //             'class' => 'btn hidden btn-sm btn-primary pull-right',
        //         ];

        //     }
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'listrik';
    }

    public function getDefaultRoute()
    {
        // if(Auth::user()->role->id == 2 || Auth::user()->role->id == 3) {
            // return route('voyager.'.$this->dataType->slug.'.edit', );
        return route('var.recalculate.edp', ['id' => $this->data->{$this->data->getKeyName()} ]);
            // }   
            // else {
                // return;
        // }
    }
}