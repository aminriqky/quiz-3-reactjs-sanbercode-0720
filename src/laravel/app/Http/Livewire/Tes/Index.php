<?php

namespace App\Http\Livewire\Tes;

use Livewire\Component;

use App\Te;

class Index extends Component
{
	public $message;

	protected $listeners = ['postAdded'];

    public function render()
    {
        return view('livewire.tes.index', [
        	'tes' => Te::all()
        ]);
    }

    public function postAdded()
    {
        
    }
}
