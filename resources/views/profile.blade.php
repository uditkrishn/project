{{-- @extends('layouts.app')

@section('title', 'Profile Settings')

@section('contents')

<hr />
<form action="" method="POST" enctype="multipart/form-data">
    <div>
        <label class="label">
            <span class="text-base label-text">Name</span>
        </label>
        <input type="text" name="name" value="{{ auth()->user()->name() }}" class="w-full input input-bordered" />
    </div>
    <div>
        <label class="label">
            <span class="text-base label-text">Email</span>
        </label>
        <input type="email" name="email" value="{{ auth()->user()->email() }}" class="w-full input input-bordered" />
    </div>
    <div class="mt-6">
        <button type="submit" class="btn btn-block">Save Profile</button>
    </div>
</form>
    
@endsection --}}

@extends('layouts.app')
 
@section('title', 'Profile Settings')
 
@section('contents')
<hr />
<form method="POST" enctype="multipart/form-data" action="">
    <div>
        <label class="label">
            <span class="text-base label-text">Name</span>
        </label>
        <input name="name" type="text" value="{{ auth()->user()->name }}" class="w-full input input-bordered" />
    </div>
    <div>
        <label class="label">
            <span class="text-base label-text">Email</span>
        </label>
        <input name="email" type="text" value="{{ auth()->user()->email }}" class="w-full input input-bordered" />
    </div>
    <div class="mt-6">
        <button type="submit" class="btn btn-block">Save Profile</button>
    </div>
</form>
@endsection