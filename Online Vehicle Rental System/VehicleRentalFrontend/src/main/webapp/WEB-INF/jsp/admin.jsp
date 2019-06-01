<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>ADMIN | Dashboard</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 --><link rel="shortcut icon" href="C:\Users\Gagan Saggar\Desktop\Project Images\images\rent.png">
<!-- <link rel="stylesheet" href="styles/admin_dashboard.css">
<link rel="stylesheet" href="styles/css/all.css">
 --><style>
	.dash ul li, .dropdown-btn{
	height: 8.1vh;
	width: 100%;
	text-align: center;
}
	.dash ul a.active {
  background-color: green;
  color: white;
}
<%@include file="plugins/font-awesome-4.7.0/css/font-awesome.min.css" %>
<%@include file="styles/admin_dashboard.css" %>
<%@include file="styles/css/all.css" %>

</style>
</head>

<body>

<!-----------------------LIST------------------------------------------->
	<div class="list">
		<div class="head">
			<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\rent.png" alt="music-player">
			
			<h2>admin panel</h2>

		</div>
		<div class="clr">
			
		</div>

		<div class="dash">
			
			<ul>
				<a href="admin">
				<li class="select">
					<h2><i class="fas fa-chart-line"></i> Dashboard</h2>
				</li>
				</a>

				<a href="#" class="dropdown-btn">
				<li>
				   <h2><i class="fa fa-car"></i> Brands<i class="fa fa-caret-down"></i></h2>
				</li>
				</a>

				<div class="dropdown-container">
					    <a href="admin_create_brand.html">
					    	<li><h2><i class="fa fa-cube"></i> Create Brand</h2></li>
					    </a>
					     <a href="admin_manage_brand.html">
					    	<li><h2><i class="fa fa-magic"></i> Manage Brand</h2></li>
					    </a>
                </div>

				<a href="#" class="dropdown-btn">
				<li>
					<h2><i class="fa fa-bicycle"></i> Vehicles<i class="fa fa-caret-down" style="padding-left: 97px;"></i></h2>
				</li>
				</a>

				<div class="dropdown-container">
					    <a href="addVehicle">
					    	<li><h2><i class="fa fa-truck"></i> Post a Vehicle</h2></li>
					    </a>
					     <a href="vehicles">
					    	<li><h2><i class="fa fa-magic"></i> Manage Vehicles</h2></li>
					    </a>
                </div>

				<a href="admin_manage_bookings.html">
				<li>
					<h2><i class="fas fa-group"></i> Manage Booking</h2>

				</li>
				</a>

				<a href="admin_manage_testimonials.html">
				<li>
				<h2><i class="far fa-comment"></i> Manage Testimonials</h2>

				</li>
				</a>
				
				<a href="admin_manage_contacts_query.html">
				<li>
				<h2><i class="fas fa-question"></i> Manage Contacts Query</h2>
				</li>
				</a>

				<a href="users">
				<li>
					<h2><i class="fas fa-group"></i> Reg. Users</h2>
				</li>
				</a>

				<a href="admin_manage_pages.html">
				<li>
					<h2><i class="fa fa-file"></i> Manage Pages</h2>
				</li>
				</a>
				<a href="admin_update_contact_info.html">
				<li>
					<h2><i class="fas fa-info"></i> Update Contact Info</h2>
				</li>
				</a>
				<a href="admin_manage_subscribers.html">
				<li>
					<h2><i class="fas fa-group"></i> Manage Subscribers</h2>
				</li>
				</a>
				
			</ul>

			
		</div>
		
	</div>
<!-----------------------LIST------------------------------------------->


<!-----------------------Header------------------------------------------->
	<div class="header">
		
		<a href="#">
		<div class="profile">
			<h2><strong>${user}</h2>

			<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\varun.jpg" alt="man">
			
		</div>
		</a>
		
		<input type="search" name="Search" placeholder="Search...">

	</div>
	
	<!-----------------------Header------------------------------------------->

		<div class="clRR">
		
	</div>
	
	<!-----------------------Display------------------------------------------->

	<div class="display">

		<h1>Dashboard</h1>

		<ul>
			
				<li>
					<a href="admin_dashboard.html">
					Dashboard
					</a>
				</li>
				

				
				<li>
					<a href="<c:url value="/logout" />" style="background: #ce3966;font-family: 'Century Gothic';
	font-size: 16px;
	font-weight: bold;
	color: #f7f9f8;
	text-align: center;
	padding: 3px;
	border: 2px solid #ce3966;
	border-radius: 16px;">
					Log Out
					</a>
				</li>

		</ul>


		
	</div>

	<!-----------------------Display------------------------------------------->

	<div class="clRR">
		
	</div>

<!---------------------------------LISTING BOXES---------------------------------------------->
	<ul class="a">

		<li><a href="#">
					<h2>Total Reg Users</h2>
					<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\graph.svg" alt="stats">
					<h3 style="color: #7ace4c;">659</h3>
			</a>
		</li>

		<li><a href="#">
			  <h2>Total Listed Vehicles</h2>
			   <img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\unnamed.png" alt="statistics">
			  <h3 style="color: #707cd2;">869</h3></a>
		</li>
		
		<li><a href="#">
				<h2>Total Bookings</h2>
				<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\bar-graph-fruit.gif" alt="stats">
				<h3 style="color: #41b3f9;">390</h3></a>
		</li>
		<li><a href="#">
				<h2>Listed Brands</h2>
				<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\bar-graph-fruit.gif" alt="stats">
				<h3 style="color: #41b3f9;">500</h3></a>
		</li>
		<li><a href="#">
			    <h2>Subscribers</h2>
				<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\graph.svg" alt="stats">
				<h3 style="color: #7ace4c;">911</h3></a>
		</li>
		<li><a href="#">
			
				<h2>Queries</h2>
				<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\unnamed.png" alt="statistics">
				<h3 style="color: #707cd2;">20</h3></a>
		</li>
		<li><a href="#">
			
				<h2>Testimonials</h2>
				<img src="C:\Users\Gagan Saggar\Desktop\Project Images\images\unnamed.png" alt="statistics">
				<h3 style="color: #707cd2;">8</h3></a>
		</li>

	</ul>

<!---------------------------------LISTING BOXES---------------------------------------------->

<div class="clr">
	
</div>

</body>
<script>
	var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.add("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
</script>
</html>