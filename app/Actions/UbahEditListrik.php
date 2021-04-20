<?php

namespace App\Actions;

use App\Listrik;
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
    
    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'listrik';
    }

    public function getAttributes()
    {
        

        $checklistrik_ifclosed = Listrik::all()->toArray();
        // $checklistrik_ifopen = Listrik::whereNull('ended_at')->get();

        // dd($checklistrik_ifclosed);
        # code...
        // foreach($checklistrik_ifclosed as $readclose){
        // for ($i=0; $i < count([$checklistrik_ifclosed]); $i++) {    
        //     if($checklistrik_ifclosed[$i]['ended_at']){


                return [
                    'class' => 'btn btn-sm btn-primary pull-right edit protip',
                    'data-pt-title'=>"Fungsi tombol ini untuk merecalculate data.",
                    'data-pt-size'=>"small",
                    'data-pt-trigger'=>"hover",
                    'data-pt-gravity'=>"2",
                    'data-pt-scheme'=>"aqua",
                    'data-pt-animate'=>"rotateInDownLeft",
                    'data-pt-position'=>"corner-left-bottom",
                ];

        //     }
            
        //     else if(empty($checklistrik_ifclosed[$i]['ended_at'])){
                
        //         return [
        //             'class' => 'btn btn-sm btn-primary pull-right edit protip',
        //             'data-pt-title'=>"Fungsi tombol ini untuk merecalculate data.",
        //             'data-pt-size'=>"small",
        //             'data-pt-trigger'=>"hover",
        //             'data-pt-gravity'=>"2",
        //             'data-pt-scheme'=>"aqua",
        //             'data-pt-animate'=>"rotateInDownLeft",
        //             'data-pt-position'=>"corner-left-bottom",
        //         ];
        //     }
            
        // }

        // }

        // dd($fload);
        // if(Auth::user()->role->id == 3) {
        //     return [
        //         'class' => 'btn btn-sm btn-primary pull-right',
        //     ];
        // }
        //     else {

        //         return [
        //             'class' => 'btn hidden btn-sm btn-primary pull-right',
        //         ];

        // }
    }

    public function getDefaultRoute()
    {

        if($this->data->ended_at == null){

            return route('voyager.'.$this->dataType->slug.'.edit', $this->data->{$this->data->getKeyName()});
        
        } else {

            $redirect = redirect()->back();
                return $redirect->with([
                    'message'    => __('Informasi transaksi listrik, data yang telah diclosed. tidak bisa diedit maupun direkakulasi ulang.'),
                    'alert-type' => 'info',
                ]);
            
        }
    }

}