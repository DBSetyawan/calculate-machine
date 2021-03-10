<?php

namespace App\Actions;

use TCG\Voyager\Actions\EditAction;
use TCG\Voyager\Actions\DeleteAction;
use TCG\Voyager\Actions\ViewAction as VoyagerViewAction;

class ActionDeletePenyusutan extends DeleteAction
{
    public function getTitle()
    {
        return __('');
    }

    public function getIcon()
    {
        return 'voyager-trash';
    }

    public function getPolicy()
    {
        return 'delete';
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'penyusutan';
    }

    public function getAttributes()
    {
        return [
            'class'   => 'btn btn-sm btn-danger pull-right delete',
            'data-id' => $this->data->{$this->data->getKeyName()},
            'id'      => 'delete-'.$this->data->{$this->data->getKeyName()},
        ];
    }

    public function getDefaultRoute()
    {
        return 'javascript:;';
    }

}