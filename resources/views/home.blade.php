@extends('layouts.user')

@section('title', 'Home')

@section('contents')

<header>
    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold text-gray-900">
            Home
        </h1>
    </div>
</header>
<hr />
<main>
    <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
        <div class="px-4 py-6 sm:px-0">
            <div class="border-4 border-dashed border-gray-200 rounded-lg h-96">
                <div>
                    <table>
                        <header>
                            <th>scheme_code</th>
                            <th>scheme_name</th>
                            <th>central_state_scheme</th>
                            <th>fin_year</th>
                            <th>state_disbursement</th>
                            <th>central_disbursement</th>
                            <th>total_disbursement</th>
                        </header>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
        
@endsection