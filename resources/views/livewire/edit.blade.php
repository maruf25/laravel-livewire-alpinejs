<div>
    <a href="/">Back</a>
    <h1>Edit</h1>
    <form wire:submit.prevent='updateData'>
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" name="name" id="name" wire:model='name'>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" wire:model="email">
        </div>
        <div class="mb-3">
            <label for="phoneNumber" class="form-label">Phone Number</label>
            <input type="phoneNumber" class="form-control" id="phoneNumber" wire:model="phone_number">
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="address" class="form-control" id="address" wire:model="address">
        </div>
        <div class="mb-3">
            <label for="selectedClass" class="text-nowrap me-2">Select Class</label>
            <select name="selectedClass" class="form-control form-control-sm" wire:model="selectClass">
                @foreach ($classes as $class)
                    <option value="{{ $class->id }}"> {{ $class->name }}</option>
                @endforeach
            </select>
        </div>
        {{-- @if ($selectClass) --}}
        <div class="mb-3">
            <label for="paginate" class="text-nowrap me-2 mb-0">Section</label>
            <select class="form-control form-control-sm" wire:model="selectSection">
                @foreach ($sections as $section)
                    <option value="{{ $section->id }}" selected>{{ $section->name }}</option>
                @endforeach
            </select>
        </div>
        {{-- @endif --}}
        <button type="submit" class="btn btn-primary">Update</button>
    </form>

</div>
