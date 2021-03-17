<?php

namespace App\Actions;

use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Actions\AbstractAction;

class SyncCalcPerMesin extends AbstractAction
{
    public function getTitle()
    {
        return __('');
    }

    public function getIcon()
    {
        return 'voyager-external';
    }

    public function getAttributes()
    {
        /**
         * content 
         * https://github.com/wintercounter/Protip/blob/master/test/testcontent.html
         */
        // if(Auth::user()->role->id == 3 || Auth::user()->role->id == 1 || Auth::user()->role->id == 2) {
            return [
                'class' => 'btn btn-sm protip btn-info pull-right',
                'data-pt-title'=>"Fungsi tombol ini untuk meregistrasi temporary recalculate.",
                'data-pt-size'=>"small",
                'data-pt-trigger'=>"hover",
                'data-pt-gravity'=>"2",
                'data-pt-scheme'=>"blue",
                'data-pt-animate'=>"rotateInDownLeft",
                'data-pt-position'=>"corner-left-bottom",
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