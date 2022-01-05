subcategory
@extends('backend.master')

@section('title')
Admin | Product
@endsection

@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="content container-fluid">
    <div class="page-header">
        <div class="row align-items-center">
            <div class="col">
                <h3 class="page-title">Product Management</h3>
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
                            <th>Image</th>
                            <th>Code</th>
                            <th>Name (Eng)</th>
                            <th>Name (Ban)</th>
                            <th>Quantity</th>
                            <th>Buying Price</th>
                            <th>Selling Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                        $no=1;
                        @endphp
                        <!-- froeach   -->
                        @foreach($products as $item)
                        <tr>
                            <td>{{$no++}}.</td>
                            <td><img src="{{asset($item->product_thambnail)}}" style="width:70px; height: 40px;"></td>
                            <td>{{$item->product_code}}</td>
                            <td>{{$item->product_name_en}}</td>
                            <td>{{$item->product_name_ban}}</td>
                            <td>{{$item->product_qty}}</td>
                            <td>{{$item->buying_price}}</td>
                            <td>{{$item->selling_price}}</td>
                            <td>
                                <a href="{{route('product.edit',$item->id)}}" class="btn btn-info" title="Edit" > <i class="fa fa-edit"></i></a>
                                <a href="#" class="btn btn-danger" title="Delete" id="delete"> <i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        @endforeach
                        <!-- froeach   -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!------------ Add Modal----------------->
