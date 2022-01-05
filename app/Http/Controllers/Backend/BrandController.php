<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use Image;

class BrandController extends Controller
{
    public function BrandView(){
        $brands = Brand::Latest()->get();

        return view('backend.pages.brand.brand', compact('brands'));


    }


    public function BrandStore(Request $request){
        $request->validate(
            [
                'brand_name_en' => 'required|unique:brands|max:100',
                'brand_name_ban' => 'required|unique:brands|max:150',
                'brand_image' => 'required',
            ],
            [                                   //Validation Message==============
                'brand_name_en.required' => 'Brand Name Eng Field is Required ',
                'brand_name_ban.required' => 'Brand Name Ban Field is Required ',
                'brand_image.required' => 'Select Brand Image ',
            ]
    );
        $image = $request->file('brand_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(300,300)->save('upload/brand/'.$name_gen);
        $save_url = 'upload/brand/'.$name_gen;

        Brand::insert([
                'brand_name_en' => $request->brand_name_en,
                'brand_name_ban' => $request->brand_name_ban,
                'brand_slug_en' => strtolower(str_replace(' ','-',$request->brand_name_en)),
                'brand_slug_ban' => str_replace(' ','-',$request->brand_name_ban),
                'brand_image' => $save_url,
            ]);

            $notification = array(
                'message' => 'Brand Inserted Successfully',
                'alert-type' => 'success'
            );

        return redirect()->back()->with($notification);
    }   //End Method==========

    public function BrandEdit($id){
        $brand = Brand::findOrFail($id);
        return view('backend.pages.brand.edit-brand', compact('brand'));
    }


    public function BrandUpdate(Request $request){
        $brand_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('brand_image')) {
            unlink ($old_img);
            $image = $request->file('brand_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(300,300)->save('upload/brand/'.$name_gen);
            $save_url = 'upload/brand/'.$name_gen;

            Brand::findOrFail($brand_id)->update([
                    'brand_name_en' => $request->brand_name_en,
                    'brand_name_ban' => $request->brand_name_ban,
                    'brand_slug_en' => strtolower(str_replace(' ','-',$request->brand_name_en)),
                    'brand_slug_ban' => str_replace(' ','-',$request->brand_name_ban),
                    'brand_image' => $save_url,
                ]);

                $notification = array(
                    'message' => 'Brand Updated Successfully',
                    'alert-type' => 'info'
                );
        return redirect()->route('brand.view')->with($notification);
        }
        else{
            Brand::findOrFail($brand_id)->update([
                    'brand_name_en' => $request->brand_name_en,
                    'brand_name_ban' => $request->brand_name_ban,
                    'brand_slug_en' => strtolower(str_replace(' ','-',$request->brand_name_en)),
                    'brand_slug_ban' => str_replace(' ','-',$request->brand_name_ban),
                ]);

                $notification = array(
                    'message' => 'Brand Updated Successfully without Image',
                    'alert-type' => 'info'
                );
        return redirect()->route('brand.view')->with($notification);
        }
    } //Brand Update End


     //Brand Delete Starts-------
     public function BrandDelete($id){
        
        $brand = Brand::findOrFail($id);
        $img = $brand->brand_image;
        unlink($img);

        Brand::findOrFail($id)->delete();
             $notification = array(
                        'message' => 'Brand Deleted Successfully',
                        'alert-type' => 'info'
                    );
            return redirect()->route('brand.view')->with($notification);
            }
            //Brand Delete End

}  
