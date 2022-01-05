<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubSubCategory extends Model
{
    use HasFactory;
    protected $fillable = [
        'category_id',
        'subcategory_id',
        'subsubcategory_name_en',
        'subsubcategory_name_ban',
        'subsubcategory_slug_en',
        'subsubcategory_slug_en',
    ];

    public function categoryRelation(){
        return $this->belongsTo(Category::class,'category_id','id');
    }

    public function SubcategoryRelation(){
        return $this->belongsTo(Subcategory::class,'subcategory_id','id');
    }

}
