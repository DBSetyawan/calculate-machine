<?php

namespace App\Actions;

use TCG\Voyager\Actions\EditAction;
use TCG\Voyager\Actions\AbstractAction;
use TCG\Voyager\Actions\ViewAction as VoyagerViewAction;

class ListrikOutputActionEdit extends AbstractAction
{
    public function getTitle()
    {
        return;
    }

    public function getIcon()
    {
        return 'voyager-edit';
    }

    public function getPolicy()
    {
        return 'edit';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-primary pull-right protip',
            'data-pt-title'=>"Fungsi tombol ini untuk merecalculate data.",
            'data-pt-size'=>"small",
            'data-pt-trigger'=>"hover",
            'data-pt-gravity'=>"2",
            'data-pt-scheme'=>"aqua",
            'data-pt-animate'=>"rotateInDownLeft",
            'data-pt-position'=>"corner-left-bottom",
        ];
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'listrik-output';
    }
    
    public function getDefaultRoute()
    {
        return route('voyager.'.$this->dataType->slug.'.edit', $this->data->{$this->data->getKeyName()});
    }

}