<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donation extends Model
{
    use HasFactory;

    protected $fillable = [
        'tenant_id',
        'order_id',
        'name',
        'email',
        'phone',
        'amount',
        'method',
        'status',
        'bank_reference',
        'midtrans_token',
        'midtrans_redirect_url',
        'meta',
    ];

    protected $casts = [
        'meta' => 'array',
        'amount' => 'decimal:2',
    ];
}

