<?php

namespace App\Http\Livewire;

use App\Models\Classes;
use App\Models\Section;
use App\Models\Students;
use Livewire\Component;
use Livewire\WithPagination;


class Studentlist extends Component
{
    use WithPagination;
    public $paginationTheme = 'bootstrap';

    public $studentsInPage = [], $allStudents = [];
    public $sections = [];
    public $search = '';
    public $selectedClass = null, $selectedSections = null;

    public $paginate = 10;

    public function mount()
    {
        $this->allStudents = $this->studentsQuery->pluck('id')->toArray();
        $this->studentsInPage = $this->students->pluck('id')->toArray();
    }
    public function render()
    {
        return view('livewire.studentlist', [
            // 'students' => Students::with('class', 'section')->paginate($this->paginate),
            'students' => $this->students, // Computing property
            'classes' => Classes::all(),
        ]);
    }

    protected $listeners = ['deleteSingleRecord', 'deleteMultipleRecord',];

    public function updatedselectedclass($value)
    {
        $this->sections = Section::where('class_id', $value)->get();
        $this->reset('selectedSections');
    }

    public function getstudentsQueryProperty()
    {
        return Students::with('class', 'section')
            ->search(trim($this->search))
            ->when($this->selectedClass, function ($query) {
                return $query->where('class_id', $this->selectedClass);
            })
            ->when($this->selectedSections, function ($query) {
                return $query->where('section_id', $this->selectedSections);
            });
    }

    public function getStudentsProperty()
    {
        return $this->studentsQuery->paginate($this->paginate);
    }

    public function deleteSingleRecord($id)
    {
        Students::find($id)->delete();
        session()->flash('message', 'Student Deleted Successfully');
    }

    public function deleteMultipleRecord(array $checked)
    {
        Students::whereIn('id', $checked)->delete();
        session()->flash('message', 'Students deleted successfully');
    }

    public function updatedPaginate()
    {
        $this->studentsInPage = $this->students->pluck('id')->toArray();
    }

    public function storeShow($data)
    {
        // Mengirim Data Ke database

        // Melakukan Show
        $this->emit('showModal', $data);
    }
}
