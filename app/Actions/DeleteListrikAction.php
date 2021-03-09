<?php

namespace App\Actions;

use TCG\Voyager\Actions\EditAction;
use TCG\Voyager\Actions\ViewAction as VoyagerViewAction;

class DeleteListrikAction extends VoyagerViewAction
{
    public function getTitle()
    {
        return;
    }

    public function getIcon()
    {
        return 'voyager-x';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-danger pull-right',
        ];
    }

    public function getDefaultRoute()
    {
        return route('voyager.'.$this->dataType->slug.'.destroy', $this->data->{$this->data->getKeyName()});
    }

}