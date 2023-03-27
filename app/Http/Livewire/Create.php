<?php

namespace App\Http\Livewire;

use App\Models\Classes;
use App\Models\Section;
use App\Models\Students;
use Livewire\Component;

class Create extends Component
{
    public $name = "", $email = "", $phone_number = "", $address = "";
    public $sections = [];
    public $selectClass = null, $section_id = null;

    public function render()
    {
        return view('livewire.create', [
            'classes' => Classes::all(),
        ]);
    }

    public function updatedselectClass($value)
    {
        $this->sections = Section::where('class_id', $value)->get();
        $this->reset('section_id');
    }

    //Dengan Menggunakan Modal
    public function createStudent()
    {
        Students::create([
            'name' => $this->name,
            'email' => $this->email,
            'phone_number' => $this->phone_number,
            'address' => $this->address,
            'class_id' => $this->selectClass,
            'section_id' => $this->section_id,
        ]);

        $studentLast = Students::latest()->first();
        // return redirect()->to('/')->with('success', 'data berhasil disimpan');
        // turbolinks . visit('/');
        $this->emit('showModal', $studentLast);
        // return redirect(route('home'))->with('success', 'data berhasil disimpan');
    }
}
