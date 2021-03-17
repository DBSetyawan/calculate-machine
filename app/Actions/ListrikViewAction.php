<?php

namespace App\Actions;

use TCG\Voyager\Actions\EditAction;
use TCG\Voyager\Actions\ViewAction as VoyagerViewAction;

class ListrikViewAction extends VoyagerViewAction
{
    public function getTitle()
    {
        return __('');

    }

    public function getIcon()
    {
        return 'voyager-eye';
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'listrik';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-warning pull-right mr-1 protip',
            'data-pt-title'=>"Fungsi tombol ini untuk melihat detail dokumen.",
            'data-pt-size'=>"small",
            'data-pt-trigger'=>"hover",
            'data-pt-gravity'=>"2",
            'data-pt-scheme'=>"orange",
            'data-pt-animate'=>"rotateInDownLeft",
            'data-pt-position'=>"corner-left-bottom",
        ];
    }

    public function getDefaultRoute()
    {
        return route('voyager.'.$this->dataType->slug.'.show', $this->data->{$this->data->getKeyName()});
    }

}