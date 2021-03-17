<?php

namespace App\Actions;

use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Actions\AbstractAction;

class ActionRecalculate extends AbstractAction
{
    public function getTitle()
    {

        return __('');

    }

    public function getIcon()
    {
        return 'voyager-wand';
    }

    public function getAttributes()
    {
        // if(Auth::user()->role->id == 3 || Auth::user()->role->id == 1 || Auth::user()->role->id == 2) {
            return [
                'class' => 'btn btn-sm btn-success pull-right protip',
                'data-pt-title'=>"Fungsi tombol ini untuk mengakumulasi biaya % perbulan & cost perbulan + ADM.",
                'data-pt-size'=>"small",
                'data-pt-trigger'=>"hover",
                'data-pt-gravity'=>"2",
                'data-pt-scheme'=>"leaf",
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
        return route('voyager.listrik.recalculate.persen.cost.adm', ['id' => $this->data->{$this->data->getKeyName()} ]);
            // }   
            // else {
                // return;
        // }
    }
}