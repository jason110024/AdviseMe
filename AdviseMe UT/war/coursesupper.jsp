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
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
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
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="assets/css/pages/page_search_inner.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="assets/css/themes/orange.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="assets/css/custom.css">
</head>

<body>
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
                        <li class="dropdown active">
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

		<!--=== Breadcrumbs v3 ===-->
		<div class="breadcrumbs-v3">
			<div class="container">
				<h1 class="pull-left">Upper Division Courses</h1>
			</div>
		</div>
		<!--=== End Breadcrumbs v3 ===-->

		<!--=== Search Block ===-->
		<div class="search-block">
			<div class="container">
				<div class="col-md-6 col-md-offset-3">
					<h2>Search for courses</h2>
						<form action="/search" method="get" class="sky-form page-search-form">
						<div class="input-group">
							<input name="courseQuery" type="text" class="form-control" placeholder="Search for courses by abbreviation or title">
							<span class="input-group-btn">
								<button class="btn-u" type="submit"><i class="fa fa-search"></i></button>
							</span>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--/container-->
		<!--=== End Search Block ===-->

		<!--=== Search Results ===-->
		<div class="container s-results margin-bottom-50">
			<div class="row">
				<div class="col-md-2 hidden-xs related-search">
					<div class="row">
						<div class="col-md-12 col-sm-4">
							<h3>Quick Links</h3>
							<ul class="list-unstyled">
								<li><a href="courseslower.jsp">Lower Division</a></li>
								<li><a href="coursesall.jsp">All Courses</a></li>
							</ul>
							</ul>
							<hr>
						</div>
					</div>
				</div>
				<!--/col-md-2-->
				<%
					ObjectifyService.register(Course.class);
						List<Course> schools = ObjectifyService.ofy().load().type(Course.class).list();
						Collections.sort(schools);
						int numUpper = 0;
						Iterator<Course> up = schools.iterator();
						while (up.hasNext()){
							Course currentCourse = up.next(); 
							Boolean upperDiv=currentCourse.getUpperDivision();
							if( upperDiv == true){
							numUpper++;
							}
						}
							 pageContext.setAttribute("num_upper",numUpper);
							 
							 int numPages = numUpper/10;
							 if (numUpper%10 !=0)
								 numPages++;
							 
							 pageContext.setAttribute("num_pages",numPages);
				%>

				<div class="col-md-10">
					<span class="results-number">${fn:escapeXml(num_upper)}
						results</span>
					<%
						if (schools.isEmpty()) {
					%><h1>There are no courses entered.:(</h1>
					<%
						} else {
					%>
					<%
						Iterator<Course> upperIterator = schools.iterator();
								                	while (upperIterator.hasNext()){
								                		   Course currentCourse = upperIterator.next(); 
								                		   Boolean upperDiv=currentCourse.getUpperDivision();
								                		   if( upperDiv == true){
								                			   pageContext.setAttribute("course_name",currentCourse.getCourseName());
								                			   pageContext.setAttribute("course_description",currentCourse.getDescription());
								                			   pageContext.setAttribute("course_title",currentCourse.getTitle());
								                			   pageContext.setAttribute("diff_rating",((double)Math.round(currentCourse.getAvg() * 10) / 10));
					                                                   pageContext.setAttribute("work_rating",((double)Math.round(currentCourse.getWork() * 10) / 10));
					                                                   pageContext.setAttribute("use_rating",((double)Math.round(currentCourse.getUse() * 10) / 10));
								                			   String courseName=currentCourse.getCourseName();
					%><script>
                   document.getElementById("<%=courseName%>
																					");
																				</script>
					<%
						String url = "courseinfo.jsp?name=" + courseName;
					%>

					<div class="inner-results">
						<h3>
							<a
								href="courseinfo.jsp?courseName=${fn:escapeXml(course_name)}">${fn:escapeXml(course_name)}
								- ${fn:escapeXml(course_title)}</a>
						</h3>
						<p>${fn:escapeXml(course_description)}</p>
						<span class="label label-blue">Avg. Difficulty: ${fn:escapeXml(diff_rating)}</span>
						<span class="label label-purple">Avg. Workload: ${fn:escapeXml(work_rating)}</span>
						<span class="label label-red">Avg. Usefulness: ${fn:escapeXml(use_rating)}</span>
					</div>
					<hr>
					<%
						}
								                		
								           
								                	}
								                }
					%>



					<div class="margin-bottom-30"></div>

					<div class="text-left">
						<!--                     <ul class="pagination"> -->
						<!--                         <li><a href="coursesupper.jsp">«</a></li> -->
						<!--                         <li class="active"><a href="coursesupper.jsp">1</a></li> -->
						<!--                         <li><a href="#">2</a></li> -->
						<!--                         <li><a href="#">3</a></li> -->
						<!--                         <li><a href="#">...</a></li> -->
						<!--                         <li><a href="#">157</a></li> -->
						<!--                         <li><a href="#">158</a></li> -->
						<!--                         <li><a href="#">»</a></li> -->
						<!--                     </ul>                                                             -->
					</div>
				</div>
				<!--/col-md-10-->
			</div>
		</div>
		<!--/container-->
		<!--=== End Search Results ===-->

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
						<p class="copyright-space">2014 &copy; AdviseMe. ALL Rights
							Reserved.</p>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Copyright ===-->
	</div>
	<!--/End Wrapepr-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="assets/plugins/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
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
		if ("${fn:escapeXml(guest)}" == "false") {
			console.log('1');
			if ("${fn:escapeXml(isLoggedIn)}" == "true") {
				console.log('2');
				document.getElementById("advisename").innerHTML = "Welcome, ${fn:escapeXml(first)} ${fn:escapeXml(last)}";
				document.getElementById("advisename").href = "manageaccount.jsp";
				document.getElementById("adviseloginbutton").href = "logout.jsp";
				document.getElementById("adviseloginbutton").innerHTML = "Logout";
			} else {
				console.log('3');
				document.getElementById("advisename").innerHTML = "Welcome, Guest";
				document.getElementById("adviseloginbutton").href = "login.jsp?error=false";
				document.getElementById("adviseloginbutton").innerHTML = "Login";
			}
		} else {
			console.log('4');
			document.getElementById("advisename").innerHTML = "Welcome, Guest";
			document.getElementById("adviseloginbutton").href = "login.jsp?error=false";
			document.getElementById("adviseloginbutton").innerHTML = "Login";
		}
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
