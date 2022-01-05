<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>@yield('title')</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="{{asset('backend/assets/img/favicon.png')}}">
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="{{asset('backend/assets/css/bootstrap.min.css')}}">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="{{asset('backend/assets/css/font-awesome.min.css')}}">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="{{asset('backend/assets/css/line-awesome.min.css')}}">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="{{asset('backend/assets/css/select2.min.css')}}">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="{{asset('backend/assets/css/bootstrap-datetimepicker.min.css')}}">
		
                <!-- Summernote CSS -->
		<link rel="stylesheet" href="{{asset('backend/assets/plugins/summernote/dist/summernote-bs4.css')}}">
		<!-- Datatable CSS -->
		<link rel="stylesheet" href="{{asset('backend/assets/css/dataTables.bootstrap4.min.css')}}">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="{{asset('backend/assets/css/style.css')}}">
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" >
    </head>
	
    <body>
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            @include('backend.includes.header')
            @include('backend.includes.sidebar')
			<!-- /Sidebar -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
            @yield('content')
				<!-- /Page Content -->

            </div>
			<!-- /Page Wrapper -->
			
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <!-- <script src="{{asset('backend/assets/js/jquery-3.2.1.min.js')}} "></script> -->
		
		<!-- Bootstrap Core JS -->
        <!-- <script src="{{asset('backend/assets/js/popper.min.js')}} "></script> -->
        <!-- <script src="{{asset('backend/assets/js/bootstrap.min.js')}} "></script> -->
		
		<!-- Slimscroll JS -->
		<!-- <script src="{{asset('backend/assets/js/jquery.slimscroll.min.js')}} "></script>
		<script src="{{asset('backend/assets/js/select2.min.js')}}"></script>
		<script src="{{asset('backend/assets/js/jquery.dataTables.min.js')}}"></script>
		<script src="{{asset('backen/assets/js/dataTables.bootstrap4.min.js')}}"></script> -->
		
		

		<!-- <script src="{{asset('backend/assets/js/moment.min.js')}}"></script>
		<script src="{{asset('backend/assets/js/bootstrap-datetimepicker.min.js')}}"></script> -->
		<!-- Chart JS -->
		<!-- <script src="{{asset('backend/assets/plugins/morris/morris.min.js')}} "></script>
		
		<script src="{{asset('backend/assets/plugins/raphael/raphael.min.js')}} "></script>
		<script src="{{asset('backend/assets/js/chart.js ')}} "></script> -->


		<!-- Custom JS -->
		<!-- <script src="{{asset('backend/assets/js/app.js')}} "></script> -->
		<script src="{{asset('backend/assets/js/jquery-3.2.1.min.js')}}"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="{{asset('backend/assets/js/popper.min.js')}}"></script>
        <script src="{{asset('backend/assets/js/bootstrap.min.js')}}"></script>
		
		<!-- Slimscroll JS -->
		<script src="{{asset('backend/assets/js/jquery.slimscroll.min.js')}}"></script>
				
		<!-- Select2 JS -->
		<script src="{{asset('backend/assets/js/select2.min.js')}}"></script>
		
		<!-- Datatable JS -->
		<script src="{{asset('backend/assets/js/jquery.dataTables.min.js')}}"></script>
		<script src="{{asset('backend/assets/js/dataTables.bootstrap4.min.js')}}"></script>
		
		<!-- Datetimepicker JS -->
		<script src="{{asset('backend/assets/js/moment.min.js')}}"></script>
		<script src="{{asset('backend/assets/js/bootstrap-datetimepicker.min.js')}}"></script>
		
                <!--          SummerNote          ------->
                <script src="{{asset('backend/assets/plugins/summernote/dist/summernote-bs4.min.js')}}"></script>
		<!-- Custom JS -->
		<script src="{{asset('backend/assets/js/app.js')}}"></script>

		<!-- 	Toaster Message Starts -->
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

		<script>
		 @if(Session::has('message'))
		 var type = "{{ Session::get('alert-type','info') }}"
		 switch(type){
		    case 'info':
		    toastr.info(" {{ Session::get('message') }} ");
		    break;

		    case 'success':
		    toastr.success(" {{ Session::get('message') }} ");
		    break;

		    case 'warning':
		    toastr.warning(" {{ Session::get('message') }} ");
		    break;

		    case 'error':
		    toastr.error(" {{ Session::get('message') }} ");
		    break; 
		 }
		 @endif 
		</script>
<!-- 	Toaster Message Ends -->


		 
<!-- Sweet Alert Starts --> 
<script src="{{ asset('https://unpkg.com/sweetalert/dist/sweetalert.min.js')}}"></script>
<script>  
         $(document).on("click", "#delete", function(e){
             e.preventDefault();
             var link = $(this).attr("href");
                swal({
                  title: "Are you Sure, You Want to delete?",
                  text: "If Yes, Data will Permanently Delete!",
                  icon: "warning",
                  buttons: true,
                  dangerMode: true,
                })
                .then((willDelete) => {
                  if (willDelete) {
                       window.location.href = link;
                  } else {
                    swal("The Data is Safe!");
                  }
                });
            });
    </script>
<!-- Sweet Alertt Ends -->

		
    </body>
</html>