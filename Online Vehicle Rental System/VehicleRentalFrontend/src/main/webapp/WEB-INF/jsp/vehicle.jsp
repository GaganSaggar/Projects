<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
              <!--  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>-->
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<title>ADMIN | Manage Vehicles</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 --><link rel="shortcut icon" href="images/rent.png">
<!-- <link rel="stylesheet" href="styles/admin_manage_vehicles.css">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" href="styles/css/all.css">
 -->
<style>
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
<%@include file="styles/admin_manage_vehicles.css" %>
<%@include file="styles/bootstrap4/bootstrap.min.css" %>
<%@include file="styles/css/all.css" %>

</style>
</head>

<body>

<!-----------------------LIST------------------------------------------->
	<div class="list">
		<div class="head">
			<img src="images/rent.png" alt="music-player">
			
			<h2>admin panel</h2>

		</div>
		<div class="clr">
			
		</div>

		<div class="dash">
			
			<ul>
				<a href="admin_dashboard.html">
				<li>
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

				<div class="dropdown-container" style="display: block;">
					    <a href="admin_post_a_vehicle.html">
					    	<li><h2><i class="fa fa-truck"></i> Post a Vehicle</h2></li>
					    </a>
					     <a href="admin_manage_vehicles.html">
					    	<li class="select"><h2><i class="fa fa-magic"></i> Manage Vehicles</h2></li>
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

				<a href="admin_reg_users.html">
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
			<h2>Steave</h2>

			<img src="images/varun.jpg" alt="man">
			
		</div>
		</a>
		
		<input type="search" name="Search" placeholder="Search...">

	</div>
	
	<!-----------------------Header------------------------------------------->

		<div class="clRR">
		
	</div>
	
	<!-----------------------Display------------------------------------------->

	<div class="display">

		<h1>Manage Vehicles</h1>

		<ul>
			
				<li>
					<a href="admin_dashboard.html">
					Dashboard
					</a>
				</li>
				

				
				<li>
					<a href="admin_change_password.html" style="background: #ce3966;font-family: 'Century Gothic';
	font-size: 16px;
	font-weight: bold;
	color: #f7f9f8;
	text-align: center;
	padding: 3px;
	border: 2px solid #ce3966;
	border-radius: 16px;">
					Change Password
					</a>
				</li>

		</ul>


		
	</div>

	<!-----------------------Display------------------------------------------->

	<div class="clRR">
		
	</div>

<!---------------------------------LISTING BOXES---------------------------------------------->
<ul class="a">

		
						<div class="contact_title" style="text-decoration: underline;text-transform: uppercase; font-size: 20px; margin-top: 20px; margin-bottom: 20px;">Manage Vehicles</div>
					<div class="contact_form_container" id="d1">
						<table id="table">
						<thead>
							<tr class="table100-head">
								<th class="column1 l">ID</th>
								<th class="column2 c">Vehicle Title</th>
								<th class="column3 c">Vehicle Type</th>
								<th class="column4 c">Price Per Day</th>
								<th class="column5 c">Vehicle No.</th>
								<th class="column6 c">Capacity</th>
								<th class="column7 c">Address</th>
								<th class="column8 c">Action</th>
							</tr>
						</thead>
						<tbody>
								<c:forEach var="vehicle" items="${vehicles}">
<tr>
<td class="column1">${vehicle.id}</td>
<%-- <td><img src="<c:url value='/resources/images/${vehicle.id }.png' />" height="50" width="50" /></td>
 --%><td class="column2">${vehicle.vehiclename}</td>
<td class="column3">${vehicle.vehicletype}</td>
<td class="column4">${vehicle.costperday}</td>
<td class="column5">${vehicle.vehicleno}</td>
<td class="column6">${vehicle.capacity}</td>
<td class="column7">${vehicle.address}</td>
<td class="column8"> <a href="deletevehicle?id=${vehicle.id }" style="padding-right: 10px;">
											<i class="fa fa-remove"></i>
										</a><a href="updatesVehicle?id=${vehicle.id }">
											<i class="fa fa-edit"></i>
										</a>
								</td>
								</tr>
