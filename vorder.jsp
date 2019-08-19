

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
                        <li><a href="vorder.jsp" class="external">Received Orders</a></li>
                        <li><a href="vorder_1.jsp" class="external">My Orders</a></li>
                        <li> <a href="index.jsp" class="external">Logout</a></li>
                    </ul>



                </div>   
            </div>
        </nav>    

        <div id="section1">
            <header id="header-area" class="intro-section">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <div class="header-content">
                                

<center><h1 style="background-color: rgba(0,0,0,0.8);width:500px">DEALER'S BAY</h1></center>
                                <h4></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>

        <div id="section2">
            <section id="blog-area">
                <div class="container">
                    <div class="row text-center inner">
                        <div class="col-sm-6">
                            <div class="blog-content">
                                <img src="img/rr-1.jpg" alt="Image">
                                <h2>Orders Received</h2>
                                <table border="2">
                                    <tr>
                                        <th>&nbsp;Product Code&nbsp;</th>
                                        <th>&nbsp;Product Name&nbsp;</th>
                                        <th>&nbsp;Ordered Person Details&nbsp;</th>

                                    </tr>
                                    <%
                                        System.out.println("select * from product inner join orders on orders.pcode=product.pcode inner join register on register.id=orders.uid where product.uid=" + session.getAttribute("uid"));
                                        ResultSet rs = DB.executeQuery("select * from product inner join orders on orders.pcode=product.pcode inner join register on register.id=orders.uid where product.uid=" + session.getAttribute("uid"));
                                        while (rs.next()) {
                                    %>
                                    <tr>
                                        <td>
                                            &nbsp; <%=rs.getString("pcode")%>&nbsp;
                                        </td>
                                        <td> &nbsp;<%=rs.getString("pname")%>&nbsp;
                                        </td>
                                        <td> &nbsp;Name :<%=rs.getString("fname")%>&nbsp;<%=rs.getString("lname")%>&nbsp;<br/>
                                            &nbsp;Address :<%=rs.getString("address")%>&nbsp;<br/>
                                            &nbsp;District :<%=rs.getString("dst")%>&nbsp;<br/>
                                            &nbsp;Contact No :<%=rs.getString("contact")%>&nbsp;<br/>
                                            &nbsp;Email Id :<%=rs.getString("email")%>&nbsp;<br/>
                                        </td>
                                    </tr>
                                    <% }%>

                                </table>
                                <br>

                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="blog-content">
                                <img src="img/1-2.jpg" alt="Image">
                            
                                 <h2>Exchanging Orders Request</h2>
                                <table border="2">
                                    <tr>
                                        <th>&nbsp;Product Code&nbsp;</th>
                                        <th>&nbsp;Product Name&nbsp;</th>
                                         <th>&nbsp;Product Exchaning&nbsp;</th>
                                        <th>&nbsp;Ordered Person Details&nbsp;</th>
 <th>&nbsp;Status&nbsp;</th>
 <th colspan="2">Actions</th>
                                    </tr>
                                    <%
                                        System.out.println("select * from product inner join exchange on orders.pcode=product.pcode inner join register on register.id=orders.uid where product.uid=" + session.getAttribute("uid"));
                                        ResultSet rs1 = DB.executeQuery("select * from product inner join exchange on exchange.pcode=product.pcode inner join register on register.id=exchange.uid where product.uid=" + session.getAttribute("uid"));
                                        while (rs1.next()) {
                                    %>
                                    <tr>
                                        <td>
                                            &nbsp; <%=rs1.getString("pcode")%>&nbsp;
                                        </td>
                                        <td> &nbsp;<%=rs1.getString("pname")%>&nbsp;
                                        </td>
                                         <td> &nbsp;<%=rs1.getString("epcode")%>&nbsp;
                                             <br/>-<%
                                             ResultSet r=DB.executeQuery("select amt from product where pcode='"+rs1.getString("epcode")+"'");
                                           r.next();
                                             %>
                                             &nbsp;<%=r.getString("amt")%>&nbsp;
                                        </td>
                                        <td> &nbsp;Name :<%=rs1.getString("fname")%>&nbsp;<%=rs1.getString("lname")%>&nbsp;<br/>
                                            &nbsp;Address :<%=rs1.getString("address")%>&nbsp;<br/>
                                            &nbsp;District :<%=rs1.getString("dst")%>&nbsp;<br/>
                                            &nbsp;Contact No :<%=rs1.getString("contact")%>&nbsp;<br/>
                                            &nbsp;Email Id :<%=rs1.getString("email")%>&nbsp;<br/>
                                        </td>
                                        <td> &nbsp;<%=rs1.getString("status")%>&nbsp;
                                        </td>
                                        <%
                                        if(rs1.getString("status").equals("Pending")){
                                        %>
                                        <td><a href="acc.jsp?id=<%=rs1.getString("eid")%>">Accept</a></td>
                                         <td><a href="rej.jsp?id=<%=rs1.getString("eid")%>">Reject</a></td>
                                         <%} else{%>
                                         <td colspan="2"></td>
                                         <%}%>
                                    </tr>
                                    <% }%>

                                </table>
                                    <br/>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Blog Area -->
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
                        <p class="copy">Copyright © 2084 Your Company Name 

                            | Design: <a rel="nofollow" href="http://www.templatemo.com" target="_parent">template mo</a></p>
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











