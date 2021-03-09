<?php

namespace App\Actions;

use TCG\Voyager\Actions\EditAction;
use TCG\Voyager\Actions\ViewAction as VoyagerViewAction;

class ListrikViewAction extends VoyagerViewAction
{
    public function getTitle()
    {
        return;
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
            'class' => 'btn btn-sm btn-warning pull-right',
        ];
    }

    public function getDefaultRoute()
    {
        return route('voyager.'.$this->dataType->slug.'.show', $this->data->{$this->data->getKeyName()});
    }

}