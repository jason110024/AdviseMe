<%@ page import="java.util.*"%>
<%@ page import="webapp.datastoreObjects.Course"%>
<%@ page import="com.googlecode.objectify.Objectify"%>
<%@ page import="com.googlecode.objectify.ObjectifyService"%>
<%@ page import="com.google.appengine.api.users.User"%>
<%@ page import="com.google.appengine.api.users.UserService"%>
<%@ page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | Course Info</title>

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
    <link rel="stylesheet" href="assets/plugins/fancybox/source/jquery.fancybox.css">           
    <link rel="stylesheet" href="assets/plugins/bxslider/jquery.bxslider.css">
    <link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">
	<link type="text/css" rel="stylesheet" href="rateit.css">
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/orange.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
    
    <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="jquery.rateit.js"></script>
	<%
	String id = null;
	String picurl = null;
	String first = null;
	String last = null;
	String isLoggedIn = null;
	String isfb = "false";
	HttpSession mysession = request.getSession(false);
	if(mysession.getAttribute("id")!=null){
		id = (String) mysession.getAttribute("userid");
		picurl = (String) mysession.getAttribute("pic");
		first = (String) mysession.getAttribute("first");
		last = (String) mysession.getAttribute("last");
		isLoggedIn = (String) mysession.getAttribute("isLoggedIn");
		isfb = (String) mysession.getAttribute("isfb");
		pageContext.setAttribute("id", id);
		pageContext.setAttribute("pic",picurl);
		pageContext.setAttribute("first", first);
		pageContext.setAttribute("last", last);
		pageContext.setAttribute("isLoggedIn", isLoggedIn);
		pageContext.setAttribute("isfb",isfb);
		if(isLoggedIn.equalsIgnoreCase("true")){
			pageContext.setAttribute("readonly", "false");

		}else{
			pageContext.setAttribute("readonly", "true");
		}
		pageContext.setAttribute("guest","false");
	}else{
		pageContext.setAttribute("isfb", "false");
		pageContext.setAttribute("guest", "true");
		pageContext.setAttribute("readonly", "true");

	}
	%>
	<script>
		function GetURLParameter(sParam){
			var sPageURL = window.location.search.substring(1);
			var sURLVariables = sPageURL.split('&');
			for(var i=0;i<sURLVariables.length;i++){
				var sParameterName = sURLVariables[i].split('=');
				if(sParameterName[0]==sParam){
					return sParameterName[1];
				}
			}
		}
	
		function subscribe() {
			var email = prompt("Please enter your email","Name@Domain.com");
			var courseName = GetURLParameter('courseName');
			$.ajax({
				type : 'GET',
				url : "addcoursesubscriber?email=" + email + "&course=" + courseName,
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
</head> 

<body>
  <script>
	window.fbAsyncInit = function(){
		FB.init({
			appId      : '125801300852907',
		    status     : true, // check login status
		    cookie     : true, // enable cookies to allow the server to access
								// the session
		    xfbml      : true  // parse XFBML
		});
		FB.Event.subscribe('auth.authResponseChange', function(response){
			if(response.status === 'connected'){
		    	test();
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
  function test(){
	  if("${fn:escapeXml(isfb)}"=="true"){
		  // need to run fb check (/me/friends/xxxx)
		  var friendslist = new Array();
		  <% 
		  		ObjectifyService.register(Course.class);
				String name = request.getParameter("courseName");
				Course course = ObjectifyService.ofy().load().type(Course.class).id(name).get(); 
				if(course == null){
					throw new Exception("Invalid Course");
				}
				pageContext.setAttribute("courseName",name);
				// for(Course course : courses){
				// if(course.getCourseName().equals(name)){
						pageContext.setAttribute("course_title", course.getTitle());
						pageContext.setAttribute("course_abbreviation", course.getCourseName()); 
						pageContext.setAttribute("course_description", course.getDescription());
						pageContext.setAttribute("course_professorList", course.getProfessorList(true));
						pageContext.setAttribute("course_semestersTaught", course.getSemesterTaught(true));
						pageContext.setAttribute("course_prereq", course.getPrereq(true));
						pageContext.setAttribute("course_syllabus_link", course.getSyllabusLink());
						pageContext.setAttribute("course_eval_link", course.getEvalLink());
						pageContext.setAttribute("course_num_users_rating", course.getNumRating());
						pageContext.setAttribute("course_rating", ((double)Math.round(course.getAvg() * 10) / 10));
						pageContext.setAttribute("course_num_users_workload", course.getNumWorkload());
						pageContext.setAttribute("course_workload", ((double)Math.round(course.getWork() * 10) / 10));
						pageContext.setAttribute("course_num_users_useful", course.getNumUseful());
						pageContext.setAttribute("course_useful", ((double)Math.round(course.getUse() * 10) / 10));
						ArrayList<String> users = course.getUserTaken();
						if(users!=null&&users.size()>0){
							for(int i=0;i<users.size();i++){
								String temp = users.get(i);
								%>
								friendslist[<%=i%>] = '<%=temp %>';
								<%
							}
						}
					// break;
					// }
					
				// }
			%>
		  var i;
		  for(i=0;i<friendslist.length;i++){  
			  console.log('/me/friends/'+friendslist[i]);
			  FB.api('/me/friends/'+friendslist[i], function(response) {
					if (response && !response.error) {
						console.log(response.id);
					}
				});
		  }  
	  }
  }
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

<!--     === Breadcrumbs === -->
    <div class="breadcrumbs-v3">
        <div class="container">
            <h1 class="pull-left">${fn:escapeXml(course_title)}</h1>
        </div>
     </div>
<!--     === End Breadcrumbs === -->

    <!--=== Content Part ===-->
    <div class="container content">     
        <div class="row">
            <div class="col-md-9">
                <!-- Our Services -->
                <div class="row margin-bottom-20">
                    
<!--                     <div class="col-md-4"> -->
<!--                         <div class="servive-block servive-block-red"> -->
<!--                             <i class="icon-custom icon-color-light rounded-x icon-line icon-fire"></i> -->
<!--                             <h2 class="heading-md">Red Box</h2> -->
<!--                             <p>Donec id elit non mi porta gravida at eget metus id elit mi egetine usce dapibus elit nondapibus</p> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-md-4"> -->
<!--                         <div class="servive-block servive-block-sea">             -->
<!--                             <i class="icon-custom icon-color-light rounded-x icon-line icon-support"></i> -->
<!--                             <h2 class="heading-md">Turquoise Box</h2> -->
<!--                             <p>Donec id elit non mi porta gravida at eget metus id elit mi egetine usce dapibus elit nondapibus</p> -->
<!--                         </div> -->
<!--                     </div> -->
                </div><!--/welcome-block-->
                <!-- End Our Services -->

                <!-- Blockquotes -->
                <div class="headline"><h3>Course Description</h3></div>
                <p>${fn:escapeXml(course_description)}</p>
                <br>

					<!-- End Blockquotes -->
					
					
					
<div class="row">
		<div class="span3">
			<div class="col-md-4">
				<h4>Past Professors:</h4>
				<br>
				<p>${fn:escapeXml(course_professorList)}</p>
			</div>
		</div>
		<div class="span3">
			<div class="col-md-4">
				<h4>Semesters Taught:</h4>
				<br>
				<p>${fn:escapeXml(course_semestersTaught)}</p>
			</div>
		</div>
		<div class="span3">
			<div class="col-md-4">
				<h4>Pre-Requisites:</h4>
				<br>
				<p>${fn:escapeXml(course_prereq)}</p>
			</div>
		</div>
</div>
<br>
<br>


<!-- button start -->

<div class="col-md-4">
<div class="servive-block servive-block-blue">
                            <i class="icon-custom icon-color-light rounded-x icon-line icon-wrench"></i>
                            <h2 class="heading-md">Course Difficulty: </h2>
                            <p>
                            
 <div class="rateit" id="rateit5" data-rateit-resetable="false" data-rateit-value="${fn:escapeXml(course_rating)}" data-rateit-ispreset="true" data-rateit-readonly="${fn:escapeXml(readonly)}" data-rateit-step=".5" data-rateit-min="0" data-rateit-max="10"></div>
 <script type="text/javascript">
    $("#rateit5").bind('rated', 
    		function(event, value){
    			var courseName = GetURLParameter('courseName');
				$.ajax({
					type: 'GET',
					url: "updatecourserating?rating="+value+"&course="+courseName+"&id=${fn:escapeXml(id)}",
					cache: false,
					success: function(response){
					}
				});
			});
    $('#rateit5').on('beforerated', function (e, value) {
        if (!confirm('Are you sure you want to rate this item: ' +  value + ' stars?')) {
            e.preventDefault();
        }
    });       
</script>   

 

<p>${fn:escapeXml(course_num_users_rating)} users rate this course: ${fn:escapeXml(course_rating)}</p>
</div>
 </div>                       
                        
 <div class="col-md-4">                       
                                                <div class="servive-block servive-block-purple">
                            <i class="icon-custom icon-color-light rounded-x icon-line  icon-docs"></i>
                            <h2 class="heading-md">Course Workload: </h2>
                            <p>
                            
 <div class="rateit" id="rateit6" data-rateit-resetable="false" data-rateit-value="${fn:escapeXml(course_workload)}" data-rateit-ispreset="true" data-rateit-readonly="${fn:escapeXml(readonly)}" data-rateit-step=".5" data-rateit-min="0" data-rateit-max="10"></div>
 <script type="text/javascript">
    $("#rateit6").bind('rated', 
    		function(event, value){
    			var courseName = GetURLParameter('courseName');
				$.ajax({
					type: 'GET',
					url: "updatecourseworkload?workload="+value+"&course="+courseName+"&id=${fn:escapeXml(id)}",
					cache: false,
					success: function(response){
					}
				});
			});
    $('#rateit6').on('beforerated', function (e, value) {
        if (!confirm('Are you sure you want to rate this item: ' +  value + ' stars?')) {
            e.preventDefault();
        }
    });       
</script>   

 

<p>${fn:escapeXml(course_num_users_workload)} users rate this course: ${fn:escapeXml(course_workload)}</p>
                        </div>
   
   
   </div>
   
   <div class="col-md-4">                     
                                                                    <div class="servive-block servive-block-red">
                            <i class="icon-custom icon-color-light rounded-x icon-line icon-diamond"></i>
                            <h2 class="heading-md">Course Usefulness: </h2>
                            <p>
                            
 <div class="rateit" id="rateit7" data-rateit-resetable="false" data-rateit-value="${fn:escapeXml(course_useful)}" data-rateit-ispreset="true" data-rateit-readonly="${fn:escapeXml(readonly)}" data-rateit-step=".5" data-rateit-min="0" data-rateit-max="10"></div>
 <script type="text/javascript">
    $("#rateit7").bind('rated', 
    		function(event, value){
    			var courseName = GetURLParameter('courseName');
				$.ajax({
					type: 'GET',
					url: "updatecourseuseful?useful="+value+"&course="+courseName+"&id=${fn:escapeXml(id)}",
					cache: false,
					success: function(response){
					}
				});
			});
    $('#rateit7').on('beforerated', function (e, value) {
        if (!confirm('Are you sure you want to rate this item: ' +  value + ' stars?')) {
            e.preventDefault();
        }
    });       
</script>   

 

<p>${fn:escapeXml(course_num_users_useful)} users rate this course: ${fn:escapeXml(course_useful)}</p>
                        </div>  
</div>
<!-- button end -->






				</div>

            <div class="col-md-3">
                <!-- About Us -->
                <div class="margin-bottom-30">
                    

<!-- new button start -->
<br>
<br>
<br>
<button class="btn-u btn-u-dark-blue" type="button" onclick="window.location='${fn:escapeXml(course_eval_link)}'">UT Course Evaluations</button>			
<br>
<br>
<br>

<button class="btn-u btn-u-dark-blue" type="button" id=syllabi onclick="window.location='${fn:escapeXml(course_syllabus_link)}'">UT Past Syllabi</button>		
<br>
<br>
<br>
<button class="btn-u btn-u-dark-blue" type="button" id="editbutton" onclick="window.location='editcourse.jsp?courseName=${fn:escapeXml(course_abbreviation)}'">Edit this Course?</button>
<script>
 	if ("${fn:escapeXml(guest)}" == "true" || "${fn:escapeXml(isLoggedIn)}" == "false") {
 			document.getElementById("editbutton").style.visibility='hidden';			
 	}
	
	
</script>
<!-- newbutton end -->


 </div>            
            
 
            </div><!--/col-md-3-->
        </div><!--/row-->        

    </div><!--/container-->     
    <!--=== End Content Part ===-->



<!--Start Disqus -->
<div id="disqus_thread"></div>
	<script type="text/javascript">
		var disqus_shortname = 'adviseme'; // required: replace example with
											// your forum shortname

		/* * * DON'T EDIT BELOW THIS LINE * * */
		(function() {
			var dsq = document.createElement('script');
			dsq.type = 'text/javascript';
			dsq.async = true;
			dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
			(document.getElementsByTagName('head')[0] || document
					.getElementsByTagName('body')[0]).appendChild(dsq);
		})();
	</script>
	<noscript>
		Please enable JavaScript to view the <a
			href="http://disqus.com/?ref_noscript">comments powered by
			Disqus.</a>
	</noscript>
	<a href="http://disqus.com" class="dsq-brlink">comments powered by
		<span class="logo-disqus">Disqus</span>
	</a>
<!--End Disqus -->





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
<script type="text/javascript" src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="assets/plugins/bxslider/jquery.bxslider.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>

<script type="text/javascript">

    jQuery(document).ready(function() {
        App.init();
        App.initSliders();
        App.initFancybox();
        App.initBxSlider();
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