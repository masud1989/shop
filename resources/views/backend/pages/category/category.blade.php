
@extends('backend.master')

@section('title')
   Admin | Category
@endsection

@section('content')
<div class="content container-fluid">
	<div class="page-header">
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">Category Management</h3>
							</div>
							<div class="col-auto float-right ml-auto">
								<a href="training.html#" class="btn add-btn" data-toggle="modal" data-target="#add_training"><i class="fa fa-plus"></i> Add New </a>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table mb-0 datatable">
									<thead>
									<tr>
										<th>Sl</th>
										<th>Icon</th>
										<th>Name (Eng)</th>
										<th>Name (Ban)</th>
										<th>Slug (Eng)</th>
										<th>Slug (Bng)</th>
										<th>Action</th>
									</tr>
									</thead>
									<tbody>
										@php
								            $no=1;
							            @endphp
							@foreach($categories as $item)
								<tr>
									<td>{{$no++}}</td>
									<td><img src="{{asset($item->category_icon)}}" style="width:70px; height: 40px;"></td>
									<td>{{$item->category_name_en}}</td>
									<td>{{$item->category_name_ban}}</td>
									<td>{{$item->category_slug_en}}</td>
									<td>{{$item->category_slug_ban}}</td>
									<td>
										<a href="{{route('category.edit',$item->id)}}" class="btn btn-info" title="Edit" > <i class="fa fa-edit"></i></a>
										<a href="{{route('category.delete',$item->id)}}" class="btn btn-danger" title="Delete" id="delete"> <i class="fa fa-trash"></i></a>
									</td>
								</tr>
							@endforeach
									</tbody>
								</table>
							</div>
						</div>
					</div>
                </div>

							<!------------ Add Modal----------------->
							<div id="add_training" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Add New Category</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>

							<div class="modal-body">
							<form method="POST" action="{{route('category.store')}}" enctype="multipart/form-data">
           					 @csrf
									<div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Category Name (Eng):<span class="text-danger">*</span></label>
												<input class="form-control" name="category_name_en">
												@error('category_name_en')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>
										<div class="col-sm-12">
										<div class="form-group">
												<label class="col-form-label">Category Name (Ban):<span class="text-danger">*</span></label>
												<input class="form-control" name="category_name_ban">
												@error('category_name_ban')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>
										<div class="col-sm-12">
										<div class="form-group">
								<h5>Category Image<span class="text-danger">*</span></h5>							
								<input type="file" class="form-control" name="category_icon">
								@error('category_image')
									<span class="text-danger">{{$message}}</span>
								@enderror
							</div>
						</div>
					</div>
				<div class="submit-section">
										<!-- <button class="btn btn-primary submit-btn">Submit</button> -->
										<input type="submit" value="Add Category" class="btn btn-primary submit-btn">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Add Modal-->
</div>
@endsection