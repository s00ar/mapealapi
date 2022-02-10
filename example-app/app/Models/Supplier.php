<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $table = 'suppliers';
    protected $primaryKey = 'id';
    protected $fillable = [
        'name', 
        'email', 
        'phone', 
        'address', 
        'city', 
        'country'
    ];
    public function articles()
    {/* 
        return $this->belongsToMany('App\Models\Article'); */
        
        return $this->belongsToMany(Article::class, 'article_supplier', 'supplier_id' /* de supplier */, 'article_id' /* de article */);

    }
/*     public static function getAllSuppliers()
    {
        return self->all();
    }  */
}
