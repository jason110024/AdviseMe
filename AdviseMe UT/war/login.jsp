<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | Login</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="assets/css/pages/page_log_reg_v1.css">    

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/orange.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
    <!-- CSS Parsley Form Confirmation -->
    <link rel="stylesheet" href="stylesheets/parsley.css">
</head> 

<body>

<div class="wrapper">
        <!--=== Header ===-->    
    <div class="header">
        <!-- Topbar -->
        <div class="topbar">
            <div class="container">
                <!-- Topbar Navigation -->
                <ul class="loginbar pull-right">
                    <li><a href="help.html">FAQs</a></li>    
                </ul>
                <!-- End Topbar Navigation -->
            </div>
        </div>
        <!-- End Topbar -->
    
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img id="logo-header" src="assets/img/logo1-default.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Home -->
                        <li>
                            <a href="home.html" >
                                Home
                            </a>
                        </li>
                        <!-- End Home -->

                        <!-- About -->                        
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                About Us
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="help.html">Useful Links</a></li>

                            </ul>
                        </li>
                        <!-- End About -->

                        <!-- Courses -->
                        <li>
                            <a href="courses.html">
                                Courses
                            </a>
                        </li>
                        <!-- End Courses -->

                        <!-- Portfolio -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                Schedules
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:void(0);">Something</a></li>
                                <li><a href="javascript:void(0);">Something</a></li>
                            </ul>
                        </li>
                        <!-- End Portfolio -->


                        <!-- Contacts -->
                        <li>
                            <a href="contact.html">
                                Contact Us
                            </a>
                        </li>                    
                        <!-- End Contacts -->

                        <!-- Search Block -->
                        <li>
                            <i class="search fa fa-search search-btn"></i>
                            <div class="search-open">
                                <div class="input-group animated fadeInDown">
                                    <input type="text" class="form-control" placeholder="Search">
                                    <span class="input-group-btn">
                                        <button class="btn-u" type="button">Go</button>
                                    </span>
                                </div>
                            </div>    
                        </li>
                        <!-- End Search Block -->
                    </ul>
                </div><!--/navbar-collapse-->
            </div>    
        </div>            
        <!-- End Navbar -->
    </div>
    <!--=== End Header ===-->   

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Login</h1>
            
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <form class="reg-page" id="loginform" data-parsley-validate>
                    <div class="reg-header">            
                        <h2>Login to your account</h2>
                    </div>
					<div class="fb-login-button" data-scope="email" data-max-rows="1" data-size="large" data-show-faces="true" data-auto-logout-link="false"></div>
					<hr>
                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" id="username" placeholder="Username" class="form-control" required>
                    </div>                    
                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" id="password" placeholder="Password" class="form-control" required>
                    </div>
					     <h2 id="test"></h2>
                    <hr>
                     <div class="row">
                     <div class="col-md-6">
                         <button class="btn-u pull-right" type="submit" onclick="window.location.replace('/createaccount.jsp')">Create an Account!</button>                        
                     </div>
                     <div class="col-md-6">
                         <button class="btn-u pull-right" type="submit" onclick="timetologin()">Login</button>                        
                     </div>
                    </div>
                    
                </form>            
            </div>
        </div><!--/row-->
    </div><!--/container-->		
    <!--=== End Content Part ===-->

    <!--=== Footer ===-->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 md-margin-bottom-40">
                    <!-- About -->
                    <div class="headline" href="about.html"><h2>About</h2></div>  
                    <p class="margin-bottom-25 md-margin-bottom-40">Helping students help students in order to help students by helping!</p>    
                    <!-- End About -->

                    <!-- Update Newsletter -->
                    <div class="headline"><h2>Update Newsletter</h2></div> 
                    <p>Subscribe to AdviseMe and stay up to date with the latest news!</p>
                    <form class="footer-subscribe">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Email Address">                            
                            <span class="input-group-btn">
                                <button class="btn-u" type="button">Subscribe</button>
                            </span>
                        </div>                  
                    </form>                         
                    <!-- End Update Newsletter -->
                </div><!--/col-md-4-->  
                
                <div class="col-md-4 md-margin-bottom-40">
                    <!-- Recent Blogs -->
                    <div class="posts">
                        <div class="headline"><h2>Recent Blog Entries</h2></div>
                        <dl class="dl-horizontal">
                            <dt><a href="#"><img src="assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                            <dd>
                                <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                            </dd>
                        </dl>
                        <dl class="dl-horizontal">
                        <dt><a href="#"><img src="assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
                            <dd>
                                <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                            </dd>
                        </dl>
                        <dl class="dl-horizontal">
                        <dt><a href="#"><img src="assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
                            <dd>
                                <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                            </dd>
                        </dl>
                    </div>
                    <!-- End Recent Blogs -->                    
                </div><!--/col-md-4-->

					<div class="col-md-4">
						<!-- Contact Us -->
						<div class="headline"><h2>Contact Us</h2></div> 
						<address class="md-margin-bottom-40">
							Somewhere, Street <br />
							Texas, US <br />
							Phone: 000 123 3456 <br />
							Fax: 000 123 3456 <br />
							Email: <a href="mailto:utadviseme@gmail.com" class="">utadviseme@gmail.com</a>
						</address>
						<!-- End Contact Us -->

						<!-- Social Links -->
						<div class="headline"><h2>Stay Connected</h2></div> 
						<ul class="social-icons">
							<li><a href="#" data-original-title="Facebook" class="social_facebook"></a></li>
							<li><a href="#" data-original-title="Twitter" class="social_twitter"></a></li>
							<li><a href="#" data-original-title="Google Plus" class="social_googleplus"></a></li>
						</ul>
						<!-- End Social Links -->
					</div><!--/col-md-4-->
            </div>
        </div> 
    </div>    
    <!--=== End Footer ===-->

    <!--=== Copyright ===-->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6">                      
                    <p class="copyright-space">
                        2014 &copy; AdviseMe. ALL Rights Reserved. 
                        <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                    </p>
                </div>
            </div>
        </div> 
    </div> 
    <!--=== End Copyright ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<!-- CSS Parsley Form Confirmation -->
