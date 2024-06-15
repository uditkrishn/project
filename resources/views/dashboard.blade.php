@extends('layouts.app')

@section('UDIT KRISHN')
    
@section('contents')
    <div>
        <h1 class="font-bold text-2xl ml-3">Upload Excel File</h1>
        <form action="{{ route('import') }}" method="POST" enctype="multipart/form-data" class="ml-3">
            @csrf
            <div class="mb-4">
                <label for="file" class="block text-gray-700 text-sm font-bold mb-2">Choose Excel File</label>
                <input type="file" name="file" id="file" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
            </div>
            <div>
                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                    Upload
                </button>
            </div>
        </form>
    </div>
@endsection