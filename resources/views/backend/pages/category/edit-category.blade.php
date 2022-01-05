@extends('backend.master')

@section('title')
   Admin | Edit Category
@endsection

@section('content')
<!-- Page Content -->
    <div class="content container-fluid">				
                <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col-sm-8">
                            <h3 class="page-title">Edit Category</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                <li class="breadcrumb-item active">Edit Category</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /Page Header -->
                
                <div class="row">
                    <div class="col-md-12">
                    <form method="POST" action="{{route('category.update')}}" enctype="multipart/form-data">
           			 @csrf

                        <input type="hidden" name="id" value="{{$category->id}}">
            			<input type="hidden" name="old_image" value="{{$category->category_icon}}">
                        <div class="col-sm-8">
											<div class="form-group">
												<label class="col-form-label">Category Name (Eng):<span class="text-danger">*</span></label>
												<input class="form-control" name="category_name_en" value="{{$category->category_name_en}}">
												@error('category_name_en')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>
										<div class="col-sm-8">
										<div class="form-group">
												<label class="col-form-label">Category Name (Ban):<span class="text-danger">*</span></label>
												<input class="form-control" name="category_name_ban" value="{{$category->category_name_ban}}">
												@error('brand_name_ban')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>
										<div class="col-sm-8">
										<div class="form-group">
								<h5>Category Image<span class="text-danger">*</span></h5>							
								<input type="file" class="form-control" name="category_icon" value="{{$category->category_icon}}">
								@error('category_icon')
									<span class="text-danger">{{$message}}</span>
								@enderror
							</div>
						</div>
					</div>
				<div class="submit-section">
										<!-- <button class="btn btn-primary submit-btn">Submit</button> -->
										<input type="submit" value="Save Category" class="btn btn-primary submit-btn">
									</div>
								</form>
                    </div>
                </div>
            </div>
            <!-- /Page Content -->
            @endsection