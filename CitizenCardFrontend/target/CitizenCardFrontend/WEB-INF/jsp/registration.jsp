<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
  <!DOCTYPE html>
<html>
<head>
<title>Citizen Card | Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
 --><link rel="shortcut icon" href="images/id-card.png">
<!-- <script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
 --><style type="text/css">
  <%@include file="css/style.css" %>
  <%@include file="css/coin-slider.css" %>
  
  a{
    text-decoration: none;
  }
</style>
<script>
<%@include file="js/cufon-yui.js" %>
<%@include file="js/cufon-aller.js" %>
<%@include file="js/jquery-1.4.2.min.js" %>
<%@include file="js/script.js" %>
<%@include file="js/coin-slider.min.js" %>
</script>
</head>
<body>
<div class="main subpage">
  <div class="header">
    <div class="header_resize">
       <div class="logo">
        <h1><a href="index.html">Citizen<span>Card</span> <small>Digital India</small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="first"><span>Home</span></a></li>
          <li><a href="registrations"><span>Registration</span></a></li>
          <li class="active"><a href="logins"><span>Login</span></a></li>
          <li><a href="about.html"><span>About Us</span></a></li>
          <li><a href="contact.html"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr"></div>
        </div>
        <div class="article">
          <div class="clr"></div><h2 class="h h2"> Registration</h2>
     <center>
          <form method="post" action="registration" modelAttribute="user">
              <p>
<input type="text" name="name" id="name"  placeholder="Enter your Name" class="txt" required>
                            </p>

              <p>
                <input type="text" name="address" id="address"  placeholder="Enter your address" class="txt" required>
               </p>

               <p>
<input type="text" name="username" id="username"  placeholder="Enter your Username" class="txt" required>
                            </p>

              <p>
<input type="text" name="aadhar" id="aadhar"  placeholder="Enter your Aadhar No." class="txt" required>
              
              </p>

               <p>
<input type="text" name="pan" id="pan"  placeholder="Enter your PAN No." class="txt" required>

              </p>

              <p>
<input type="text" name="emailId" id="emailId"  placeholder="Enter your Email" class="txt" required>
              </p>
              
              <p>
<input type="text" name="password" id="password"  placeholder="Enter your Password" class="txt" required>
              </p>
              
              <p>
                <input type="text" name="mobile" id="mobile"  placeholder="Enter your Mobile No." class="txt" required>

              </p>
              
               <p>
                <input type="hidden" name="role" id="role" value="ROLE_USER" readonly  class="txt" required>

              </p>
              
               <p>
                <input type="hidden" name="enabled" id="enabled" value="TRUE" readonly  class="txt" required>

              </p>
              
              <p>
                <input type="submit" name="Register" value="Register" class="sub">
              </p>


          </form>
  </center>

          
        </div>
      </div>
      <div class="sidebar">
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Notifications</span></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact Us </a></li>
            <li><a href="#">Admin Panel</a></li>
            <li><a href="#">Citzens</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.png" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal7.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal8.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal9.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal10.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal11.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Services</span> Overview</h2>
        <p>'Citizen Card System’ provides  the information about the citizen in any country. A Citizen has unique Id to find out the personal information in each and every department or service wherever a citizen goes. </p>
        <ul class="fbg_ul">
          <li><a href="#">Personal Information. </a></li>
          <li><a href="#">Taxation.</a></li>
          <li><a href="#">Gas.</a></li>
        </ul>
      </div>
      <div class="col c3">
        <h2><span>Contact</span> Us</h2>
        <p>We are always ready to help. In order to make your first citizen card kindly contact us at the following address.</p>
        <p class="contact_info"> <span>Address:</span> Dr. Akhilesh Das Gupta Institute of Technology and Management, New Delhi<br />
          <span>Telephone:</span> +91(11) 49905900-99<br />
          <span>FAX:</span> +91 (11) 49905977<br />
          <span>Others:</span> 32526261-64,<br />
          <span>E-mail:</span> <a href="#">info@citizencard.ac.in</a> </p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">Citizen Cards</a>.</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