<script type="text/javascript" src="stylesheets/parsley.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<script>
		var picurl;
		var id1;
		window.fbAsyncInit = function(){
			FB.init({
				appId      : '125801300852907',
			    status     : true, // check login status
			    cookie     : true, // enable cookies to allow the server to access the session
			    xfbml      : true  // parse XFBML
			});
			FB.Event.subscribe('auth.authResponseChange', function(response){
				if(response.status === 'connected'){
			    	checkLogin();
			    }else if(response.status === 'not_authorized'){
			    	FB.login({
			    		scope: 'basic_info'
			    	});
			    }else{
			    	FB.login({
			    		scope: 'basic_info'
			    	});
			    }
			});
		};
		(function(d){
			var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
			if(d.getElementById(id)){
				return;
			}
			js = d.createElement('script'); js.id = id; js.async = true;
			js.src = "//connect.facebook.net/en_US/all.js";
			ref.parentNode.insertBefore(js, ref);
		}(document));
		function checkLogin(){
			console.log('Retrieving User ID and Name');
			document.getElementById("test").innerHTML="FB Logging In....Redirecting";
			FB.api("/me/picture", {
				"redirect" : false,
				"height" : "40",
				"type" : "normal",
				"width" : "40"
			}, function(response) {
				if (response && !response.error) {
					picurl = response.data.url;
				}
			});
			FB.api('/me', function(response){
				var id=response.id;
				id1=id;
				console.log(id);
				console.log(document.getElementById("test").innerHTML);
				$.ajax({
					type:'GET',
					url : "checkfacebookuser?id="+id,
					cache : false,
					success: function(response){
						console.log(response);
						if(response=="true"){
							$.ajax({
								type:'GET',
								url : "changeloginstatus?id="+id,
								cache : false,
								success: function(response1){
									console.log(response1);
									$.ajax({
										type:'GET',
										url : "createsessionservlet?id="+id+"&picurl="+ picurl,
										cache : false,
										success: function(response2){
											window.location.replace('home.jsp');
										}
									});
								}
							});
						}else if(response=="false"){
							document.getElementById("test").innerHTML="FB Account not Found.";
						}
					}
				});
			});
		}
		</script>
		<script>
		console.log(document.getElementById("test").innerHTML);
		function timetologin(){
			if(id1=="null"){
				id1="0";
			}
			var user = document.getElementById("username").value;
			var pass = document.getElementById("password").value;
			$.ajax({
				type:'GET',
				url : "checkuser?username="+user+"&password="+pass,	//need to pass username and password
				cache : false,
				success: function(response){
					console.log(response);
					if(response=="true"){
						$.ajax({
							type:'GET',
							url : "changeloginstatus?id="+id1,
							cache : false,
							success: function(response1){
								console.log(response1);
								$.ajax({
									type:'GET',
									url : "createsessionservlet?id="+id1+"&picurl="+ picurl,
									cache : false,
									success: function(response2){
										window.location.replace('home.jsp');
									}
								});
							}
						});
					}else if(response=="false"){
						document.getElementById("test").innerHTML="Wrong Username/Password. Try Again.";

					}
				}
			});
		}
		</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
<![endif]-->

</body>
</html> 