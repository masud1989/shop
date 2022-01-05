@extends('backend.master')

@section('title')
Admin | Edit Product
@endsection

@section('content')
<!-- Page Content -->
<div class="content container-fluid">				
    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col-sm-8">
                <h3 class="page-title">Edit Product</h3>

            </div>
        </div>
    </div>
    <!-- /Page Header -->

    <div class="row">
        <div class="col-md-4">
            <form method="POST" action="{{route('product.update')}}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id" value="{{ $product->id }}">
                <div class="form-group">
                    <h5>Brand Select <span class="text-danger">*</span></h5>
                    <div class="controls">
                        <select name="brand_id" class="form-control" required="" >
                            <option value="" selected="" disabled="">Select Brand</option>
                            @foreach($brands as $brand)
                            <option value="{{ $brand->id }}" {{ $brand->id == $product->brand_id ? 'selected': '' }} >{{ $brand->brand_name_en }}</option>	
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
                        <select name="brand_id" class="form-control" required="" >
                            <option value="" selected="" disabled="">Select Brand</option>
                            @foreach($brands as $brand)
                            <option value="{{ $brand->id }}" {{ $brand->id == $product->brand_id ? 'selected': '' }} >{{ $brand->brand_name_en }}</option>	
                            @endforeach
                        </select>
                        @error('brand_id') 
                        <span class="text-danger">{{ $message }}</span>
                        @enderror 
                    </div>
                </div>
        </div> <!-- end col md 4 -->
   
    
    </div> <!-- end row -->
    
  
    <div class="submit-section">
        <input type="submit" value="Update" class="btn btn-primary submit-btn">
    </div>
    <!-- /Page Content -->
    @endsection