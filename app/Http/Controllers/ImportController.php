<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PhpOffice\PhpSpreadsheet\IOFactory;
use App\Models\Excel;
use Illuminate\Support\Facades\Log;

class ImportController extends Controller
{
    public function import(Request $request)
    {
        Log::info('Import function called.');

        // Validate the uploaded file
        $request->validate([
            'file' => 'required|mimes:xlsx',
        ]);

        Log::info('File validation passed.');

        // Retrieve the file from the request
        $file = $request->file('file');

        try {
            Log::info('Attempting to load Excel file.');

            $spreadsheet = IOFactory::load($file->getRealPath());
            $sheet = $spreadsheet->getActiveSheet();
            $rows = $sheet->toArray();

            Log::info('Excel file loaded successfully.');
            
        } catch (\Exception $e) {
            // echo('done');
            Log::error('Error loading file: ' . $e->getMessage());
            return redirect()->back()->withErrors('Error loading file: ' . $e->getMessage());
        }

        // Insert data into the database
        foreach ($rows as $index => $row) {
            try {
                // Validate and convert data
                $schemeCode = $row[0] ?? null;
                $schemeName = $row[1] ?? null;
                $centralStateScheme = $row[2] ?? null;
                $finYear = isset($row[3]) && is_numeric($row[3]) ? (int)$row[3] : null;
                $stateDisbursement = isset($row[4]) && is_numeric($row[4]) ? (float)$row[4] : null;
                $centralDisbursement = isset($row[5]) && is_numeric($row[5]) ? (float)$row[5] : null;
                $totalDisbursement = isset($row[6]) && is_numeric($row[6]) ? (float)$row[6] : null;

                // Check for required data
                if (is_null($schemeCode) || is_null($schemeName) || is_null($centralStateScheme) || is_null($finYear)) {
                    Log::error("Row $index skipped due to missing required data: " . json_encode($row));
                    continue; // Skip this row
                }

                // Insert the data into the database
                Excel::insert([
                    'scheme_code' => $schemeCode,
                    'scheme_name' => $schemeName,
                    'central_state_scheme' => $centralStateScheme,
                    'fin_year' => $finYear,
                    'state_disbursement' => $stateDisbursement,
                    'central_disbursement' => $centralDisbursement,
                    'total_disbursement' => $totalDisbursement,
                ]);

                Log::info("Row $index inserted successfully.");
            } catch (\Exception $e) {
                // echo('aaaaaaaaaaaaaa');
                Log::error("Error inserting row $index: " . $e->getMessage());
            }
        }
        // echo('Successfully');

        Log::info('All rows processed.');
        return redirect()->route('import')->with('success', 'Data imported successfully.');
    }
}









// namespace App\Http\Controllers;

// use Illuminate\Http\Request;
// use PhpOffice\PhpSpreadsheet\IOFactory;
// use App\Models\Excel;
// use Illuminate\Support\Facades\Log;


// class ImportController extends Controller
// {
//     public function import(Request $request)
//     {
//         Log::info('Import function called.');

//         $request->validate([
//             'file' => 'required|mimes:xlsx',
//         ]);

//         Log::info('File validation passed.');

//         // Retrieve file from request
//         $file = $request->file('file');

//         $spreadsheet = IOFactory::load($file->getRealPath());
//         $sheet = $spreadsheet->getActiveSheet();
//         $rows = $sheet->toArray();

//         // Insert data into database
//         foreach ($rows as $row) {
//             Excel::insert([
//                 'scheme_code' => $row[0],
//                 'scheme_name' => $row[1],
//                 'central_state_scheme' => $row[2],
//                 'fin_year' => $row[3],
//                 'state_disbursement' => $row[4],
//                 'central_disbursement' => $row[5],
//                 'total_disbursement' => $row[6],
//             ]);
//         }

//         return redirect()->back()->with('success', 'Data imported successfully.');
//     }
// }
