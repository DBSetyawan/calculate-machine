<?php

namespace App\Actions;

use TCG\Voyager\Actions\EditAction;
use TCG\Voyager\Actions\ViewAction as VoyagerViewAction;

class UbahEditListrik extends VoyagerViewAction
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
            'class' => 'btn btn-sm btn-primary pull-right edit',
        ];
    }

    public function getDefaultRoute()
    {
        return route('voyager.'.$this->dataType->slug.'.edit', $this->data->{$this->data->getKeyName()});
    }

}