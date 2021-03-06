<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\SubSubCategory;
use App\Models\Brand;
use App\Models\Product;
use App\Models\MultiImg;
use Carbon\Carbon;
use Image;


class ProductController extends Controller
{
    public function ProductView(){
        $brands = Brand::Latest()->get();
        $categories = Category::Latest()->get();
        $subcategories = Subcategory::Latest()->get();
        $subsubcategories = SubSubCategory::Latest()->get();
        $products = Product::Latest()->get();
        
        return view('backend.pages.product.product-view', compact('brands','categories','products'));
    }

    public function ProductStore(Request $request){

        $image = $request->file('product_thambnail');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->resize(917,1000)->save('upload/products/thambnail/'.$name_gen);
    	$save_url = 'upload/products/thambnail/'.$name_gen;

        $product_id = Product::insertGetId([
      	'brand_id' => $request->brand_id,
      	'category_id' => $request->category_id,
      	'subcategory_id' => $request->subcategory_id,
      	'subsubcategory_id' => $request->subsubcategory_id,
      	'product_name_en' => $request->product_name_en,
      	'product_name_ban' => $request->product_name_ban,
      	'product_slug_en' =>  strtolower(str_replace(' ', '-', $request->product_name_en)),
      	'product_slug_ban' => str_replace(' ', '-', $request->product_name_ban),
      	'product_code' => $request->product_code,

      	'product_qty' => $request->product_qty,
      	'product_tags_en' => $request->product_tags_en,
      	'product_tags_ban' => $request->product_tags_ban,
      	'product_size_en' => $request->product_size_en,
      	'product_size_ban' => $request->product_size_ban,
      	'product_color_en' => $request->product_color_en,
      	'product_color_ban' => $request->product_color_ban,

        'buying_price' => $request->buying_price,
      	'selling_price' => $request->selling_price,
      	'discount_price' => $request->discount_price,
      	'short_descp_en' => $request->short_descp_en,
      	'short_descp_ban' => $request->short_descp_ban,
      	'long_descp_en' => $request->long_descp_en,
      	'long_descp_ban' => $request->long_descp_ban,

      	'hot_deals' => $request->hot_deals,
      	'featured' => $request->featured,
      	'special_offer' => $request->special_offer,
      	'special_deals' => $request->special_deals,

      	'product_thambnail' => $save_url,
      	'status' => 1,
      	'created_at' => Carbon::now(),      	 
      ]);

      $images = $request->file('multi_img');
      foreach ($images as $img) {
      	$make_name = hexdec(uniqid()).'.'.$img->getClientOriginalExtension();
    	Image::make($img)->resize(917,1000)->save('upload/products/multi-image/'.$make_name);
    	$uploadPath = 'upload/products/multi-image/'.$make_name;

       }
    	MultiImg::insert([

    		'product_id' => $product_id,
    		'photo_name' => $uploadPath,
    		'created_at' => Carbon::now(), 

    	]);

        $notification = array(
			'message' => 'Product Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('product.view')->with($notification);
    }

    public function ProductEdit($id){
        $brands = Brand::Latest()->get();
        $category = Category::Latest()->get();
        $subcategory = Subcategory::Latest()->get();
        $subsubcategory = SubSubCategory::Latest()->get();
        $product = Product::findOrFail($id);

        return view('backend.pages.product.edit-product', compact('brands','category','subcategory','subsubcategory','product'));
    }
    



}
