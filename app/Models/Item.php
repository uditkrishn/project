<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;

    protected $table = 'excel_data';

    // Define the fields that can be mass-assigned
    protected $fillable = [
        'scheme_code',
        'scheme_name',
        'central_state_scheme',
        'fin_year',
        'state_disbursement',
        'central_disbursement',
        'total_disbursement',
    ];
}
