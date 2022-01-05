subcategory
@extends('backend.master')

@section('title')
   Admin | Sub-SubCategory
@endsection

@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="content container-fluid">
	<div class="page-header">
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">Sub-SubCategory Management</h3>
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
                                        <th>Category</th>
										<th>SubCategory</th>
										<th>Name (Eng)</th>
                                        <th>Name (Ban)</th>
										<th>Slug (Eng)</th>
                                        <th>Slug (Ban)</th>
										<th>Action</th>
									</tr>
									</thead>
									<tbody>
										@php
								            $no=1;
							            @endphp
							@foreach($subsubcategory as $item)
								<tr>
									<td>{{$no++}}</td>
									<td>{{$item['categoryRelation']['category_name_en']}}</td>
                                    <td>{{$item['SubcategoryRelation']['subcategory_name_en']}}</td>
									<td>{{$item->subsubcategory_name_en}}</td>
									<td>{{$item->subsubcategory_name_ban}}</td>
									<td>{{$item->subsubcategory_slug_en}}</td>
									<td>{{$item->subsubcategory_slug_ban}}</td>
									<td>
										<a href="{{route('subsubcategory.edit',$item->id)}}" class="btn btn-info" title="Edit" > <i class="fa fa-edit"></i></a>
										<a href="{{route('subsubcategory.delete',$item->id)}}" class="btn btn-danger" title="Delete" id="delete"> <i class="fa fa-trash"></i></a>
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
								<h5 class="modal-title">Add New Sub-SubCategory</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>

							<div class="modal-body">
							<form method="POST" action="{{route('subsubcategory.store')}}" enctype="multipart/form-data">
           					 @csrf
									<div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Select Category<span class="text-danger">*</span></label>
                                                <select name="category_id" class="form-control">	
                                                    <option value="" >Pls Select Category</option>
                                                    @foreach($categories as $category)
                                                    <option value="{{$category->id}}">{{$category->category_name_en}}</option>
                                                    @endforeach
                                                </select>
												@error('category_name_en')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>

                                        
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Select SubCategory<span class="text-danger">*</span></label>
                                                <select name="subcategory_id" class="form-control" >	
                    
                                                    <option value="" selected="" disabled="">Select SubCategory</option>
                                                
												</select>
												@error('subcategory_id')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>

										<div class="col-sm-12">
										    <div class="form-group">
												<label class="col-form-label">Sub Sub-Category Name (Eng)<span class="text-danger">*</span></label>
												<input class="form-control" name="subsubcategory_name_en">
												@error('subsubcategory_name_en')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>

                                        <div class="col-sm-12">
										    <div class="form-group">
												<label class="col-form-label">Sub Sub-Category Name (Ban)<span class="text-danger">*</span></label>
												<input class="form-control" name="subsubcategory_name_ban">
												@error('subsubcategory_name_ban')
													<span class="text-danger">{{$message}}</span>
												@enderror
											</div>
										</div>

					</div>
				<div class="submit-section">
										<!-- <button class="btn btn-primary submit-btn">Submit</button> -->
										<input type="submit" value="Add New" class="btn btn-primary submit-btn">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
                </div>
				<!-- /Add Modal-->
</div>

<script type="text/javascript">
      $(document).ready(function() {
        $('select[name="category_id"]').on('change', function(){
            var category_id = $(this).val();
            if(category_id) {
                $.ajax({
                    url: "{{  url('subcategory/subcategory/ajax') }}/"+category_id,
                    type:"GET",
                    dataType:"json",
                    success:function(data) {
                       var d =$('select[name="subcategory_id"]').empty();
                          $.each(data, function(key, value){
                              $('select[name="subcategory_id"]').append('<option value="'+ value.id +'">' + value.subcategory_name_en + '</option>');
                          });
                    },
                });
            } else {
                alert('danger');
            }
        });
    });
    </script>
@endsection