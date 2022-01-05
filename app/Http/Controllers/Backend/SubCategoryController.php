<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\SubSubCategory;

class SubCategoryController extends Controller
{
    public function SubCategoryView(){
        $categories = Category::orderBy('category_name_en','ASC')->get();
        $subcategories = Subcategory::Latest()->get();
        return view('backend.pages.category.sub-category', compact('subcategories','categories'));
    }


    public function SubCategoryStore(Request $request){

        $request->validate(
            [
                'category_id' => 'required',
                'subcategory_name_en' => 'required',
                'subcategory_name_ban' => 'required',
                
            ],
            [                                   //Validation Message==============
                'category_id.required' => 'Category Must be Selected ',
                'subcategory_name_en.required' => 'SubCategory Name English Field is Required ',
                'subcategory_name_ban.required' => 'SubCategory Name Bangla Field is Required ',
            ]
        );
        
        Subcategory::insert([
                'category_id' => $request->category_id,
                'subcategory_name_en' => $request->subcategory_name_en,
                'subcategory_name_ban' => $request->subcategory_name_ban,
                'subcategory_slug_en' => strtolower(str_replace(' ','-',$request->subcategory_name_en)),
                'subcategory_slug_ban' => str_replace(' ','-',$request->subcategory_name_ban),
            ]);

            $notification = array(
                'message' => 'SubCategory Inserted Successfully',
                'alert-type' => 'success'
            );

        return redirect()->back()->with($notification);
    }   //End Method==========



    //Edit Method======================================
    public function SubCategoryEdit($id){
        $categories = Category::orderBy('category_name_en','ASC')->get();
        $subcategory = Subcategory::findOrFail($id);
        return view('backend.pages.category.edit-subcategory', compact('categories','subcategory'));
    }
    //Edit Method======================================


    public function SubCategoryUpdate(Request $request){
        $subcat_id = $request->id;

        Subcategory::findOrFail( $subcat_id)->update([
            'category_id' => $request->category_id,
            'subcategory_name_en' => $request->subcategory_name_en,
            'subcategory_name_ban' => $request->subcategory_name_ban,
            'subcategory_slug_en' => strtolower(str_replace(' ','-',$request->subcategory_name_en)),
            'subcategory_slug_ban' => str_replace(' ','-',$request->subcategory_name_ban),
        ]);

        $notification = array(
            'message' => 'SubCategory Updated Successfully',
            'alert-type' => 'info'
        );

    return redirect()->route('subcategory.view')->with($notification);
    }


    //Sub Category Delete Starts========================================
public function SubCategoryDelete($id){

    Subcategory::FindOrFail($id)->delete();
       
    $notification = array(
            'message' => 'SubCategory Deleted Success',
            'alert-type' => 'info'
        );
        return redirect()->back()->with($notification);
}
 //Sub Category Delete Ends========================================

 /////////////// That for SUB->SUBCATEGORY ////////////////
 public function SubSubCategoryView(){
    $categories = Category::orderBy('category_name_en','ASC')->get();
       $subsubcategory = SubSubCategory::latest()->get();
       return view('backend.pages.category.sub-sub-category',compact('subsubcategory','categories'));
    }

/// Select category wise Subcategory
public function GetSubCategory($category_id){
    $subcat = Subcategory::where('category_id',$category_id)->orderBy('subcategory_name_en','ASC')->get();
    return json_encode($subcat);
}

/// Select Subcategory wise Sub-Subcategory
public function GetSubSubCategory($subcategory_id){
    $subsubcat = SubSubCategory::where('subcategory_id',$subcategory_id)->orderBy('subsubcategory_name_en','ASC')->get();
    return json_encode($subsubcat);
}


// Store Sub-Sub Category===================
public function StoreSubSubCategory(Request $request){

    $request->validate(
        [
            'category_id' => 'required',
            'subcategory_id' => 'required',
            'subsubcategory_name_en' => 'required',
            'subsubcategory_name_ban' => 'required',
            
        ],
        [                                   //Validation Message==============
            'category_id.required' => 'Category Must be Selected ',
            'subcategory_id.required' => 'Sub-Category Must be Selected ',
            'subsubcategory_name_en.required' => 'Sub-SubCategory Name English Field is Required ',
            'subsubcategory_name_ban.required' => 'Sub-SubCategory Name Bangla Field is Required ',
        ]
    );

    SubSubCategory::insert([
       'category_id' => $request->category_id,
       'subcategory_id' => $request->subcategory_id,
       'subsubcategory_name_en' => $request->subsubcategory_name_en,
       'subsubcategory_name_ban' => $request->subsubcategory_name_ban,
       'subsubcategory_slug_en' => strtolower(str_replace(' ','-',$request->subsubcategory_name_en)),
       'subsubcategory_slug_ban' => str_replace(' ','-',$request->subsubcategory_name_ban),
    ]);

    $notification = array(
        'message' => 'Sub-SubCategory Inserted Successfully',
        'alert-type' => 'success'
    );
    return redirect()->back()->with($notification);
// return redirect()->route('subsubcategory.view')->with($notification);
}
// Store Sub-Sub Category End===================

public function SubSubCategoryEdit($id){
    $categories = Category::orderBy('category_name_en','ASC')->get();
    $subcategories = SubCategory::orderBy('subcategory_name_en','ASC')->get();
    $subsubcategories = SubSubCategory::findOrFail($id);
    return view('backend.pages.category.edit-sub-subcategory',compact('categories','subcategories','subsubcategories'));
}

//Sub-SubCategory Update Starts=================
public function SubSubCategoryUpdate(Request $request){
    $subsubcat_id = $request->id;
    
    SubSubCategory::findOrFail( $subsubcat_id)->update([
        'category_id' => $request->category_id,
       'subcategory_id' => $request->subcategory_id,
       'subsubcategory_name_en' => $request->subsubcategory_name_en,
       'subsubcategory_name_ban' => $request->subsubcategory_name_ban,
       'subsubcategory_slug_en' => strtolower(str_replace(' ','-',$request->subsubcategory_name_en)),
       'subsubcategory_slug_ban' => str_replace(' ','-',$request->subsubcategory_name_ban),
    ]);

    $notification = array(
        'message' => 'Sub-SubCategory Updated Successfully',
        'alert-type' => 'info'
    );
    return redirect()->route('subsubcategory.view')->with($notification);
}
//Sub-SubCategory Update Ends=================

 //Sub Sub-Category Delete Starts========================================
 public function SubSubCategoryDelete($id){

    SubSubCategory::FindOrFail($id)->delete();
       
    $notification = array(
            'message' => 'Sub-SubCategory Deleted Success',
            'alert-type' => 'info'
        );
        return redirect()->back()->with($notification);
}
 //Sub Sub-Category Delete Ends========================================



}


