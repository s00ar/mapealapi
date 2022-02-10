<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'articles';
    protected $primaryKey = 'id';
    protected $fillable = [
        'name', 
        'category', 
        'price', 
        'stock_available', 
        'ean'
    ];
    public function suppliers(){
        return $this->belongsToMany(Supplier::class, 'article_supplier', 'article_id' /* id de articles */, 'supplier_id' /* id de supplier */);
    }
}
