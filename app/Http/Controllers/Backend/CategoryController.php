<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Category;
use Image;

class CategoryController extends Controller
{
    public function CategoryView(){
        $categories = Category::Latest()->get();

        return view('backend.pages.category.category', compact('categories'));
    }


    public function CategoryStore(Request $request){

        $request->validate(
            [
                'category_name_en' => 'required|unique:categories|max:100',
                'category_name_ban' => 'required|unique:categories|max:150',
                
            ],
            [                                   //Validation Message==============
                'category_name_en.required' => 'Category Name English Field is Required ',
                'category_name_ban.required' => 'Category Name Bangla Field is Required ',
            ]
        );
        

        $image = $request->file('category_icon');
        $name = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(300,300)->save('upload/category/'.$name);
        $save_url = 'upload/category/'.$name;

        Category::insert([
                'category_name_en' => $request->category_name_en,
                'category_name_ban' => $request->category_name_ban,
                'category_slug_en' => strtolower(str_replace(' ','-',$request->category_name_en)),
                'category_slug_ban' => str_replace(' ','-',$request->category_name_ban),
                'category_icon' => $save_url,
            ]);

            $notification = array(
                'message' => 'Category Inserted Successfully',
                'alert-type' => 'success'
            );

        return redirect()->back()->with($notification);
    }   //End Method==========



    //Edit Method======================================
    public function CategoryEdit($id){
        $category = Category::findOrFail($id);
        return view('backend.pages.category.edit-category', compact('category'));
    }
    //Edit Method======================================


    //Category Update Starts==============================
    public function CategoryUpdate(Request $request){
        $category_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('category_icon')) {
            unlink ($old_img);
            $image = $request->file('category_icon');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(300,300)->save('upload/category/'.$name_gen);
            $save_url = 'upload/category/'.$name_gen;

            Category::findOrFail($category_id)->update([
                    'category_name_en' => $request->category_name_en,
                    'category_name_ban' => $request->category_name_ban,
                    'category_slug_en' => strtolower(str_replace(' ','-',$request->category_name_en)),
                    'category_slug_ban' => str_replace(' ','-',$request->category_name_ban),
                    'category_image' => $save_url,
                ]);

                $notification = array(
                    'message' => 'Category Updated Successfully',
                    'alert-type' => 'info'
                );
        return redirect()->route('category.view')->with($notification);
        }
        else{
            Category::findOrFail($category_id)->update([
                    'category_name_en' => $request->category_name_en,
                    'category_name_ban' => $request->category_name_ban,
                    'category_slug_en' => strtolower(str_replace(' ','-',$request->category_name_en)),
                    'category_slug_ban' => str_replace(' ','-',$request->category_name_ban),
                ]);

                $notification = array(
                    'message' => 'Category Updated Successfully without Image',
                    'alert-type' => 'info'
                );
        return redirect()->route('category.view')->with($notification);
        }
    } 
    //Category Update Ends========================================



    //Category Delete Starts========================================
public function CategoryDelete($id){
    $category = Category::findOrFail($id);
    $icon = $category->category_icon;
    unlink($icon);

    Category::FindOrFail($id)->delete();
        $notification = array(
            'message' => 'Category Deleted Success',
            'alert-type' => 'danger'
        );
        return redirect()->route('category.view')->with($notification);
}
 //Category Delete Ends========================================


}
