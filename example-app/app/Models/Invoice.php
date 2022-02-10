<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $table = 'invoices';
    protected $primaryKey = 'id';
    protected $fillable = [
        
        'name',
        'price',
        'taxes',
        'total',
        'paid',
        'article_id',
        'client_id',
        ];
}
