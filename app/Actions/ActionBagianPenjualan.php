<?php

namespace App\Actions;

use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Actions\AbstractAction;

class ActionBagianPenjualan extends AbstractAction
{
    public function getTitle()
    {
        return __('');
    }

    public function getIcon()
    {
        return 'voyager-edit';
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
                'data-pt-title'=>"Fungsi tombol ini untuk re akumulasi biaya bagian penjualan.",
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
        return $this->dataType->slug == 'laporan-bagian-penjualan';
    }

    public function getDefaultRoute()
    {
        if($this->data->ended_at == null){

            return route('voyager.'.$this->dataType->slug.'.edit', $this->data->{$this->data->getKeyName()});
        
        } else {

            $redirect = redirect()->back();
                return $redirect->with([
                    'message'    => __('Informasi transaksi penjualan, data yang telah diclosed. tidak bisa diedit maupun direkakulasi ulang.'),
                    'alert-type' => 'info',
                ]);
            
        }
    }
}