<div id="add_training" class="modal custom-modal fade" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add New Product</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <form method="POST" action="{{route('product.store')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-12">	
                            <div class="row"> <!-- start 1st row  -->
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Brand Select <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <select name="brand_id" class="form-control"  >
                                                <option value="" selected="" disabled="" required="">Select Brand</option>
                                                @foreach($brands as $brand)
                                                <option value="{{ $brand->id }}">{{ $brand->brand_name_en }}</option>	
                                                @endforeach
                                            </select>
                                            @error('brand_id') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror 
                                        </div>
                                    </div>

                                </div> <!-- end col md 4 -->
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Category Select <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <select name="category_id" class="form-control"  >
                                                <option value="" selected="" disabled="" required="">Select Category</option>
                                                @foreach($categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->category_name_en }}</option>	
                                                @endforeach
                                            </select>
                                            @error('category_id') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror 
                                        </div>
                                    </div>

                                </div> <!-- end col md 4 -->
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>SubCategory Select <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <select name="subcategory_id" class="form-control"  >
                                                <option value="" selected="" disabled="" required="">Select SubCategory</option>

                                            </select>
                                            @error('subcategory_id') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror 
                                        </div>
                                    </div>

                                </div> <!-- end col md 4 -->

                            </div> <!-- end 1st row  -->

                            <div class="row"> <!-- start 2nd row  -->
                                <div class="col-md-4">

                                    <div class="form-group">
                                        <h5>SubSubCategory Select <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <select name="subsubcategory_id" class="form-control"  >
                                                <option value="" selected="" disabled="" required="">Select SubSubCategory</option>

                                            </select>
                                            @error('subsubcategory_id') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror 
                                        </div>
                                    </div>

                                </div> <!-- end col md 4 -->

                                <div class="col-md-4">

                                    <div class="form-group">
                                        <h5>Product Name En <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_name_en" class="form-control" required="">
                                            @error('product_name_en') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                </div> <!-- end col md 4 -->


                                <div class="col-md-4">



                                    <div class="form-group">
                                        <h5>Product Name Ban <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_name_ban" class="form-control" required="">
                                            @error('product_name_ban') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> <!-- end col md 4 -->
                            </div> <!-- end 2nd row  -->

                            <div class="row"> <!-- start 3RD row  -->
                                <div class="col-md-4">

                                    <div class="form-group">
                                        <h5>Product Code <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_code" class="form-control" required="">
                                            @error('product_code') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> <!-- end col md 4 -->

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Product Quantity <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_qty" class="form-control" required="">
                                            @error('product_qty') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> <!-- end col md 4 -->

                                
                                
                                
                                
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Product Tags En <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_tags_en" class="form-control" value="Lorem,Ipsum,Amet" data-role="tagsinput" required="">
                                            @error('product_tags_en') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                </div> <!-- end col md 4 -->
                                
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Product Tags Bangla <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_tags_ban" class="form-control" value="Lorem,Ipsum,Amet" data-role="tagsinput" required="">
                                            @error('product_tags_ban') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                </div> 
                                                       
                                <div class="col-md-4">
                                <div class="form-group">
                                        <h5>Product Size English <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_size_en" class="form-control" required="">
                                            @error('product_size_en') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-4">
                                <div class="form-group">
                                        <h5>Product Size Bangla <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_size_ban" class="form-control" required="">
                                            @error('product_size_ban') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> 
                                
                                <div class="col-md-4">
                                <div class="form-group">
                                        <h5>Product Color Eng <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_color_en " class="form-control" >
                                            @error('product_color_en ') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-md-4">
                                <div class="form-group">
                                        <h5>Product Color Ban <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="product_color_ban " class="form-control" >
                                            @error('product_color_ban ') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>   
                            </div> <!-- end 3RD row  -->


                            <div class="row"> <!-- start 4th row  -->
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Buying Price <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="buying_price" class="form-control" required="">
                                            @error('buying_price') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> <!-- end col md 4 -->
                                
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Selling Price <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="selling_price" class="form-control" required="">
                                            @error('selling_price') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> 
                                
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <h5>Discount Price <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="discount_price" class="form-control" required="">
                                            @error('discount_price') 
                                            <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> 
                            </div> <!-- end 4th row  -->

                            
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Short Description Eng <span class="text-danger" >*</span></label>
                                        <textarea rows="2" class="form-control" placeholder="Enter Short Description Eng here" name="short_descp_en" required="">Description Eng</textarea>
                                    </div>
                                </div>
                                
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Short Description Bang <span class="text-danger">*</span></label>
                                         <textarea rows="2" class="form-control" placeholder="Enter Short Description Bang here" name="short_descp_ban" required="">Description Eng</textarea>
                                    </div>
                                </div>
                             </div>  
                            
                            
                           <!--    Row Starts====-->
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Long Description English <span class="text-danger">*</span></label>
                                        <textarea rows="4" class="form-control form-control summernote" placeholder="Enter your message here" name="long_descp_en" required=""></textarea>
                                    </div> 
                                </div>
                            
                                 <div class="col-sm-6">
                                     <div class="form-group">
                                         <label>Long Description Bangla <span class="text-danger">*</span></label>
                                         <textarea rows="4" class="form-control form-control summernote" placeholder="Enter your message here" name="long_descp_ban" required=""></textarea>
                                     </div>
                                 </div>
                             </div>
                               <!--    Row Ends====-->   
                                
                              <!--    Row Starts====-->
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label>Thumnail Image <span class="text-danger">*</span></label>
                                        <input type="file" name="product_thambnail" class="form-control" onChange="mainThamUrl(this)" required="" >
                                         @error('product_thambnail') 
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                       <img src="" id="mainThmb">   <!--  For Showing Image -->
                                    </div> 
                                </div>
                            
                                 <div class="col-sm-8">
                                    <div class="form-group">
                                        <label>Multiple Image <span class="text-danger">*</span></label>
                                    
                                        <input type="file" name="multi_img[]" class="form-control" multiple="" id="multiImg" required="" >
                                         @error('multi_img') 
	                                        <span class="text-danger">{{ $message }}</span>
	                                     @enderror
                                         <div class="row" id="preview_img"></div>  <!--  For Showing Multiple Image -->
                                    </div> 
                                </div>
                                 </div>
                             </div>
                               <!--    Row Ends====-->  
                                  
                            <div class="table-responsive m-t-15">
                                <table class="table table-striped custom-table">
                                    <thead>
                                        <tr>
                                            <th>Product Area</th>
                                            <th class="text-center">Hot Deals</th>
                                            <th class="text-center">Featured</th>
                                            <th class="text-center">Special Offer</th>
                                            <th class="text-center">Special Deals</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    <td>Check Mark</td>
                                    <td class="text-center">
                                        <input type="checkbox" name="hot_deals" value="1">
                                    </td>
                                    <td class="text-center">
                                    <input type="checkbox" name="featured" value="1">
                                    </td>
                                    <td class="text-center">
                                    <input type="checkbox" name="special_offer" value="1">
                                    </td>
                                    <td class="text-center">
                                    <input type="checkbox" name="special_deals" value="1">
                                    </td>
                                  
                                    </tbody>
                                </table>
                             </div>
                            <div class="submit-section">
                                <!-- <button class="btn btn-primary submit-btn">Submit</button> -->
                                <input type="submit" value="Add New" class="btn btn-primary submit-btn">
                            </div>
                           
                        </div>
                    </div>
            </div>
        </div>
  
   
