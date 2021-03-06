<%@ page import="java.util.*"%>
<%@ page import="webapp.datastoreObjects.*"%>
<%@ page import="com.googlecode.objectify.Objectify"%>
<%@ page import="com.googlecode.objectify.ObjectifyService"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
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
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="assets/css/pages/blog.css">

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
                        <li class="active">
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
		<div class="breadcrumbs-v3">
			<div class="container">
				<h1 class="pull-left">Forum</h1>
			</div>
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->


		<%
			ObjectifyService.register(Post.class);
		List<Post> posts = ObjectifyService.ofy().load().type(Post.class).list();
		Collections.sort(posts);
		Iterator<Post> low = posts.iterator();
		while (low.hasNext()){
			Post currentPost = low.next(); 

		}
		pageContext.setAttribute("postcount",posts.size());
		%>


		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row blog-page">
				<!-- Left Sidebar -->
				<div class="col-md-9 md-margin-bottom-40">
					<!--Blog Post-->
					<div class="row blog blog-medium margin-bottom-40">
						<%
							if (posts.isEmpty()) {
						%><h1>There are no posts to display</h1>
						<%
							} else {
						%>
						<%
							ObjectifyService.register(User.class);
						                    List<User> userList = ObjectifyService.ofy().load().type(User.class).list();
						                	Iterator<Post> lowerIterator = posts.iterator();
						                	while (lowerIterator.hasNext()){
						                		Post currentPost = lowerIterator.next();
						                		
						                		String currentUserID = currentPost.getUserId();
						                		String currentUserName = "";
						                	      for(User user : userList){
						                	         if(user.getfbUserId().equals(currentUserID))
						                	            currentUserName = user.getUsername();
						                	      }
						                		
						                		
						                      	 pageContext.setAttribute("postTitle",currentPost.getTitle());
						                      	pageContext.setAttribute("postContent",currentPost.getContent());
						                       pageContext.setAttribute("postUser",currentPost.getUserId());
						                       pageContext.setAttribute("postUserName",currentUserName);
						                       pageContext.setAttribute("postDate",currentPost.getDate());
						                       pageContext.setAttribute("postID",currentPost.getId().toString());
// pageContext.setAttribute("postRating",currentPost.getRating());
						%>



						<div class="col-md-4">

							<h2>
								<a
									href="forumpost.jsp?postID=${fn:escapeXml(postID)}">${fn:escapeXml(postTitle)}</a>
							</h2>

							<ul class="list-unstyled list-inline blog-info">
								<li><i class="fa fa-calendar"></i>${fn:escapeXml(postDate)}</li>
								<li><i class="fa fa-pencil"></i>${fn:escapeXml(postUserName)}</li>
							</ul>

								<a class="btn-u btn-brd rounded btn-u-default btn-u-xs"
									href="forumpost.jsp?postID=${fn:escapeXml(postID)}"><i
									class="fa fa-location-arrow"></i> Read More</a>
<%-- 									<button class="btn-u btn-u-green" type="button">Post Rating: ${fn:escapeXml(postRating)}</button> --%>
							</p>
							<hr>
						</div>


						<%
							}
						                		
						                	
						                	}
						%>

					</div>
					<!--End Blog Post-->

					<hr class="margin-bottom-40">


					<!--                 Pagination -->
					<!--                 <div class="text-center"> -->
					<!--                     <ul class="pagination"> -->
					<!--                         <li><a href="#">�</a></li> -->
					<!--                         <li><a href="#">1</a></li> -->
					<!--                         <li><a href="#">2</a></li> -->
					<!--                         <li class="active"><a href="#">3</a></li> -->
					<!--                         <li><a href="#">4</a></li> -->
					<!--                         <li><a href="#">5</a></li> -->
					<!--                         <li><a href="#">6</a></li> -->
					<!--                         <li><a href="#">7</a></li> -->
					<!--                         <li><a href="#">8</a></li> -->
					<!--                         <li><a href="#">�</a></li> -->
					<!--                     </ul>                                                             -->
					<!--                 </div> -->
					<!--                 End Pagination -->
				</div>
				<!-- End Left Sidebar -->

				<!-- Right Sidebar -->
				<div class="col-md-3">
					<div class="span3">
						<!-- 				<div class="col-md-4"> -->
						<button
							class="btn-u btn-brd btn-block btn-brd-hover btn-u-lg rounded-4x btn-u-dark-blue"
							type="button"
							onclick="window.location.replace('/addforumpost.jsp')">Create
							a Post</button>
						<!-- 				</div> -->
					</div>
					<br>
					<!-- Feedback -->
					<div class="headline headline-md">
						<h2>Student Feedback</h2>
					</div>
					<blockquote class="hero-unify">
						<p>I don't even know what I was doing with my life before
							AdviseMe.</p>
						<small>Alex Wishlinski</small>
					</blockquote>
					<blockquote class="hero-unify">
						<p>... I just can't.</p>
						<small>Mary Ryan Gilmore</small>
					</blockquote>
					<blockquote class="hero-unify">
						<p>Sometimes I wake up in the morning from a hellish nightmare
							where AdviseMe doesn't exist.</p>
						<small>David Sandler</small>
					</blockquote>
					<!-- End Feedback -->
				</div>
				<!-- End Right Sidebar -->
			</div>
			<!--/row-->
		</div>
		<!--/container-->
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
						<p class="copyright-space">2014 &copy; AdviseMe. ALL Rights
							Reserved.</p>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Copyright ===-->
	</div>
	<!--/wrapper-->

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
