<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>AdviseMe | Error!</title>

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
    <link rel="stylesheet" href="assets/css/pages/page_404_error2.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/orange.css" id="style_color">
	
    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
</head> 

<body>

    <!--=== Error V3 ===-->
    <div class="container content">     
        <!-- Error Block -->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="error-v3">
                    <h2>Uh Oh!</h2>
                    <p>An error has occurred, and you have been redirected here to prevent any possible damage! </p>
                </div>
            </div>
        </div>
        <!-- End Error Block -->

        <!-- Begin Service Block V2 -->
        <div class="row servive-block-v2">
            <div class="col-md-4">
                <div class="servive-block-in service-or">
                    <div class="service-bg"></div>
                    <i class="icon-directions"></i>
                    <h4>Go Back to Home?</h4>                       
                    <a class="btn-u btn-brd btn-brd-hover btn-u-light" href="home.jsp"> Go back to Home Page</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="servive-block-in service-or">
                    <div class="service-bg"></div>
                    <i class="icon-bulb"></i>
                    <h4>The cause of the problem</h4>
                    <p><%=exception.getMessage() %></p>
                </div>
            </div>  
            
            <div class="col-md-4">
                <div class="servive-block-in service-or">
                    <div class="service-bg"></div>
                    <i class="icon-users"></i>
                    <h4>Contact us</h4>
                    <a class="btn-u btn-brd btn-brd-hover btn-u-light" href="contact.jsp"> Contact Us</a>
                </div>
            </div>
        </div>    
        <!-- End Service Block V2 -->
    </div>  
    <!--=== End Error-V3 ===-->

    <!--=== Sticky Footer ===-->
    <div class="container sticky-footer">
        <p class="copyright-space">
            2014 &copy; AdviseMe. ALL Rights Reserved.  
        </p>  
    </div>
    <!--=== End Sticky-Footer ===-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
<script type="text/javascript">
    $.backstretch([
      "assets/img/blur/img1.jpg"
      ])
</script>
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