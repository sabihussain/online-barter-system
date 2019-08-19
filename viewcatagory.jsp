<%-- 
    Document   : viewcatagory
    Created on : 23 Feb, 2019, 7:23:18 AM
    Author     : user
--%>

<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Conquer</title>
        <!--
        Conquer Template
        http://www.templatemo.com/tm-476-conquer
        -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                </div>   
                <div class="single-page-nav sticky-wrapper" id="tmNavbar">
                    <ul class="nav navbar-nav">

                        <li><a href="user.jsp" class="external">Home</a></li>
                        <li> <a href="index.jsp"class="external">Logout</a></li>
                    </ul>



                </div>   
            </div>
        </nav>    

        <div id="section1">
         <br/><br/><br/>
        </div>

        <div id="section3">
            <!-- Start Services Area -->
        
            <!-- End Services Area -->

            <!-- Start Testimornial Area -->
            <section id="testimornial-area">
                <div class="container">
                    <div class="row text-center">
                       
    <%
        ResultSet rs = DB.executeQuery("select * from category");
        while (rs.next()) {
    %>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
                            <div style="background-color: #ff3333">
                               
                                <h2> <a class="content-link" href="viewsub.jsp?id=<%=rs.getString("cat")%>&c=<%=request.getParameter("c") %>"> <%=rs.getString("cat")%></a></h2>
                               &nbsp;
                               
                            </div>
                        </div>
                    
                 <%}%>   
                     
                    </div>
                  
                </div>
            </section>
            <!-- End Testimornial Area -->
        </div>

        <!-- Start Footer Area -->
        <footer id="footer-area">
            <div class="container">
                <div class="row text-center">
                    <div class="col-sm-12">
                        <div class="footer-content">

                        </div>                
                    </div>
                </div>
            </div>
            <hr>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-center">             
                 </div>
                </div>
            </div>
        </footer>
        <!-- End Footer Area -->

        <script src="js/jquery-1.11.2.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script> <!-- https://github.com/markgoodyear/scrollup -->
        <script src="js/jquery.singlePageNav.min.js"></script> <!-- https://github.com/ChrisWojcik/single-page-nav -->
        <script src="js/parallax.js-1.3.1/parallax.js"></script> <!-- http://pixelcog.github.io/parallax.js/ -->
        <script>

            // HTML document is loaded. DOM is ready.
            $(function() {  

                // Parallax
                $('.intro-section').parallax({
                    imageSrc: 'img/bg-1.jpg',
                    speed: 0.2
                });
                $('.services-section').parallax({
                    imageSrc: 'img/bg-2.jpg',
                    speed: 0.2
                });
                $('.contact-section').parallax({
                    imageSrc: 'img/bg-3.jpg',
                    speed: 0.2
                });    

                // jQuery Scroll Up / Back To Top Image
                $.scrollUp({
                    scrollName: 'scrollUp',      // Element ID
                    scrollDistance: 300,         // Distance from top/bottom before showing element (px)
                    scrollFrom: 'top',           // 'top' or 'bottom'
                    scrollSpeed: 1000,            // Speed back to top (ms)
                    easingType: 'linear',        // Scroll to top easing (see http://easings.net/)
                    animation: 'fade',           // Fade, slide, none
                    animationSpeed: 300,         // Animation speed (ms)		        
                    scrollText: '', // Text for element, can contain HTML		        
                    scrollImg: true            // Set true to use image		        
                });

                // ScrollUp Placement
                $( window ).on( 'scroll', function() {

                    // If the height of the document less the height of the document is the same as the
                    // distance the window has scrolled from the top...
                    if ( $( document ).height() - $( window ).height() === $( window ).scrollTop() ) {

                        // Adjust the scrollUp image so that it's a few pixels above the footer
                        $('#scrollUp').css( 'bottom', '80px' );

                    } else {      
                        // Otherwise, leave set it to its default value.
                        $('#scrollUp').css( 'bottom', '30px' );        
                    }
                });

                $('.single-page-nav').singlePageNav({
                    offset: $('.single-page-nav').outerHeight(),
                    speed: 1500,
                    filter: ':not(.external)',
                    updateHash: true
                });

                $('.navbar-toggle').click(function(){
                    $('.single-page-nav').toggleClass('show');
                });

                $('.single-page-nav a').click(function(){
                    $('.single-page-nav').removeClass('show');
                });
        
            });
        </script>
    </body>
</html>












   
  