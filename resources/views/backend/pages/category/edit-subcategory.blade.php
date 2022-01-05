@extends('backend.master')

@section('title')
   Admin | Edit SubCategory
@endsection

@section('content')
<!-- Page Content -->
    <div class="content container-fluid">				
                <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col-sm-8">
                            <h3 class="page-title">Edit SubCategory</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                <li class="breadcrumb-item active">Edit SubCategory</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /Page Header -->
                
                <div class="row">
                    <div class="col-md-12">
                    <form method="POST" action="{{route('subsubcategory.update')}}" enctype="multipart/form-data">
           			 @csrf
                        <input type="hidden" name="id" value="{{$subcategory->id}}" >
                        <div class="col-sm-8">
                            <div class="form-group">
								<label class="col-form-label">Select Category<span class="text-danger">*</span></label>
                                <select name="category_id" class="select select2-hidden-accessible" data-select2-id="7" tabindex="-1" aria-hidden="true">	
                                        <option value="" >Pls Select Category</option>
                                            @foreach($categories as $category)
                                        <option value="{{$category->id}}" {{$category->id == $subcategory->category_id?'selected':''}}> {{$category->category_name_en}} </option>     
                                            @endforeach
                                </select>
								@error('category_name_en')
								 <span class="text-danger">{{$message}}</span>
								@enderror
							</div>
						</div>
						
                        <div class="col-sm-8">
										<div class="form-group">
												<label class="col-form-label">SubCategory Name (Eng):<span class="text-danger">*</span></label>
												<input class="form-control" name="subcategory_name_en" value="{{$subcategory->subcategory_name_en}}">
												@error('brand_name_ban')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
						</div>
										<div class="col-sm-8">
										<div class="form-group">
												<label class="col-form-label">Sub-Category Name (Ban)<span class="text-danger">*</span></label>
												<input class="form-control" name="subcategory_name_ban" value="{{$subcategory->subcategory_name_ban}}">
												@error('subcategory_name_en')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
						</div>
					</div>
				<div class="submit-section">
                <input type="submit" value="Update" class="btn btn-primary submit-btn">
                </div>
            <!-- /Page Content -->
            @endsection