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
    <link rel="stylesheet" href="assets/css/themes/default.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
</head>	

<body>
<!--=== Style Switcher ===-->    
<i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
<div class="style-switcher animated fadeInRight">
    <div class="theme-close"><i class="icon-close"></i></div>
    <div class="theme-heading">Theme Colors</div>
    <ul class="list-unstyled">
        <li class="theme-default theme-active" data-style="default" data-header="light"></li>
        <li class="theme-blue" data-style="blue" data-header="light"></li>
        <li class="theme-orange" data-style="orange" data-header="light"></li>
        <li class="theme-red" data-style="red" data-header="light"></li>
        <li class="theme-light last" data-style="light" data-header="light"></li>

        <li class="theme-purple" data-style="purple" data-header="light"></li>
        <li class="theme-aqua" data-style="aqua" data-header="light"></li>
        <li class="theme-brown" data-style="brown" data-header="light"></li>
        <li class="theme-dark-blue" data-style="dark-blue" data-header="light"></li>
        <li class="theme-light-green last" data-style="light-green" data-header="light"></li>
    </ul>
    <div style="margin-bottom:18px;"></div>
    <div class="theme-heading">Layouts</div>
    <div class="text-center">
        <a href="javascript:void(0);" class="btn-u btn-u-green btn-block active-switcher-btn wide-layout-btn">Wide</a>
        <a href="javascript:void(0);" class="btn-u btn-u-green btn-block boxed-layout-btn">Boxed</a>
    </div>
</div><!--/style-switcher-->
<!--=== End Style Switcher ===-->    

<div class="wrapper">
   <!--=== Header ===-->    
    <div class="header">
        <!-- Topbar -->
        <div class="topbar">
            <div class="container">
                <!-- Topbar Navigation -->
                <ul class="loginbar pull-right">
                    <li><a href="help.html">FAQs</a></li>  
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
                            <a href="javascript:void(0);" >
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
                        <li><a href="#">�</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li class="active"><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">7</a></li>
                        <li><a href="#">8</a></li>
                        <li><a href="#">�</a></li>
                    </ul>                                                            
                </div>
                <!--End Pagination-->
            </div>
            <!-- End Left Sidebar -->

            <!-- Right Sidebar -->
        	<div class="col-md-3">
                <!-- Social Icons -->
                <div class="magazine-sb-social margin-bottom-30">
                    <div class="headline headline-md"><h2>Social Icons</h2></div>
                    <ul class="social-icons social-icons-color">
                        <li><a class="social_rss" data-original-title="Feed" href="#"></a></li>
                        <li><a class="social_facebook" data-original-title="Facebook" href="#"></a></li>
                        <li><a class="social_twitter" data-original-title="Twitter" href="#"></a></li>
                        <li><a class="social_vimeo" data-original-title="Vimeo" href="#"></a></li>
                        <li><a class="social_googleplus" data-original-title="Goole Plus" href="#"></a></li>
                        <li><a class="social_pintrest" data-original-title="Pinterest" href="#"></a></li>
                        <li><a class="social_linkedin" data-original-title="Linkedin" href="#"></a></li>
                        <li><a class="social_dropbox" data-original-title="Dropbox" href="#"></a></li>
                        <li><a class="social_picasa" data-original-title="Picasa" href="#"></a></li>
                        <li><a class="social_spotify" data-original-title="Spotify" href="#"></a></li>
                        <li><a class="social_jolicloud" data-original-title="Jolicloud" href="#"></a></li>
                        <li><a class="social_wordpress" data-original-title="Wordpress" href="#"></a></li>
                        <li><a class="social_github" data-original-title="Github" href="#"></a></li>
                        <li><a class="social_xing" data-original-title="Xing" href="#"></a></li>
                    </ul>
                    <div class="clearfix"></div>                
                </div>
                <!-- End Social Icons -->

                <!-- Posts -->
                <div class="posts margin-bottom-40">
                    <div class="headline headline-md"><h2>Recent Posts</h2></div>
                    <dl class="dl-horizontal">
                        <dt><a href="#"><img src="assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Responsive Bootstrap 3 Template placerat idelo alac eratamet.</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt><a href="#"><img src="assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">100+ Amazing Features Layer Slider, Layer Slider, Icons, 60+ Pages etc.</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt><a href="#"><img src="assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Developer Friendly Code imperdiet condime ntumi mperdiet condim.</a></p> 
                        </dd>
                    </dl>
                </div><!--/posts-->
                <!-- End Posts -->

            	<!-- Tabs Widget -->
            	<div class="headline headline-md"><h2>Tabs Widget</h2></div>
                <div class="tab-v2 margin-bottom-40">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home-1">About Us</a></li>
                        <li><a data-toggle="tab" href="#home-2">Quick Links</a></li>
                    </ul>                
                    <div class="tab-content">
                        <div id="home-1" class="tab-pane active">
                            <p>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac ac adipiscing nunc.</p> <p>Pellentesque fermentum, ante ac felis consectetur id. Donec eget orci metusvivamus imperdiet.</p>                        
                        </div>
                        <div id="home-2" class="tab-pane magazine-sb-categories">
                            <div class="row">
                                <ul class="list-unstyled col-xs-6">
                                    <li><a href="#">Best Sliders</a></li>
                                    <li><a href="#">Parralax Page</a></li>
                                    <li><a href="#">Backgrounds</a></li>
                                    <li><a href="#">Parralax Slider</a></li>
                                    <li><a href="#">Responsive</a></li>
                                    <li><a href="#">800+ Icons</a></li>
                                </ul>                        
                                <ul class="list-unstyled col-xs-6">
                                    <li><a href="#">60+ Pages</a></li>
                                    <li><a href="#">Layer Slider</a></li>
                                    <li><a href="#">Bootstrap 3</a></li>
                                    <li><a href="#">Fixed Header</a></li>
                                    <li><a href="#">Best Template</a></li>
                                    <li><a href="#">And Many More</a></li>
                                </ul>                        
                            </div>
                        </div>
                    </div>
                </div>            
                <!-- End Tabs Widget -->

            	<!-- Photo Stream -->
            	<div class="headline headline-md"><h2>Photo Stream</h2></div>
                <ul class="list-unstyled blog-photos margin-bottom-30">
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/5.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/6.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/8.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/10.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/11.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/1.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/2.jpg"></a></li>
                    <li><a href="#"><img class="hover-effect" alt="" src="assets/img/sliders/elastislide/7.jpg"></a></li>
                </ul>
                <!-- End Photo Stream -->
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
                    <p>
                        2014 &copy; Unify. ALL Rights Reserved. 
                        <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                    </p>
                </div>
                <div class="col-md-6">  
                    <a href="index.html">
                        <img class="pull-right" id="logo-footer" src="assets/img/logo2-default.png" alt="">
                    </a>
                </div>
            </div>
        </div> 
    </div><!--/copyright--> 
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