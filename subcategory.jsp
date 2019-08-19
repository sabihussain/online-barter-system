<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <body >
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

                  <li><a href="admin.jsp" class="external">Home</a></li>
                     <li><a href="category.jsp" class="external"> Category</a></li>
                      <li><a href="brand.jsp" class="external"> Brand</a></li>
                      <li><a href="viewproduct.jsp"class="external">View Product</a></li>
            <li> <a href="viewregister.jsp"class="external">View User</a></li>
               <li> <a href="index.jsp"class="external">Logout</a></li>
                    </ul>
  
         
           
                </div>   
            </div>
        </nav>    

        <div id="section1">
          <br/><br/><br/><br/><br/>
        </div>
    
     
    

        <!-- Start Footer Area -->
        <footer id="footer-area">
            <div class="container">
                <div class="row text-center">
                    <div class="col-sm-12">
                        <div class="footer-content">
                            <center>
       <form action="subaction.jsp">
            <table>
        <tr>
            <td>
                Category:</td>
        </tr>
        <tr>
            <td> <input type="text" name="sub1" value="<%=request.getParameter("id")%>"/></td>
        </tr>
        <tr>
            <td>Sub Category:</td></tr>
        <tr>
            <td><input type="text" name="sub2"/></td>
            
        </tr>
        <tr>
         
            <td><input style="width:180px" type="submit" value="SUBMIT"/></td>
        </tr>
        
            </table>
        </form>
                             <br/>
                                <table border="1" >
                <tr >
                   
                    <th>&nbsp;Sub Category Name &nbsp;</th>
                    
                    <th>&nbsp;Action &nbsp;</th>

                </tr>
                <%
                ResultSet rs = DB.executeQuery("select * from subcategory where cat='"+request.getParameter("id")+"'");
                while(rs.next())
                                       {
                    %>
                    <tr>
                        
                        <td>&nbsp; <%= rs.getString("subcategory")%>
                       &nbsp; </td>
                      <td>&nbsp;<a href="dels.jsp?id=<%=rs.getString("subcode")%>&a=<%=rs.getString("cat")%>">Delete</a>&nbsp;</td> 
                   
                   </tr>
                       <% } %>
            </table>
    </center>
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

      
   
          
  
 