</c:forEach>
								
									
								
									<!-- <tr>
									<td class="column1">7</td>
								<td class="column2">Maruti SX4</td>
								<td class="column3">Maruti</td>
								<td class="column4">200</td>
								<td class="column5">Petrol</td>
								<td class="column6">2017</td>
								<td class="column7">
								         <a style="padding-right: 10px;">
											<i class="fa fa-remove"></i>
										</a><a>
											<i class="fa fa-edit"></i>
										</a>
								</td>
								</tr> -->
						</tbody>
					</table>

					</div>
				</div>

				<div class="contact_form_container" id="d2" style="display: none;">
						<form action="admin_post_a_vehicle.html" id="contact_form" class="contact_form" onsubmit="alert('Vehicle Posted Successfully!!!!')">
							<div style="width: 100%;">
							<div style="margin-bottom: 18px; margin-top: 0px; width: 48.5%; float: left;"><label for="vehicle_title" style="color: black; font-weight: bold;">Vehicle Title<span style="color: red;">*</span>:</label> <br>
							<input type="text" class="contact_input contact_input_name inpt" placeholder="Vehicle Title" required="required" id="vehicle_title">
							<div class="input_border"></div>
						</div>

							<div style="margin-bottom: 18px; margin-top: 0px; width: 48.5%; float: right;"><label for="brand_name" style="color: black; font-weight: bold;">Select Brand<span style="color: red;">*</span>:</label> <br>
							<select name="Select Brand" class="contact_input contact_input_name inpt" placeholder="Select Brand" required="required" id="brand_name">
								<option value="Select">Select</option>
								<option value="Maruti">Maruti</option>
								<option value="BMW">BMW</option>
								<option value="AUD">AUDI</option>
								<option value="NISSAN">NISSAN</option>
								<option value="TOYOTA">TOYOTA</option>
								<option value="MARUTI">MARUTI</option>
							</select>
							<div class="input_border"></div></div>
							<div class="clr">
                           	
                           </div>
                           </div>
                           
						    <div style="margin-bottom: 18px; margin-top: 20px;"><label for="vehicle_overview" style="color: black; font-weight: bold;">Vehicle Overview <span style="color: red;">*</span> :</label> <br><textarea class="contact_textarea contact_input inpt" placeholder="Vehicle Overview" required="required"></textarea><div class="input_border" style="bottom:3px">
						    </div>
						    <div style="width: 100%;">
							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: left;"><label for="price" style="color: black; font-weight: bold;">Price Per Day(in USD)<span style="color: red;">*</span>:</label> <br>
							<input type="number" class="contact_input contact_input_name inpt" placeholder="Price Per Day" required="required" id="price">
							<div class="input_border"></div></div>

							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: right;"><label for="fuel" style="color: black; font-weight: bold;">Select Fuel Type<span style="color: red;">*</span>:</label> <br>
							<select name="Fuel" class="contact_input contact_input_name inpt" placeholder="Select Fuel" required="required" id="fuel">
								<option value="Select">Select</option>
								<option value="Petrol">Petrol</option>
								<option value="Diesel">Diesel</option>
								<option value="CNG">CNG</option>
							</select>
							<div class="input_border"></div></div>
							<div class="clr">
                           	
                           </div>
						</div>
						    <div>
							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: left;"><label for="year" style="color: black; font-weight: bold;">Model Year<span style="color: red;">*</span>:</label> <br>
							<input type="date" class="contact_input contact_input_name inpt" placeholder="Model Year" required="required" id="year">
							<div class="input_border"></div></div>

							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: right;"><label for="seat" style="color: black; font-weight: bold;">Seating Capacity<span style="color: red;">*</span>:</label> <br>
							<input type="number" class="contact_input contact_input_name inpt" placeholder="Seating Capacity" required="required" id="seat">
							<div class="input_border"></div></div>
							<div class="clr">
                           </div>
						</div>
						    <div style="margin-bottom: 18px; margin-top: 20px;"><label for="upload_images" style="color: black; font-weight: bold;">Upload Images :</label> <br>
						    	<div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 1 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div>
						    	<div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 2 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div><div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 3 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div><div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 4<span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div><div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 5 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div>
						    	<div class="clr">
						    		
						    	</div>
						    </div>

						      <div style="margin-bottom: 18px; margin-top: 50px;"><label for="upload_images" style="color: black; font-weight: bold;">Accessories :</label> <br>
						<div style="float: left;">
						    	<div style="margin-left: 10px; border-radius:50%; margin-top: 20px;width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;">
						    		<input type="checkbox" name="Accessories" value="Air Conditioner" style="height: fit-content;width: fit-content;margin: 0px 6px;">Air Conditioner
						    	</label> 
						    	</div>
						    	<div style="margin-left: 10px; border-radius:50%; margin-top: 20px;width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Power Steering" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Power Steering</label>
						    	</div>
						    	<div style="margin-left: 10px; border-radius:50%; margin-top: 20px; width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="CD Player" style="height: fit-content;width: fit-content;margin: 0px 6px;"> CD Player</label>
						    	</div>
						   </div>
					<div style="float: left; margin-left: 100px;">
						    	<div style="margin-left: 10px; border-radius:50%; margin-top: 20px;width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Accessories" value="Power Door Locks" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Power Door Locks</label>
						    	</div>
						    	<div style="margin-left: 10px; border-radius:50%; margin-top: 20px; width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Driver Airbag" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Driver Airbag</label>
						    	</div>
                                 <div style="margin-left: 10px; border-radius:50%; margin-top: 20px;width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Central Locking" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Central Locking</label>
						    	</div>
						</div>
						<div style="float: left; margin-left: 100px;">
							<div style="margin-left: 10px; border-radius:50%; margin-top: 20px; width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Anti Lock Braking System" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Anti Lock Braking System</label>
						    	</div>
							<div style="margin-left: 10px; border-radius:50%; margin-top: 20px; width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Passenger Airbag" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Passenger Airbag</label>
						    	</div>
                               <div style="margin-left: 10px; border-radius:50%; margin-top: 20px; width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Crash Sensor" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Crash Sensor</label>
						    	</div>
						 </div>
				<div style="float: left; margin-left: 100px;">
						    	
						    	<div style="margin-left: 10px; border-radius:50%; margin-top: 20px;width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Brake Assist" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Brake Assist</label>
						    	</div><div style="margin-left: 10px; border-radius:50%; margin-top: 20px;width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Power Windows" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Power Windows</label>
						    	</div><div style="margin-left: 10px; border-radius:50%; margin-top: 20px;width: auto;">
						    		<label style="color: rgba(61, 62, 63,0.7); font-weight: bold;width: auto;"><input type="checkbox" name="Status" value="Leather Seats" style="height: fit-content;width: fit-content;margin: 0px 6px;"> Leather Seats</label>
						    	</div>
				</div>
						    	<div class="clr">
						    		
						    	</div>
						    </div>
							<button class="contact_button contact_button2">Cancel</button>
							<button class="contact_button" onclick="editRow();">Save Changes</button>
						</form>
					</div>
				</div>


	</ul>

