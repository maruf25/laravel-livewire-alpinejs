<?php

namespace App\Http\Livewire;

use App\Models\Classes;
use App\Models\Section;
use App\Models\Students;
use Livewire\Component;
use Illuminate\Http\Request;

class Edit extends Component
{
    public $sections = [];
    public $selectClass = null, $selectSection = null;
    public $studentId, $name, $email, $phone_number, $address;

    public function mount($id)
    {
        $students = Students::find($id);
        // dd(Students::find($id));
        if ($students) {
            $this->studentId = $students->id;
            $this->name = $students->name;
            $this->email = $students->email;
            $this->phone_number = $students->phone_number;
            $this->address = $students->address;
            $this->selectClass = $students->class_id;
            $this->selectSection = $students->section_id;
        }

        if ($this->selectClass != '') {
            $this->sections = Section::where('class_id', $this->selectClass)->get();
        }

        // dd($students);
    }

    public function render()
    {
        return view('livewire.edit', [
            'classes' => Classes::all(),
        ]);
        // dd($this->students);
    }

    public function updatedselectClass($value)
    {
        $this->sections = Section::where('class_id', $value)->get();
        // $this->reset('selectSection');
    }

    public function updateData()
    {
        $students = Students::find($this->studentId);

        if ($students) {
            $students->update([
                'name' => $this->name,
                'email' => $this->email,
                'phone_number' => $this->phone_number,
                'address' => $this->address,
                'class_id' => $this->selectClass,
                'section_id' => $this->selectSection,
            ]);
        }

        return redirect(route('home'))->with('success', 'data berhasil diupdate');
    }
}
