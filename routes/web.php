<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\SubCategoryController;
use App\Http\Controllers\FrontEnd\FrontEndController;
use App\Http\Controllers\Backend\ProductController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

//FrontEnd all Routes=============================================================
Route::prefix('')->group(function(){
    Route::get('/',[FrontEndController::class,'home'])->name('site.home');
});
//FrontEnd all Routes=============================================================

Route::group(['prefix'=> 'admin', 'middleware'=>['admin:admin']], function(){
	Route::get('/login', [AdminController::class, 'loginForm']);
	Route::post('/login',[AdminController::class, 'store'])->name('admin.login');
});




Route::middleware(['auth:sanctum,admin', 'verified'])->get('/admin/dashboard', function () {
    return view('backend.pages.home');
})->name('dashboard');



Route::middleware(['auth:sanctum,web', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('ddashboard');


Route::get('/logout',[AdminController::class, 'destroy'])->name('admin.logout');

//Admin all Brand Routes=============================================================
Route::prefix('brand')->group(function(){
    Route::get('/view',[BrandController::class, 'BrandView'])->name('brand.view');
    Route::post('/store',[BrandController::class, 'BrandStore'])->name('brand.store');
    Route::get('/edit/{id}',[BrandController::class, 'BrandEdit'])->name('brand.edit');
    Route::post('/update',[BrandController::class, 'BrandUpdate'])->name('brand.update');
    Route::get('/delete/{id}',[BrandController::class, 'BrandDelete'])->name('brand.delete');
});


//Admin all Category Routes=============================================================
Route::prefix('category')->group(function(){
    Route::get('/view',[CategoryController::class, 'CategoryView'])->name('category.view');
    Route::post('/store',[CategoryController::class, 'CategoryStore'])->name('category.store');
    Route::get('/edit/{id}',[CategoryController::class, 'CategoryEdit'])->name('category.edit');
    Route::post('/update',[CategoryController::class, 'CategoryUpdate'])->name('category.update');
    Route::get('/delete/{id}',[CategoryController::class, 'CategoryDelete'])->name('category.delete');
});


//Admin all SubCategory Routes=============================================================
Route::prefix('subcategory')->group(function(){
    Route::get('/view',[SubCategoryController::class, 'SubCategoryView'])->name('subcategory.view');
    Route::post('/store',[SubCategoryController::class, 'SubCategoryStore'])->name('subcategory.store');
    Route::get('/edit/{id}',[SubCategoryController::class, 'SubCategoryEdit'])->name('subcategory.edit');
    Route::post('/update',[SubCategoryController::class, 'SubCategoryUpdate'])->name('subcategory.update');
    Route::get('/delete/{id}',[SubCategoryController::class, 'SubCategoryDelete'])->name('subcategory.delete');


    Route::get('/sub/sub/view', [SubCategoryController::class, 'SubSubCategoryView'])->name('subsubcategory.view');



    Route::get('/subcategory/ajax/{category_id}', [SubCategoryController::class, 'GetSubCategory']);
    Route::get('/subsubcategory/ajax/{subcategory_id}', [SubCategoryController::class, 'GetSubSubCategory']);

    Route::post('/storeSubSub',[SubCategoryController::class, 'StoreSubSubCategory'])->name('subsubcategory.store');
    Route::get('/editSubSub/{id}',[SubCategoryController::class, 'SubSubCategoryEdit'])->name('subsubcategory.edit');
    Route::post('/updateSubSub',[SubCategoryController::class, 'SubSubCategoryUpdate'])->name('subsubcategory.update');
    Route::get('/deleteSubSub/{id}',[SubCategoryController::class, 'SubSubCategoryDelete'])->name('subsubcategory.delete');
});

//Admin Product Routes=========================================
Route::prefix('product')->group(function(){
    Route::get('/view',[ProductController::class, 'ProductView'])->name('product.view');
    Route::post('/store',[ProductController::class, 'ProductStore'])->name('product.store');


    Route::get('/edit/{id}',[ProductController::class, 'ProductEdit'])->name('product.edit');
    Route::post('/update',[ProductController::class, 'ProductUpdate'])->name('product.update');
    Route::get('/delete/{id}',[CategoryController::class, 'CategoryDelete'])->name('category.delete');
});