<!---------------------------------LISTING BOXES---------------------------------------------->

<div class="clr">
	
</div>

</body>
<script>
	var dropdown = document.getElementsByClassName("dropdown-btn");
let i;

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
    
   
    
    	 var act = document.querySelectorAll('.act');
        for (let i=0; i<act.length; i++) {
                act[i].addEventListener('click', handler);
             }
            
           
		function handler() {
			     // console.log(all);
			     if(this.textContent === "Inactive"){
			     	let a = confirm("Do you really wanna activate it ?");
			      if(a){
			      	alert("Testimonial Activated")
			      	  this.textContent = "Active";
			      	  this.style.color = "rgb(0, 196, 255)";
			          }
			     }

			     else if(this.textContent === "Active"){
			     	let a = confirm("Do you really wanna deactivate it ?");
			      if(a){
			      	alert("Testimonial Deactivated")
			      	  this.textContent = "Inactive";
			      	  this.style.color = "rgb(224, 2, 82)";
			          }
			     }
			      
		}

		function handler1() {
			     // console.log(all);
			      let a = confirm("Do you really wanna cancel?");
			      if(a){
			      	alert("Booking Cancelled")
			      	  this.textContent = "cancelled";
			      	  this.style.color = "rgb(224, 2, 82)";
			      	  this.offsetParent.parentElement.cells[6].textContent = "Cancelled";
			      }
		}

		let table = document.querySelector('#table');
		let dis1 = document.querySelector('#d1');
		let dis2 = document.querySelector('#d2');
		let rindex;
		console.log(table);
    let index;
    for (let i = 1; i < table.rows.length; i++) {
    	table.rows[i].cells[6].children[0].addEventListener('click', function(){
    		let a = confirm("Do You really wanna delete ?");
    		if(a){
    			  alert('Selected Row deleted');
                   index = this.parentElement.parentElement.rowIndex;
                   table.deleteRow(index);
    		}
    	});
    }

    for (let i = 1; i < table.rows.length; i++) {
    	table.rows[i].cells[6].children[1].addEventListener('click', function(){
    		       rindex = this.parentElement.parentElement.rowIndex;
    		       dis1.style.display = 'none';
                   dis2.style.display = 'block';
    		       document.getElementById('vehicle_title').value = this.parentElement.parentElement.cells[1].innerHTML;
    		       document.getElementById('brand_name').value = this.parentElement.parentElement.cells[2].innerHTML;
    		       document.getElementById('price').value = this.parentElement.parentElement.cells[3].innerHTML;
    		       document.getElementById('fuel').value = this.parentElement.parentElement.cells[4].innerHTML;
    	});
    }

    function editRow() {
    	dis2.style.display = 'none';
        dis1.style.display = 'block';
       table.rows[rindex].cells[1].innerHTML = document.getElementById('vehicle_title').value ;
       table.rows[rindex].cells[2].innerHTML = document.getElementById('brand_name').value ;
       table.rows[rindex].cells[3].innerHTML = document.getElementById('price').value ;
       table.rows[rindex].cells[4].innerHTML = document.getElementById('fuel').value ;
       table.rows[rindex].cells[5].innerHTML = document.getElementById('year').value ;
    }

</script>
</html>
