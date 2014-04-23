<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | About Us</title>

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
    <link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/orange.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
		<%
	String id = null;
	String picurl = null;
	String first = null;
	String last = null;
	String isLoggedIn = null;
	HttpSession mysession = request.getSession(false);
	System.out.println("Home page: " + mysession.getAttribute("id"));
	if(mysession.getAttribute("id")!=null){
		id = (String) mysession.getAttribute("userid");
		picurl = (String) mysession.getAttribute("pic");
		first = (String) mysession.getAttribute("first");
		last = (String) mysession.getAttribute("last");
		isLoggedIn = (String) mysession.getAttribute("isLoggedIn");
		pageContext.setAttribute("id", id);
		pageContext.setAttribute("pic",picurl);
		pageContext.setAttribute("first", first);
		pageContext.setAttribute("last", last);
		pageContext.setAttribute("isLoggedIn", isLoggedIn);
		pageContext.setAttribute("guest","false");
	}else{
		pageContext.setAttribute("guest", "true");
	}
	%>
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
                    <li><a id="createanewaccount" href="createaccount.jsp">Create Account</a></li>
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
                                <li><a href="javascript:void(0);">About Us</a></li>
                                <li><a href="usefulLinks.jsp">Useful Links</a></li>
                            </ul>
                        </li>
                        <!-- End About -->

                        <!-- Courses -->
                        <li class="dropdown">
	                        <a class="dropdown-toggle" data-toggle="dropdown">
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
            <h1 class="pull-left">About Us</h1>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

   <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row margin-bottom-40">
        	<div class="col-md-6 md-margin-bottom-40">
					<b>AdviseMe</b> was created in the hopes of making registration for
					students at The University of Texas at Austin less stressful. Most
					of the time, class descriptions are vague and students aren't aware
					of what they're getting into. Often times, students will take
					multiple time-consuming classes together, buy books they never end
					up using, or get catch unawares on the type of material being
					taught in a certain course. <b>AdviseMe</b> is here to resolve all
					those problems and make it easier to plan out their schedules.                <ul class="list-unstyled">
                    <li><i class="fa fa-check color-green"></i> Easy to Use!</li>
                    <li><i class="fa fa-check color-green"></i> Works!</li>
                    <li><i class="fa fa-check color-green"></i> Responds!</li>
                    <li><i class="fa fa-check color-green"></i> Facebook!</li>
                    <li><i class="fa fa-check color-green"></i> 5th Item!</li>
                </ul><br />

                <!-- Blockquotes -->
                <blockquote class="hero-unify">
                    <p>I use this website almost every year!</p>
                    <small>Jason Anthraper</small>
                </blockquote>
                 <blockquote class="hero-unify">
                    <p>What's AdviseMe? Sounds pretty lame. Oh wait, no it doesn't!</p>
                    <small>David Sandler</small>
                </blockquote>
            </div>

        	<div class="col-md-6 md-margin-bottom-40">
                <div class="responsive-video">
                    <iframe src="http://www.youtube.com/embed/itO9IXiH4Nk" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> 
                </div>
            </div>
        </div><!--/row-->

    	<!-- Meer Our Team -->
    	<div class="headline"><h2>Meet Our Team</h2></div>
        <div class="row team">
            <div class="col-sm-3">
                <div class="thumbnail-style">
                    <img class="img-responsive" src="assets/img/team/1.jpg" alt="" />
                    <h3><a>Jack Bour</a> <small>Chief Executive Officer</small></h3>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                    <ul class="list-unstyled list-inline team-socail">
                    	<li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    	<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="thumbnail-style">
                    <img class="img-responsive" src="assets/img/team/3.jpg" alt="" />
                    <h3><a>Kate Metus</a> <small>Project Manager</small></h3>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                    <ul class="list-unstyled list-inline team-socail">
                    	<li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    	<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="thumbnail-style">
                    <img class="img-responsive" src="assets/img/team/afrodavid.jpg" alt="" />
                    <h3><a>David  Sandler</a> <small>Supreme Leader</small></h3>
                    <p>All hail supreme leader!</p>
                    <ul class="list-unstyled list-inline team-socail">
                    	<li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    	<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="thumbnail-style">
                    <img class="img-responsive" src="assets/img/team/4.jpg" alt="" />
                    <h3><a>Donec Elit</a> <small>Director, R &amp; D Talent</small></h3>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                    <ul class="list-unstyled list-inline team-socail">
                    	<li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    	<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
        </div><!--/team-->
    	<!-- End Meer Our Team -->

<!--         Our Clients -->
<!--         <div id="clients-flexslider" class="flexslider home clients"> -->
<!--             <div class="headline"><h2>Our Clients</h2></div>     -->
<!--             <ul class="slides"> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/hp_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/hp.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/igneus_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/igneus.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/vadafone_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/vadafone.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/walmart_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/walmart.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/shell_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/shell.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/natural_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/natural.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/aztec_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/aztec.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/gamescast_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/gamescast.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/cisco_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/cisco.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/everyday_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/everyday.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/cocacola_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/cocacola.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/spinworkx_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/spinworkx.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/shell_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/shell.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/natural_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/natural.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/gamescast_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/gamescast.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/everyday_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/everyday.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                     <a href="#"> -->
<!--                         <img src="assets/img/clients/spinworkx_grey.png" alt="" />  -->
<!--                         <img src="assets/img/clients/spinworkx.png" class="color-img" alt="" /> -->
<!--                     </a> -->
<!--                 </li> -->
<!--             </ul> -->
<!--         </div>/flexslider -->
<!--         //End Our Clients -->
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
							Phone: 1-800-NOT-REAL <br />
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
<script type="text/javascript" src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        App.initSliders();        
    });
</script>
<script>
	if ("${fn:escapeXml(guest)}" == "false") {
		console.log('1');
		if("${fn:escapeXml(isLoggedIn)}" == "true"){
			console.log('2');
			document.getElementById("advisename").innerHTML = "Welcome, ${fn:escapeXml(first)} ${fn:escapeXml(last)}";
			document.getElementById("adviseloginbutton").href = "logout.html";
			document.getElementById("adviseloginbutton").innerHTML = "Logout";
		}else{
			console.log('3');
			document.getElementById("advisename").innerHTML = "Welcome, Guest";
			document.getElementById("adviseloginbutton").href = "login.html";
			document.getElementById("adviseloginbutton").innerHTML = "Login";
		}
	} else {
		console.log('4');
		document.getElementById("advisename").innerHTML = "Welcome, Guest";
		document.getElementById("adviseloginbutton").href = "login.html";
		document.getElementById("adviseloginbutton").innerHTML = "Login";
	}
	</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
<![endif]-->

</body>
</html> 