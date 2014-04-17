<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | Forum</title>

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
    <link rel="stylesheet" href="assets/css/pages/blog.css">
    
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/orange.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
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
                    <li><a href="usefulLinks.jsp">FAQs</a></li>  
                    <li class="topbar-devider"></li>   
					<li><a id="advisename">Welcome, Guest!</a></li>
					<li class="topbar-devider"></li>   
                    <li><a id="adviseloginbutton" href="login.jsp">Login</a></li>
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
                                <li><a href="usefulLinks.jsp">Useful Links</a></li>

                            </ul>
                        </li>
                        <!-- End About -->

                        <!-- courses -->
                        <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            Courses
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="courseslower.jsp">Lower Division</a></li>
                            <li><a href="coursesupper.jsp">Upper Division</a></li>
                            <li><a href="coursesall.jsp">All Courses</a></li>

                            
                        </ul>
                    </li>
                        <!-- End courses -->

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
                            <a href="contact.jsp">
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
    <div class="breadcrumbs-v3">
        <div class="container">
            <h1 class="pull-left">Forum</h1>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row blog-page">    
            <!-- Left Sidebar -->
        	<div class="col-md-9 md-margin-bottom-40">
                <!--Blog Post-->
                <div class="row blog blog-medium margin-bottom-40">
                    <div class="col-md-5">
                        <img class="img-responsive" src="assets/img/main/11.jpg" alt="">
                    </div>    
                    <div class="col-md-7">
                        <h2>Pellentesque Habitant Morbi Tristique</h2>
                        <ul class="list-unstyled list-inline blog-info">
                            <li><i class="fa fa-calendar"></i> November 02, 2013</li>
                            <li><i class="fa fa-comments"></i> <a href="#">24 Comments</a></li>
                            <li><i class="fa fa-tags"></i> Technology, Internet</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odiomolestias dignis simos ducimus qui blandit occaeca bais praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        <p><a class="btn-u btn-u-small" href="blog_item.html"><i class="fa fa-location-arrow"></i> Read More</a></p>
                    </div>    
                </div>
                <!--End Blog Post-->        

                <hr class="margin-bottom-40">

                <!--Blog Post-->
                <div class="row blog blog-medium margin-bottom-40">
                    <div class="col-md-5">
                        <div class="blog-img">
                            <div class="responsive-video">
                                <iframe src="//www.youtube.com/embed/ufsrgE0BYf0" frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>    
                    <div class="col-md-7">
                        <h2>Pellentesque Habitant Morbi Tristique</h2>
                        <ul class="list-unstyled list-inline blog-info">
                            <li><i class="fa fa-calendar"></i> November 02, 2013</li>
                            <li><i class="fa fa-comments"></i> <a href="#">24 Comments</a></li>
                            <li><i class="fa fa-tags"></i> Technology, Internet</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odiomolestias dignis simos ducimus qui blandit occaeca bais praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        <p><a class="btn-u btn-u-small" href="blog_item.html"><i class="fa fa-location-arrow"></i> Read More</a></p>
                    </div>    
                </div>
                <!--End Blog Post-->        

                <hr class="margin-bottom-40">

                <!--Blog Post-->
                <div class="row blog blog-medium margin-bottom-40">
                    <div class="col-md-5">
                        <img class="img-responsive" src="assets/img/main/12.jpg" alt="">
                    </div>    
                    <div class="col-md-7">
                        <h2>Pellentesque Habitant Morbi Tristique</h2>
                        <ul class="list-unstyled list-inline blog-info">
                            <li><i class="fa fa-calendar"></i> November 02, 2013</li>
                            <li><i class="fa fa-comments"></i> <a href="#">24 Comments</a></li>
                            <li><i class="fa fa-tags"></i> Technology, Internet</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odiomolestias dignis simos ducimus qui blandit occaeca bais praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        <p><a class="btn-u btn-u-small" href="blog_item.html"><i class="fa fa-location-arrow"></i> Read More</a></p>
                    </div>    
                </div>
                <!--End Blog Post-->        

                <hr class="margin-bottom-40">

                <!--Blog Post-->
                <div class="row blog blog-medium margin-bottom-40">
                    <div class="col-md-5">
                        <div class="carousel slide carousel-v1" id="myCarousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img alt="" src="assets/img/main/3.jpg">
                                    <div class="carousel-caption">
                                        <p>Facilisis odio, dapibus ac justo acilisis gestinas.</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="blog-img">
                                        <div class="responsive-video">
                                            <iframe src="http://player.vimeo.com/video/9679622" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>                         
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <img alt="" src="assets/img/main/13.jpg">
                                    <div class="carousel-caption">
                                        <p>Justo cras odio apibus ac afilisis lingestas de.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="carousel-arrow">
                                <a data-slide="prev" href="#myCarousel" class="left carousel-control">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a data-slide="next" href="#myCarousel" class="right carousel-control">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>    
                    <div class="col-md-7">
                        <h2>Pellentesque Habitant Morbi Tristique</h2>
                        <ul class="list-unstyled list-inline blog-info">
                            <li><i class="fa fa-calendar"></i> November 02, 2013</li>
                            <li><i class="fa fa-comments"></i> <a href="#">24 Comments</a></li>
                            <li><i class="fa fa-tags"></i> Technology, Internet</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odiomolestias dignis simos ducimus qui blandit occaeca bais praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                        <p><a class="btn-u btn-u-small" href="blog_item.html"><i class="fa fa-location-arrow"></i> Read More</a></p>
                    </div>    
                </div>
                <!--End Blog Post-->        
                
                <!--Pagination-->
                <div class="text-center">
                    <ul class="pagination">
                        <li><a href="#">«</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li class="active"><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">7</a></li>
                        <li><a href="#">8</a></li>
                        <li><a href="#">»</a></li>
                    </ul>                                                            
                </div>
                <!--End Pagination-->
            </div>
            <!-- End Left Sidebar -->

            <!-- Right Sidebar -->
        	<div class="col-md-3">
        	
            	<!-- Feedback -->
            	<div class="headline headline-md"><h2>Student Feedback</h2></div>
                <blockquote class="hero-unify">
                    <p>I don't even know what I was doing with my life before AdviseMe.</p>
                    <small>Alex Wishlinski</small>
                </blockquote>
                 <blockquote class="hero-unify">
                    <p>... I just can't.</p>
                    <small>Mary Ryan Gilmore</small>
                </blockquote>
                <!-- End Feedback -->
            </div>
            <!-- End Right Sidebar -->
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
							Phone: 000 123 3456 <br />
							Fax: 000 123 3456 <br />
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
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
<![endif]-->

</body>
</html>	