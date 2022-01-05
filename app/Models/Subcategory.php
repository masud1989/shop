<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    use HasFactory;
    protected $fillable = [
        'category_id',
        'subcategory_name_en',
        'subcategory_name_ban',
        'subcategory_slug_en',
        'subcategory_slug_en',
    ];

    public function categoryRelation(){
        return $this->belongsTo(Category::class,'category_id','id');
    }
}
