@extends('backend.master')

@section('title')
   Admin | Edit Brand
@endsection

@section('content')
<!-- Page Content -->
    <div class="content container-fluid">				
                <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col-sm-8">
                            <h3 class="page-title">Edit Brand</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                <li class="breadcrumb-item active">Edit Brand</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /Page Header -->
                
                <div class="row">
                    <div class="col-md-12">
                    <form method="POST" action="{{route('brand.update')}}" enctype="multipart/form-data">
           			 @csrf

                        <input type="hidden" name="id" value="{{$brand->id}}">
            			<input type="hidden" name="old_image" value="{{$brand->brand_image}}">
                        <div class="col-sm-8">
											<div class="form-group">
												<label class="col-form-label">Brand Name (Eng):<span class="text-danger">*</span></label>
												<input class="form-control" name="brand_name_en" value="{{$brand->brand_name_en}}">
												@error('brand_name_en')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>
										<div class="col-sm-8">
										<div class="form-group">
												<label class="col-form-label">Brand Name (Ban):<span class="text-danger">*</span></label>
												<input class="form-control" name="brand_name_ban" value="{{$brand->brand_name_ban}}">
												@error('brand_name_ban')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>
										<div class="col-sm-8">
										<div class="form-group">
								<h5>Brand Image<span class="text-danger">*</span></h5>							
								<input type="file" class="form-control" name="brand_image" value="">
								@error('brand_image')
									<span class="text-danger">{{$message}}</span>
								@enderror
							</div>
						</div>
					</div>
				<div class="submit-section">
										<!-- <button class="btn btn-primary submit-btn">Submit</button> -->
										<input type="submit" value="Save Brand" class="btn btn-primary submit-btn">
									</div>
								</form>
                    </div>
                </div>
            </div>
            <!-- /Page Content -->
            @endsection