<!-- Show Category wise Subcategory Starts-->
<script type="text/javascript">
$(document).ready(function () {
    $('select[name="category_id"]').on('change', function () {
        var category_id = $(this).val();
        if (category_id) {
            $.ajax({
                url: "{{  url('subcategory/subcategory/ajax') }}/" + category_id,
                type: "GET",
                dataType: "json",
                success: function (data) {
                    var d = $('select[name="subcategory_id"]').empty();
                    $.each(data, function (key, value) {
                        $('select[name="subcategory_id"]').append('<option value="' + value.id + '">' + value.subcategory_name_en + '</option>');
                    });
                },
            });
        } else {
            alert('danger');
        }
    });
});
</script>
<!-- Show Category wise Subcategory Ends-->


<!-- Show Subcategory wise Sub-Subcategory Starts -->
<script type="text/javascript">
    $(document).ready(function () {
        $('select[name="subcategory_id"]').on('change', function () {
            var subcategory_id = $(this).val();
            if (subcategory_id) {
                $.ajax({
                    url: "{{  url('subcategory/subsubcategory/ajax') }}/" + subcategory_id,
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                        var d = $('select[name="subsubcategory_id"]').empty();
                        $.each(data, function (key, value) {
                            $('select[name="subsubcategory_id"]').append('<option value="' + value.id + '">' + value.subsubcategory_name_en + '</option>');
                        });
                    },
                });
            } else {
                alert('danger');
            }
        });
    });
</script>
<!-- Show Subcategory wise Sub-Subcategory Ends -->

<!--  For Showing Thambnail Image Starts -->
<script type="text/javascript">
	function mainThamUrl(input){
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e){
				$('#mainThmb').attr('src',e.target.result).width(80).height(80);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}	
</script>
<!--  For Showing Thambnail Image Ends -->


<!--  For Showing Multiple Image Starts -->
<script>
   $(document).ready(function(){
   $('#multiImg').on('change', function(){ //on file input change
      if (window.File && window.FileReader && window.FileList && window.Blob) //check File API supported browser
      {
          var data = $(this)[0].files; //this file data
           
          $.each(data, function(index, file){ //loop though each file
              if(/(\.|\/)(gif|jpe?g|png)$/i.test(file.type)){ //check supported file type
                  var fRead = new FileReader(); //new filereader
                  fRead.onload = (function(file){ //trigger function on successful read
                  return function(e) {
                      var img = $('<img/>').addClass('thumb').attr('src', e.target.result) .width(80)
                  .height(80); //create image element 
                      $('#preview_img').append(img); //append image to output element
                  };
                  })(file);
                  fRead.readAsDataURL(file); //URL representing the file's data.
              }
          });    
      }else{
          alert("Your browser doesn't support File API!"); //if File API is absent
      }
   });
  });
  </script>
<!--  For Showing Multiple Image Ends -->



@endsection