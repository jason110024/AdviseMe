<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="com.googlecode.objectify.Objectify"%>
<%@ page import="com.googlecode.objectify.ObjectifyService"%>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | Help/FAQs</title>

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
                    <li><a href="javascript:void(0);">FAQs</a></li>  
                    <li class="topbar-devider"></li>   
                    <li><a href="login.html">Login</a></li>   
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
                                <li><a href="javascript:void(0);">Useful Links</a></li>

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
                            <a href="javascript:void(0);">
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
            <h1 class="pull-left">Help/FAQs</h1>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

<!-- Blog Filler -->

<%-- 	<%
		//retrieve courses
		ObjectifyService.register(BlogEntry.class);
		List<BlogEntry> entries = ObjectifyService.ofy().load().type(BlogEntry.class).list(); 
		Collections.sort(entries);
		for(BlogEntry entry : entries){
				pageContext.setAttribute("entry_title", entry.getTitle());
				pageContext.setAttribute("entry_content", entry.getContent());
				break;
		}
	%> --%>

<!-- End Blog Filler -->



    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row">            
            <div class="col-md-9">
    			<!-- General Questions -->
                <div class="headline"><h2>General Questions</h2></div>
                <div class="panel-group acc-v1 margin-bottom-40" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    1. Put a bird on it squid single-origin coffee nulla?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                    2. Oliva pariatur cliche reprehenderit high life accusamus?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.</p>
                                <ul class="list-unstyled">
                                    <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                    <li><i class="fa fa-check color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                    <li><i class="fa fa-check color-green"></i> Food truck quinoa nesciunt laborum eiusmod runch..</li>
                                    <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                    3. Enim eiusmod high life accusamus terry richardson?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Food truck quinoa nesciunt laborum eiusmodolf moon tempor, sunt aliqua put a bird.</p>
                                <ul class="list-unstyled">
                                    <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                    <li><i class="fa fa-check color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                </ul>                            
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                    4. Livil anim keffiyeh helvetica craft beer labore wesde brunch?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                                Olif moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                                    5. Leggings occaecat craft beer farmto tableraw denim?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>Keffiyeh anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
                                <ul class="list-unstyled">
                                    <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                    <li><i class="fa fa-check color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                    <li><i class="fa fa-check color-green"></i> Food truck quinoa nesciunt laborum eiusmod runch..</li>
                                    <li><i class="fa fa-check color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                    <li><i class="fa fa-check color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                    <li><i class="fa fa-check color-green"></i> Food truck quinoa nesciunt laborum eiusmod runch..</li>
                                </ul>                            
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                                    6. Keffiyeh anim keffiyeh helvetica craft beer labore wesse?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse">
                            <div class="panel-body">
                                Helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Brunch sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
                                    7. Helvetica craft beer labore wes anderson cred nesciu ntlife richardson?
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse">
                            <div class="panel-body">
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                            </div>
                        </div>
                    </div>
                </div><!--/acc-v1-->
                <!-- End General Questions -->

    			<!-- Useful Links -->
                <div class="headline"><h2>Useful Links</h2></div>
                <div class="panel-group acc-v1" id="accordion-1">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-One">
                                    Course Schedules
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-One" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="assets/img/new/img5.jpg" alt="">
                                    </div>
                                    <div class="col-md-8">
                                        The Course Schedule is published before advising and registration begin for 
                                        each semester and summer session. It lists each class being offered, its time, 
                                        location, instructor (if available), and its unique number -- which students 
                                        must know in order to register. Click <a href="http://registrar.utexas.edu/schedules">here</a>
                                        to view the UT's course schedules.
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Two">
                                    ECE Curriculum
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-Two" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p>In the ECE Department, the curriculum is different depending on which Catalog a student is under. 
                                        Currently, students are either under the 2010-2012 Catalog or the 2012-2014 Catalog. On the ECE Curriculum page,
                                        students can view:
                                        </p>
                                        <ul class="list-unstyled">
                                            <li><i class="fa fa-check color-green"></i> 4-Year Plan</li>
                                            <li><i class="fa fa-check color-green"></i> Basic Sequence</li>
                                            <li><i class="fa fa-check color-green"></i> Major Sequence</li>
                                            <li><i class="fa fa-check color-green"></i> Technical Cores</li>
                                            <li><i class="fa fa-check color-green"></i> Other Required Courses</li>
                                            <li><i class="fa fa-check color-green"></i> Electives</li>
                                        </ul>
                                        <p>In addition, there is a Prerequisite Flowchart Chart you can download that can help in planning your schedules.
                                        Click <a href="http://www.ece.utexas.edu/undergraduate/curriculum">here</a>
                                        to view the ECE Curriculum page.</p>
                                    </div>
                                    <div class="col-md-4">
                                        <img class="img-responsive" src="assets/img/main/6.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Three">
                                    myEdu
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-Three" class="panel-collapse collapse">
                            <div class="panel-body">
                                Students have always found myEdu useful while planning out their schedules. 
                                Click <a href="https://www.myedu.com/">here</a>
                                to go to the myEdu home page.
                            </div>
                        </div>
                    </div>

                </div><!--/acc-v1-->
                <!-- End Other Questions -->
    		</div><!--/col-md-9-->
            
    		<div class="col-md-3">
            	<!-- Contacts -->
                <div class="headline"><h2>Contacts</h2></div>
                <ul class="list-unstyled who margin-bottom-30">
                    <li><a href="#"><i class="fa fa-home"></i>2501 Speedway, Austin, TX 78712 </a></li>
                    <li><a href="mailto:utadviseme@gmail.com"><i class="fa fa-envelope-o"></i>utadviseme@gmail.com</a></li>
                    <li><a href="#"><i class="fa fa-phone"></i>000 123 4567</a></li>
                    <li><a href="#"><i class="fa fa-globe"></i>http://advisemeut.appspot.com/</a></li>
                </ul>
                <!-- End Contacts -->

<!--             	Business Hours
                <div class="headline"><h2>Business Hours</h2></div>
                <ul class="list-unstyled margin-bottom-30">
                	<li><strong>Monday-Friday:</strong> 10am to 8pm</li>
                	<li><strong>Saturday:</strong> 11am to 3pm</li>
                	<li><strong>Sunday:</strong> Closed</li>
                </ul>
                End Business Hours -->

            	<!-- Info Block -->
                <div class="headline"><h2>Who are we?</h2></div>
                <p>Electrical and Computer Engineering students at The University of Texas at Austin:</p>
                <ul class="list-unstyled margin-bottom-30">
                	<li><i class="fa fa-check color-green"></i> Helping students help students</li>
                	<li><i class="fa fa-check color-green"></i> Making a difference</li>
                	<li><i class="fa fa-check color-green"></i> Learning new things</li>
                </ul>
                <!-- End Info Block -->

<!--                 Social
                <div class="magazine-sb-social margin-bottom-20">
                    <div class="headline headline-md"><h2>Connect with AdviseMe</h2></div>
                    <ul class="social-icons social-icons-color">
                        <li><a href="https://twitter.com/AdviseMeUT" data-original-title="Twitter" class="social_twitter"></a></li>
                        <li><a href="#" data-original-title="Goole Plus" class="social_googleplus"></a></li>
                    </ul>
                    <div class="clearfix"></div>                
                </div>
                End Social -->
            </div><!--/col-md-3-->            		
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