<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="webapp.addServlets.*"%>
<%@ page import="webapp.datastoreObjects.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Collections"%>
<%@ page import="java.util.*"%>
<%@ page import="com.googlecode.objectify.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | Courses</title>

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
    <link rel="stylesheet" href="assets/css/pages/page_search_inner.css">

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
                    <li><a href="help.html">FAQs</a></li>  
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
                                <li><a href="help.html">Useful Links</a></li>

                                
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

    <!--=== Breadcrumbs v3 ===-->
    <div class="breadcrumbs-v3">
        <div class="container">
            <h1 class="pull-left">Lower Division Courses</h1>
        </div>
    </div>
    <!--=== End Breadcrumbs v3 ===-->
    
       <!--=== Search Block ===-->
    <div class="search-block">
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <h2>Search for courses</h2>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for courses by abbreviation or title">
                    <span class="input-group-btn">
                        <button class="btn-u" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </div>
        </div>    
    </div><!--/container-->     
    <!--=== End Search Block ===-->

    <!--=== Search Results ===-->
    <div class="container s-results margin-bottom-50">
        <div class="row">
            <div class="col-md-2 hidden-xs related-search">
                <div class="row">
                    <div class="col-md-12 col-sm-4">
                        <h3>Quick Links</h3>
                        <ul class="list-unstyled">
                            <li><a href="coursesupper.jsp">Upper Division</a></li>     
                            <li><a href="coursesall.jsp">All Courses</a></li>
                        </ul>
                        <hr>
                    </div>    

                    <div class="col-md-12 col-sm-4">    
                        <h3>Tutorials</h3>
                        <ul class="list-unstyled">
                            <li><a href="#">Basic Concepts</a></li>     
                            <li><a href="#">‎Building your first web page</a></li>   
                            <li><a href="#">‎Advanced HTML</a></li>   
                        </ul>
                        <hr>
                    </div>    

                    <div class="col-md-12 col-sm-4">
                        <h3>Trending topics</h3>
                        <ul class="list-unstyled">
                            <li><a href="#">Bootstrap</a></li>     
                            <li><a href="#">Wrapbootstrap</a></li>     
                            <li><a href="#">Codrops</a></li>     
                        </ul>
                        <hr>
                    </div>    

                    <div class="col-md-12 col-sm-4">                        
                        <h3>Search history</h3>
                        <ul class="list-unstyled">
                            <li><a href="#">Web design articles</a></li>   
                            <li><a href="#">Tutorials for web design</a></li>     
                        </ul>
                        <a class="see-all" href="#">See all</a>
                        <hr>
                    </div>    
                        
                    <div class="col-md-12 col-sm-4">
                        <h3>Related pictures</h3>
                        <ul class="list-unstyled blog-photos margin-bottom-30">
                            <li><a href="#"><img src="assets/img/sliders/elastislide/5.jpg" alt="" class="hover-effect"></a></li>
                            <li><a href="#"><img src="assets/img/sliders/elastislide/6.jpg" alt="" class="hover-effect"></a></li>
                            <li><a href="#"><img src="assets/img/sliders/elastislide/8.jpg" alt="" class="hover-effect"></a></li>
                            <li><a href="#"><img src="assets/img/sliders/elastislide/10.jpg" alt="" class="hover-effect"></a></li>
                            <li><a href="#"><img src="assets/img/sliders/elastislide/11.jpg" alt="" class="hover-effect"></a></li>
                            <li><a href="#"><img src="assets/img/sliders/elastislide/1.jpg" alt="" class="hover-effect"></a></li>
                            <li><a href="#"><img src="assets/img/sliders/elastislide/2.jpg" alt="" class="hover-effect"></a></li>
                            <li><a href="#"><img src="assets/img/sliders/elastislide/7.jpg" alt="" class="hover-effect"></a></li>
                        </ul>
                    </div>
                </div>        
            </div><!--/col-md-2-->
<%
ObjectifyService.register(Course.class);
List<Course> schools = ObjectifyService.ofy().load().type(Course.class).list();
Collections.sort(schools);
int numLower = 0;
Iterator<Course> low = schools.iterator();
while (low.hasNext()){
	Course currentCourse = low.next(); 
	Boolean upperDiv=currentCourse.getUpperDivision();
	if( upperDiv == false){
	numLower++;
	}
}
	 pageContext.setAttribute("num_lower",numLower);

	 

%>
            <div class="col-md-10">
                <span class="results-number">${fn:escapeXml(num_lower)} results</span>
                <%
                
                if (schools.isEmpty()) {
                	%><h1>There are no courses entered.:(</h1>
                <%
                } else {
                	%>
                	<%
                	Iterator<Course> lowerIterator = schools.iterator();
                	while (lowerIterator.hasNext()){
                		Course currentCourse = lowerIterator.next(); 
                		Boolean upperDiv=currentCourse.getUpperDivision();
                		if( upperDiv == false){
                      	 pageContext.setAttribute("course_name",currentCourse.getCourseName());
                      	pageContext.setAttribute("course_description",currentCourse.getDescription());
                       pageContext.setAttribute("course_title",currentCourse.getTitle());
                       String courseName=currentCourse.getCourseName();
                       %><script>
                		document.getElementById("<%=courseName%>");
                		</script><%
                		String url = "courseinfo.jsp?name=" + courseName;
                %>

                <div class="inner-results">
                <h3><a onclick="window.location.href='courseinfo.jsp?courseName=${fn:escapeXml(course_name)}'">${fn:escapeXml(course_name)} - ${fn:escapeXml(course_title)}</a></h3>
                <p>${fn:escapeXml(course_description)}</p>
                </div>
                <hr>
                <%
                		}
                		
                	
                	}
                }
                	%>
              


                <div class="margin-bottom-30"></div>

<!--                 <div class="text-left"> -->
<!--                     <ul class="pagination"> -->
<!--                         <li><a href="#">«</a></li> -->
<!--                         <li class="active"><a href="#">1</a></li> -->
<!--                         <li><a href="#">2</a></li> -->
<!--                         <li><a href="#">3</a></li> -->
<!--                         <li><a href="#">...</a></li> -->
<!--                         <li><a href="#">157</a></li> -->
<!--                         <li><a href="#">158</a></li> -->
<!--                         <li><a href="#">»</a></li> -->
<!--                     </ul>                                                             -->
                </div>
            </div><!--/col-md-10-->
        </div>        
    </div><!--/container-->     
    <!--=== End Search Results ===-->

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
</div><!--/End Wrapepr-->

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