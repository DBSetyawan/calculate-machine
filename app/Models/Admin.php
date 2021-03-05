<?php

namespace App\Models;

use Carbon\Carbon;
use TCG\Voyager\Traits\VoyagerUser;

class Admin extends \TCG\Voyager\Models\User
{
    use VoyagerUser;

    protected $guarded = [];

    protected $table = 'admins';

    public function getAvatarAttribute($value)
    {
        if (is_null($value)) {
            return config('voyager.user.default_avatar', 'users/default.png');
        }

        return $value;
    }

    public function setCreatedAtAttribute($value)
    {
        $this->attributes['created_at'] = Carbon::parse($value)->format('Y-m-d H:i:s');
    }
}