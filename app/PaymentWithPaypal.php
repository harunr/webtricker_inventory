<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaymentWithPaypal extends Model
{
    protected $table = 'payment_with_paypal';
    protected $fillable =[
        "mobile_number", "transaction_id"
    ];
}
