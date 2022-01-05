@extends('backend.master')

@section('title')
   Admin | Edit Sub-SubCategory
@endsection

@section('content')
<!-- Page Content -->
    <div class="content container-fluid">				
                <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col-sm-8">
                            <h3 class="page-title">Edit Sub-SubCategory</h3>
                            
                        </div>
                    </div>
                </div>
                <!-- /Page Header -->
                
                <div class="row">
                    <div class="col-md-12">
                    <form method="POST" action="{{route('subsubcategory.update')}}" enctype="multipart/form-data">
           			 @csrf
                        <input type="hidden" name="id" value="{{ $subsubcategories->id }}">
                        <div class="col-sm-8">
                            <div class="form-group">
                                <h5>Category Select <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <select name="category_id" class="form-control"  >
                                    <option value="" selected="" disabled="">Select Category</option>
                                    @foreach($categories as $category)
                                    <option value="{{ $category->id }}" {{ $category->id == $subsubcategories->category_id ? 'selected':'' }} >{{ $category->category_name_en }}</option>	
                                    @endforeach
                                </select>
                                @error('category_id') 
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror 
                            </div>
                        </div>
						</div>

                        <div class="col-sm-8">
                        <div class="form-group">
                            <h5>SubCategory Select <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <select name="subcategory_id" class="form-control"  >
                                    <option value="" selected="" disabled="">Select SubCategory</option>

                                    @foreach($subcategories as $subsub)
                                    <option value="{{ $subsub->id }}" {{ $subsub->id == $subsubcategories->subcategory_id ? 'selected':'' }} >{{ $subsub->subcategory_name_en }}</option>	
                                    @endforeach
                                </select>
                                @error('subcategory_id') 
                            <span class="text-danger">{{ $message }}</span>
                            @enderror 
                            </div>
		                    </div>
                            </div>
                        
                        <div class="col-sm-8">
                        <div class="form-group">
                                <h5>Sub-SubCategory English <span class="text-danger">*</span></h5>
                                <div class="controls">
                                <input type="text" name="subsubcategory_name_en" class="form-control" value="{{ $subsubcategories->subsubcategory_name_en }}" >
                                @error('subsubcategory_name_en') 
                                    <span class="text-danger">{{ $message }}</span>
                                 @enderror 
                            </div>
                            </div>
                            </div>

                            <div class="col-sm-8">
                        <div class="form-group">
                                <h5>Sub-SubCategory Ban <span class="text-danger">*</span></h5>
                                <div class="controls">
                                <input type="text" name="subsubcategory_name_ban" class="form-control" value="{{ $subsubcategories->subsubcategory_name_ban }}" >
                                @error('subsubcategory_name_ban') 
                                    <span class="text-danger">{{ $message }}</span>
                                 @enderror 
                            </div>
                            </div>
                            </div>
                                              
                    
					</div>
				<div class="submit-section">
                <input type="submit" value="Update" class="btn btn-primary submit-btn">
                </div>
            <!-- /Page Content -->
            @endsection