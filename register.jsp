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

                        <li><a href="index.jsp" class="external" >HOME</a></li>
                    </ul>
                </div>   
            </div>
        </nav>    


        <div id="section4">
            <!-- Start Contact Area -->
            <section id="contact-area" class="contact-section">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 text-center inner">
                            <div class="contact-content">
                                <h1>Register form</h1>
                                <div class="row">                            
                                    <div class="col-sm-12">
                                        <center>  <p> <form action =" regaction.jsp" onsubmit="return check();">
                                                <table>
                                                    <tr>
                                                        <td>First Name:</td>
                                                        <td><input type="text"name="t1" id="t1" required="yes"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Last Name:</td>
                                                        <td><input type="text"name="t2" id="t2"required="yes"/></td>      
                                                    </tr>
                                                    <tr>
                                                        <td>Gender:</td>
                                                        <td><input type="radio"name="r1" value="Male" checked=""/>Male
                                                            <input type="radio"name="r1" value="Female"/>Female</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Address:</td>
                                                        <td><textarea name="ta" id="ta"cols="22"rows="10" required="yes">
                                                            </textarea></td>       
                                                    </tr>
                                                    <tr>
                                                        <td>District:</td>
                                                        <td><select name="d1">
                                                                <option value="tvm">Thiruvananthapuram</option>
                                                                <option value="klm">Kollam</option>
                                                                <option value="pta">Pathanamthitta</option>
                                                                <option value="alp">Alappuzha</option>
                                                                <option value="ktym">Kottayam</option>  
                                                                <option value="idk">Idukki</option>
                                                                <option value="eklm">Ernakulam</option>
                                                                <option value="trsr">Thrissur</option>
                                                                <option value="plk">Palakkad</option>
                                                                <option value="mlp">Malappuram</option>  
                                                                <option value="kzd">Kozhikode</option>
                                                                <option value="wyn">Wayanad</option>
                                                                <option value="knr">Kannur</option>  
                                                                <option value="ksr">Kasaragod</option>

                                                            </select></td>
                                                    </tr>
                                                    <tr><td>&nbsp;</td></tr>
                                                    <tr>
                                                        <td>email:</td>
                                                        <td><input type="email"name="t3" id="t3"required="yes"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Contact no:</td>
                                                        <td><input type="text"name="t4" id="t4" maxlength="10" required=""/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Set a password:</td>
                                                        <td><input type="password"name="t5" id="t5"required="yes" min="8"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Confirm password:</td>
                                                        <td><input type="password"name="t6" id="t6" required="yes" min="8"/></td>

                                                    </tr>

                                                </table>
                                                <!-- <input type="checkbox"name="c1"/>I agree to the terms and condition
                                                 <a href="terms.jsp">terms and conditions</a><br/>
                                                 <a href="login.jsp">already registered?Login</a><br/>-->
                                                <input type="submit" style="width:180px" value="register"/><br/>

                                            </form></p></center>
                                    </div>                            
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="col-sm-12 ">
                                <div class="form-group">
                                </div>
                            </div>


                        </div>                
                    </div>
                </div>
            </section>
            <!-- End Contact Area -->
        </div>



        <!-- Start Footer Area -->
        <footer id="footer-area">

            <hr>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-center">             
                        <p class="copy">Copyright © 2084 vns 

                            | Design: mejffjj</p> </div>
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
        
<script type="text/javascript">
    var letters=/^[a-zA-Z]+$/;
    var numbers=/^[0-9]+$/;
    var regularExpression=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;

    var np=document.getElementById("t5").np.value;
    function check()
    {
      if(!document.getElementById("t1").value.match(letters))
        {
            alert("Enter characters only,Enter first name !!!");
            document.getElementById("t1").focus();
            return false;
        }
        if(!document.getElementById("t2").value.match(letters))
        {
            alert("Enter characters Only,Enter  last name!!!");
            document.getElementById("t2").focus();
            return false;
        }
        
        else if(!document.getElementById("t4").value.match(numbers))
        {
            alert("Enter Numerics Only,Enter contact no !!!");
            document.getElementById("t4").focus();
            return false;
        }
         else if(document.getElementById("t4").value.length<10)
        {
            alert("Enter 10 digits for phone no !!!");
            document.getElementById("t4").focus();
            return false;
        }
      //  else if(document.getElementById("t5").value.length<8)
      //  {
        //    alert("min 8 characters for password !!!");
          //  document.getElementById("t5").focus();
           // return false;
       // }
         else if(document.getElementById("t6").value.length<8)
        {
            alert("password not matching!!!");
            document.getElementById("t6").focus();
            return false;
        }
         else if(document.getElementById("t5").value!=document.getElementById("t6").value)
        {
            alert("password not macthing!!!");
            document.getElementById("t5").focus();
            return false;
        }
        else if(!document.getElementById("t5").value.match(regularExpression))
            {
                alert("password should contain alteast one number and one special character,upper case and lower case!!!");
                return false;
            }
        else
        {
            return true;
        }
    }

    
</script>

</html>