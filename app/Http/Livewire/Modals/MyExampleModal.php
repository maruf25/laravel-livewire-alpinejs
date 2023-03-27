<?php

namespace App\Http\Livewire\Modals;

use App\Models\Students;
use Livewire\Component;

class MyExampleModal extends Component
{
    public $data = [];
    public $show;

    protected $listeners = ['showModal' => 'showModal'];

    public function mount()
    {
        $this->data = Students::latest()->first();
        $this->show = false;
    }

    public function showModal($data)
    {
        $this->data = $data;

        $this->doShow();
    }

    public function doShow()
    {
        $this->show = true;
    }

    public function doClose()
    {
        $this->show = false;
    }

    public function doSomething()
    {
        // Do Something With Your Modal
        redirect(route('home'))->with('success', 'data berhasil disimpan');


        // Close Modal After Logic
        $this->doClose();
    }


    public function render()
    {
        return view('livewire.modals.my-example-modal');
    }
}
