<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="webapp.addServlets.*"%>
<%@ page import="webapp.datastoreObjects.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Collections"%>
<%@ page import="com.googlecode.objectify.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>AdviseMe | Add Courses</title>

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
<link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="assets/css/pages/page_contact.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="assets/css/themes/orange.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="assets/css/custom.css">
</head>

<body>
	<%
		String ids = null;
		String picurl = null;
		String first = null;
		String last = null;
		String isLoggedIn = null;
		HttpSession mysession = request.getSession(false);
		if(mysession.getAttribute("id")!=null){
			ids = (String) mysession.getAttribute("userid");
			picurl = (String) mysession.getAttribute("pic");
			first = (String) mysession.getAttribute("first");
			last = (String) mysession.getAttribute("last");
			isLoggedIn = (String) mysession.getAttribute("isLoggedIn");
			pageContext.setAttribute("id", ids);
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


	<!--=== Breadcrumbs v3 ===-->
    <div class="breadcrumbs-v3">
        <div class="container">
            <h1 class="pull-left">Add Courses You Have Taken</h1>
        </div>
    </div>
    <!--=== End Breadcrumbs v3 ===-->


		<!--=== Content Part ===-->
		<form action="/addusercourses?id=${fn:escapeXml(id)}" method="post">
			<h3>Courses:</h3>
			<h3>What courses have you taken/are taking:</h3>
			<div>

			<div>
			<h3>Lower Division</h3>
			<input type="checkbox" name="course" id="EE 302" value="EE 302">EE 302 - Introduction to Electrical Engineering<br>
			<input type="checkbox" name="course" id="EE 302H" value="EE 302H">EE 302H - Introduction to Electrical and Computer Engineering: Honors<br>
			<input type="checkbox" name="course" id="EE 306" value="EE 306">EE 306 - Introduction to Computing<br>
			<input type="checkbox" name="course" id="EE 309S" value="EE 309S">EE 309S - Development of a Solar-Powered Vehicle<br>
			<input type="checkbox" name="course" id="EE 312" value="EE 312">EE 312 - Software Design and Implementation I<br>
			<input type="checkbox" name="course" id="EE 313" value="EE 313">EE 313 - Linear Systems and Signals<br>
			<input type="checkbox" name="course" id="EE 316" value="EE 316">EE 316 - Digital Logic Design<br>
			<input type="checkbox" name="course" id="EE 319K" value="EE 319K">EE 319K - Introduction to Embedded Systems<br>
			<input type="checkbox" name="course" id="EE 411" value="EE 411">EE 411 - Circuit Theory<br>
			<br>
			
			
			<h3>Upper Division</h3>
			<input type="checkbox" name="course" id="EE 125N" value="EE 125N">EE 125N - Cooperative Engineering<br>
			<input type="checkbox" name="course" id="EE 160" value="EE 160">EE 160 - Special Problems in Electrical and Computer Engineering<br>
			<input type="checkbox" name="course" id="EE 225MA" value="EE 225MA">EE 225MA - Cooperative Engineering<br>
			<input type="checkbox" name="course" id="EE 225MB" value="EE 225MB">EE 225MB - Cooperative Engineering<br>
			<input type="checkbox" name="course" id="EE 260" value="EE 260">EE 260 - Special Problems in Electrical and Computer Engineering<br>
			<input type="checkbox" name="course" id="EE 325" value="EE 325">EE 325 - Electromagnetic Engineering<br>
			<input type="checkbox" name="course" id="EE 325K" value="EE 325K">EE 325K - Antennas and Wireless Propagation<br>
			<input type="checkbox" name="course" id="EE 325LX" value="EE 325LX">EE 325LX - Cooperative Engineering<br>
			<input type="checkbox" name="course" id="EE 325LY" value="EE 325LY">EE 325LY - Cooperative Engineering<br>
			<input type="checkbox" name="course" id="EE 325LZ" value="EE 325LZ">EE 325LZ - Cooperative Engineering<br>
			<input type="checkbox" name="course" id="EE 331" value="EE 331">EE 331 - Electrical Circuits, Electronics, and Machinery<br>
			<input type="checkbox" name="course" id="EE 333T" value="EE 333T">EE 333T - Engineering Communication<br>
			<input type="checkbox" name="course" id="EE 334K" value="EE 334K">EE 334K - Quantum Theory Electronic Materials<br>
			<input type="checkbox" name="course" id="EE 338K" value="EE 338K">EE 338K - Analog Electronics<br>
			<input type="checkbox" name="course" id="EE 338L" value="EE 338L">EE 338L - Analog Integrated Circuit Design<br>
			<input type="checkbox" name="course" id="EE 339" value="EE 339">EE 339 - Solid-State Electronic Devices<br>
			<input type="checkbox" name="course" id="EE 341" value="EE 341">EE 341 - Electric Drives and Machines<br>
			<input type="checkbox" name="course" id="EE 347" value="EE 347">EE 347 - Modern Optics<br>
			<input type="checkbox" name="course" id="EE 351K" value="EE 351K">EE 351K - Probability and Random Processes<br>
			<input type="checkbox" name="course" id="EE 351M" value="EE 351M">EE 351M - Digital Signal Processing<br>
			<input type="checkbox" name="course" id="EE 360" value="EE 360">EE 360 - Special Problems in Electrical and Computer Engineering<br>
			<input type="checkbox" name="course" id="EE 360C" value="EE 360C">EE 360C - Algorithms<br>
			<input type="checkbox" name="course" id="EE 360F" value="EE 360F">EE 360F - Intro to Software Engineering<br>
			<input type="checkbox" name="course" id="EE 360K" value="EE 360K">EE 360K - Introduction to Digital Communications<br>
			<input type="checkbox" name="course" id="EE 360P" value="EE 360P">EE 360P - Concurrent and Distributed Systems<br>
			<input type="checkbox" name="course" id="EE 360T" value="EE 360T">EE 360T - Software Testing<br>
			<input type="checkbox" name="course" id="EE 361Q" value="EE 361Q">EE 361Q - Requirements Engineering<br>
			<input type="checkbox" name="course" id="EE 362K" value="EE 362K">EE 362K - Introduction to Automatic Control<br>
			<input type="checkbox" name="course" id="EE 362S" value="EE 362S">EE 362S - Development of Solar-Powered Vehicle<br>
			<input type="checkbox" name="course" id="EE 363M" value="EE 363M">EE 363M - Microwave and Radio Frequency Engineering<br>
			<input type="checkbox" name="course" id="EE 363N" value="EE 363N">EE 363N - Engineering Acoustics<br>
			<input type="checkbox" name="course" id="EE 364D" value="EE 364D">EE 364D - Introduction to Engineering Design<br>
			<input type="checkbox" name="course" id="EE 364E" value="EE 364E">EE 364E - Interdiscip Entrepreneurship<br>
			<input type="checkbox" name="course" id="EE 366" value="EE 366">EE 366 - Engineering Economics I<br>
			<input type="checkbox" name="course" id="EE 368L" value="EE 368L">EE 368L - Power Systems Apparatus and Laboratory<br>
			<input type="checkbox" name="course" id="EE 369" value="EE 369">EE 369 - Power Systems Engineering<br>
			<input type="checkbox" name="course" id="EE 370K" value="EE 370K">EE 370K - Computer Control Systems<br>
			<input type="checkbox" name="course" id="EE 370N" value="EE 370N">EE 370N - Introduction to Robotics and Mechatronics<br>
			<input type="checkbox" name="course" id="EE 371R" value="EE 371R">EE 371R - Digital Image and Video Processing<br>
			<input type="checkbox" name="course" id="EE 372N" value="EE 372N">EE 372N - Telecommunication Networks<br>
			<input type="checkbox" name="course" id="EE 374K" value="EE 374K">EE 374K - Biomedical Electronics Instrument Design<br>
			<input type="checkbox" name="course" id="EE 374L" value="EE 374L">EE 374L - Applications of Biomedical Engineering - EE MAJ<br>
			<input type="checkbox" name="course" id="EE 377E" value="EE 377E">EE 377E - Interdiscipline Entrepreneurship: Elective<br>
			<input type="checkbox" name="course" id="EE 379K" value="EE 379K">EE 379K - Software Evolution<br>
			<input type="checkbox" name="course" id="EE 422C" value="EE 422C">EE 422C - Software Design and Implementation II<br>
			<input type="checkbox" name="course" id="EE 438" value="EE 438">EE 438 - Fundamentals Electronic Circuits<br>
			<input type="checkbox" name="course" id="EE 440" value="EE 440">EE 440 - Integrated Circuit Nanomanufacturing Techniques<br>
			<input type="checkbox" name="course" id="EE 445L" value="EE 445L">EE 445L - Embedded Systems Design Lab<br>
			<input type="checkbox" name="course" id="EE 445M" value="EE 445M">EE 445M - Embedded and Real-Time Systems Laboratory<br>
			<input type="checkbox" name="course" id="EE 445S" value="EE 445S">EE 445S - Real-Time Digital Signal Processing Laboratory<br>
			<input type="checkbox" name="course" id="EE 460" value="EE 460">EE 460 - Special Problems in Electrical and Computer Engineering<br>
			<input type="checkbox" name="course" id="EE 460M" value="EE 460M">EE 460M - Digital Systems Design Using HDL<br>
			<input type="checkbox" name="course" id="EE 460N" value="EE 460N">EE 460N - Computer Architecture<br>
			<input type="checkbox" name="course" id="EE 460R" value="EE 460R">EE 460R - Introduction to VLSI Design<br>
			<input type="checkbox" name="course" id="EE 461L" value="EE 461L">EE 461L - Software Engineering and Design Laboratory<br>
			<input type="checkbox" name="course" id="EE 462L" value="EE 462L">EE 462L - Power Electronics Laboratory<br>
			<input type="checkbox" name="course" id="EE 464G" value="EE 464G">EE 464G - Multidisciplinary Senior Design Project<br>
			<input type="checkbox" name="course" id="EE 464H" value="EE 464H">EE 464H - Honors Senior Design Project<br>
			<input type="checkbox" name="course" id="EE 464K" value="EE 464K">EE 464K - Senior Design Project<br>
			<input type="checkbox" name="course" id="EE 464R" value="EE 464R">EE 464R - Research Senior Design Project<br>
			<input type="checkbox" name="course" id="EE 464S" value="EE 464S">EE 464S - Start-Up Senior Design Project<br>
			<input type="checkbox" name="course" id="EE 471C" value="EE 471C">EE 471C - Wireless Communications Laboratory<br>
			<input type="checkbox" name="course" id="EE 679HA" value="EE 679HA">EE 679HA - Undergraduate Honors Thesis<br>
			<input type="checkbox" name="course" id="EE 679HB" value="EE 679HB">EE 679HB - Undergraduate Honors Thesis<br>
			<br>	
</div>				
	</div>
	<br>
			<div>
			<div>
					<textarea name="id" id="id" rows="1" cols="30"
						style="display: none;"></textarea>
				</div>
				<input type="submit" value="Add Courses" />
			</div>
			<br>
			<input type="button" value="Cancel"
				onclick="window.location.href='/home.jsp'">
			
		</form>
		<br>
		<%
			ObjectifyService.register(User.class);
			List<User> users = ObjectifyService.ofy().load().type(User.class).list();
			Collections.sort(users);
			String id = request.getParameter("id");
			for(User user: users){
				if(user.getfbUserId().equals(id)){
					ArrayList<String> courseList = user.getUserClassList();
					Iterator<String> iterator = courseList.iterator();
					while(iterator.hasNext()){
						String identifier = (String)iterator.next();
		%><script>
			    		document.getElementById("<%=identifier%>").checked = true;
						</script>
		<%
			}
					break;
				}
			}
		%>
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
	</div>
	<!--/wrapepr-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="assets/plugins/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script type="text/javascript" src="assets/plugins/gmap/gmap.js"></script>
	<script type="text/javascript"
		src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/pages/page_contacts.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			App.initSliders();
			ContactPage.initMap();
		});
	</script>
	<script>
	if ("${fn:escapeXml(guest)}" == "false") {
		console.log('1');
		if("${fn:escapeXml(isLoggedIn)}" == "true"){
			console.log('2');
			document.getElementById("advisename").innerHTML = "Welcome, ${fn:escapeXml(first)} ${fn:escapeXml(last)}";
			document.getElementById("advisename").href = "manageaccount.jsp";
			document.getElementById("adviseloginbutton").href = "logout.jsp";
			document.getElementById("adviseloginbutton").innerHTML = "Logout";
		}else{
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
