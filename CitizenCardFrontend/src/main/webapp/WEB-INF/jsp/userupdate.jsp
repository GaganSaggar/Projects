<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>CitizenCard | Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
 --><link rel="shortcut icon" href="images\id-card.png">
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
          <li class="active"><a href="admin"><span>Profile</span></a></li>
          <li><a href="users"><span>Citizens Details</span></a></li>
          <li><a href="addUser"><span>Add a new citizen</span></a></li>
          <li><a href="<c:url value="/logout" />"><span>Log Out</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images\slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images\slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images\slide3.jpg" width="960" height="320" alt="" /> </a> </div>
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
          <div class="clr"></div>
<div class="clr"></div><h2 class="h h2"> Citizens Details</h2>
     <center>
          <form method="post" action="updateUser" modelAttribute="user">
             <p>
<input type="text" name="id" id="id"  value="${user.id}" class="txt" required>
                            </p>
              <p>
<input type="text" name="name" id="name"  value="${user.name}" class="txt" required>
                            </p>

              <p>
                <input type="text" name="address" id="address"  value="${user.address}" class="txt" required>
               </p>

               <p>
<input type="text" name="username" id="username"  value="${user.username}" class="txt" required>
                            </p>

              <p>
<input type="text" name="aadhar" id="aadhar"  value="${user.aadhar}" class="txt" required>
              </p>

               <p>
<input type="text" name="pan" id="pan"  value="${user.pan}" class="txt" required>

              </p>

              <p>
<input type="text" name="emailId" id="emailId"  value="${user.emailId}" class="txt" required>
              </p>
              
              <p>
<input type="text" name="password" id="password"  value="${user.password}" class="txt" required>
              </p>
              
              <p>
                <input type="text" name="mobile" id="mobile"  value="${user.mobile}" class="txt" required>
               </p>
              
               <p>
                <input type="text" name="role" id="role" value="${user.role}"  class="txt" required>

              </p>
              
               <p>
                <input type="text" name="enabled" id="enabled" value="${user.enabled}"  class="txt" required>

              </p>
              
              <p>
                <input type="submit" name="Update" value="Update" class="sub">
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
        <a href="#"><img src="images\gal1.png" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images\gal7.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images\gal8.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images\gal9.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images\gal10.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images\gal11.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
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
