<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | Logout</title>

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
</head> 

<body>
		<script>
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
			document.getElementById("test").innerHTML="Logging Out....Redirecting";
			FB.api('/me', function(response){
				var id=response.id;
				$.ajax({
					type:'GET',
					url : "changeloginfalse?id="+id,
					cache : false,
					success: function(response){
						window.location.replace('home.jsp');
					}
				});
			});
		}
		</script>
		<script>
		function timetologout(){
			document.getElementById("test").innerHTML="Logging Out....Redirecting";
			$.ajax({
				type:'GET',
				url : "changeloginfalse?id=${fn:escapeXml(id)}",
				cache : false,
				success: function(response){
					window.location.replace('home.jsp');
				}
			});
		}
		window.onload = timetologout;
		</script>
<div class="wrapper">
<!--=== Header ===-->    
<div class="header">
   	<!-- Topbar -->
   	<div class="topbar">
        <div class="container">
            <!-- Topbar Navigation -->
            <ul class="loginbar pull-right">
               	
				<li><a id="advisename">Welcome, Guest!</a></li>
				<li class="topbar-devider"></li>   
                <li><a id="createanewaccount" href="createaccount.jsp?error=false">Create Account</a></li>
				<li class="topbar-devider"></li>   
                <li><a id="adviseloginbutton" href="login.jsp?error=false">Login</a></li>
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
                <a class="navbar-brand" href="home.jsp">
                    <img id="logo-header" src="assets/img/logo1-default.png" alt="Logo">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <!-- Home -->
                    <li>
                        <a href="home.jsp" >
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
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="usefulLinks.jsp">Useful Links/FAQs</a></li>
                        </ul>
                    </li>
                    <!-- End About -->

                    <!-- Courses -->
                    <li class="dropdown">
                        <a href="javascript:void(0);"
                        	class="dropdown-toggle" data-toggle="dropdown">
                            Courses
                        </a>
                        <ul class="dropdown-menu">
                        	<li><a href="coursesall.jsp">All Courses</a></li>
                            <li><a href="courseslower.jsp">Lower Division</a></li>
                            <li><a href="coursesupper.jsp">Upper Division</a></li>  
                        </ul>
                	</li>
                    <!-- End Courses -->

                    <!-- Forum -->
                    <li>
                        <a href="forum.jsp">
                            Forum
                        </a>
                    </li>
                    <!-- End Forum -->

                    <!-- Contacts -->
                    <li>
                        <a href="contact.jsp">
                            Contact Us
                        </a>
                    </li>                    
                    <!-- End Contacts -->

<!--                         Search Block -->
<!--                         <li> -->
<!--                             <i class="search fa fa-search search-btn"></i> -->
<!--                             <div class="search-open"> -->
<!--                                 <div class="input-group animated fadeInDown"> -->
<!--                                     <input type="text" class="form-control" placeholder="Search"> -->
<!--                                     <span class="input-group-btn"> -->
<!--                                         <button class="btn-u" type="button">Go</button> -->
<!--                                     </span> -->
<!--                                 </div> -->
<!--                             </div>     -->
<!--                         </li> -->
<!--                         End Search Block -->
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
            <h1 class="pull-left">Logout</h1>
            
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <form class="reg-page">
                    <div class="reg-header">            
                        <h2>Logout</h2>
                    </div>
					<h2 id="test"></h2>
                    <hr>
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
                    <p class="margin-bottom-25 md-margin-bottom-40">AdviseMe is a website for UT students to get course advice from their peers.</p>    
                    <!-- End About -->

                    <!-- Update Newsletter -->
                    <div class="headline"><h2>Update Newsletter</h2></div> 
                    <p>Subscribe to AdviseMe and stay up to date with the latest news!</p>
                    <form class="footer-subscribe">
                        <div class="input-group">
                            <span class="input-group-btn">
                                <button class="btn-u" onclick="subscribers()">Subscribe</button>
                            </span>
                        </div>                  
                    </form>                         
                    <!-- End Update Newsletter -->
                </div><!--/col-md-4-->  
                
                <div class="col-md-4 md-margin-bottom-40">
                    <!-- Recent Blogs -->
                    <div class="posts">
                        <div class="headline"><h2>See Our Progress</h2></div>
                        <dl class="dl-horizontal">
                            <dt><a href="http://jasona-ee461l-webappblog.appspot.com/"><img src="assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                            <dd>
                                <p><a href="http://jasona-ee461l-webappblog.appspot.com/">Check out our development blog to keep track of new developments and features available on AdviseMe!</a></p> 
                            </dd>
                        </dl>
                        
                    </div>
                    <!-- End Recent Blogs -->                    
                </div><!--/col-md-4-->

					<div class="col-md-4">
						<!-- Contact Us -->
						<div class="headline"><h2>Contact Us</h2></div> 
						<address class="md-margin-bottom-40">
							2501 Speedway <br />
							Austin, Texas <br />
							Email: <a href="mailto:utadviseme@gmail.com" class="">utadviseme@gmail.com</a>
						</address>
						<!-- End Contact Us -->

						<!-- Social Links -->
						<div class="headline"><h2>Stay Connected</h2></div> 
						<ul class="social-icons">
							<li><a href="https://twitter.com/AdviseMeUT" data-original-title="Twitter" class="social_twitter"></a></li>
							<li><a href="https://plus.google.com/115804048731357756426/about?hl=en" data-original-title="Google Plus" class="social_googleplus"></a></li>
							<li><a href="http://jasona-ee461l-webappblog.appspot.com/" data-original-title="Blogger" class="social_blogger"></a></li>
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
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
	<script>
	function subscribers() {
		var email = prompt("Please enter your email","Name@Domain.com");
		$.ajax({
			type : 'GET',
			url : "addBlogSubscriberServlet?email=" + email,
			cache : false,
			success : function(response) {
				if(response=="true"){
					alert("Your email has been sucessfully added");
				}else{
					alert("Something wrong happened.:(");
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