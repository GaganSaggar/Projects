<!DOCTYPE html>
<html>
<head>
	<title>ADMIN | Edit Vehicle</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 --><link rel="shortcut icon" href="images/rent.png">
<!-- <link rel="stylesheet" href="styles/admin_edit_vehicles.css">
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
<%@include file="styles/admin_edit_vehicles.css" %>
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

		<h1>Edit Vehicles</h1>

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

		
						<div class="contact_title" style="text-decoration: underline;text-transform: uppercase; font-size: 20px; margin-top: 20px; margin-bottom: 20px;">Edit Vehicles</div>
					<div class="contact_form_container" style="display: none;">
						<!-- <table id="table">
						<thead>
							<tr class="table100-head">
								<th class="column1 l">#</th>
								<th class="column2 c">Vehicle Title</th>
								<th class="column3 c">Brand</th>
								<th class="column4 c">Price Per Day</th>
								<th class="column5 c">Fuel Type</th>
								<th class="column6 c">Model Year</th>
								<th class="column7 c">Action</th>
							</tr>
						</thead>
						<tbody>
								<tr>
									<td class="column1">1</td>
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
								</tr>
								<tr>
									<td class="column1">2</td>
								<td class="column2">Maruti SX4</td>
								<td class="column3">Maruti</td>
								<td class="column4">200</td>
								<td class="column5">CNG</td>
								<td class="column6">2017</td>
								<td class="column7">
								         <a style="padding-right: 10px;">
											<i class="fa fa-remove"></i>
										</a><a>
											<i class="fa fa-edit"></i>
										</a>
								</td>
								</tr><tr>
									<td class="column1">3</td>
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
								</tr><tr>
									<td class="column1">4</td>
								<td class="column2">Maruti SX4</td>
								<td class="column3">Maruti</td>
								<td class="column4">200</td>
								<td class="column5">CNG</td>
								<td class="column6">2017</td>
								<td class="column7">
								         <a style="padding-right: 10px;">
											<i class="fa fa-remove"></i>
										</a><a>
											<i class="fa fa-edit"></i>
										</a>
								</td>
								</tr><tr>
									<td class="column1">5</td>
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
								</tr><tr>
									<td class="column1">6</td>
								<td class="column2">Maruti SX4</td>
								<td class="column3">Maruti</td>
								<td class="column4">200</td>
								<td class="column5">CNG</td>
								<td class="column6">2017</td>
								<td class="column7">
								         <a style="padding-right: 10px;">
											<i class="fa fa-remove"></i>
										</a><a>
											<i class="fa fa-edit"></i>
										</a>
								</td>
								</tr><tr>
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
								</tr>
						</tbody>
					</table> -->

					</div>
				</div>

				<div class="contact_form_container">
							<form method="post" action="updateVehicle" modelAttribute="vehicle">							<div style="width: 100%;">
							<div style="margin-bottom: 18px; margin-top: 0px; width: 48.5%; float: left;"><label for="vehicle_title" style="color: black; font-weight: bold;">Vehicle id<span style="color: red;">*</span>:</label> <br>
							<input type="text" class="contact_input contact_input_name inpt" name="id" id="id"  value="${vehicle.id}" required="required" >
							<div class="input_border"></div></div>

							<div style="margin-bottom: 18px; margin-top: 0px; width: 48.5%; float: right;"><label for="brand_name" style="color: black; font-weight: bold;">Vehicle Name<span style="color: red;">*</span>:</label> <br>
							<input type="text" class="contact_input contact_input_name inpt" name="vehiclename" id="vehiclename"  value="${vehicle.vehiclename}" required="required" >
							
							<div class="input_border"></div></div>
							<div class="clr">
                           	
                           </div>
                           </div>
                           
						    <div style="margin-bottom: 18px; margin-top: 0px; width: 48.5%; float: right;"><label for="brand_name" style="color: black; font-weight: bold;">Vehicle Type<span style="color: red;">*</span>:</label> <br>
							<input type="text" class="contact_input contact_input_name inpt" name="vehicletype" id="vehicletype"  value="${vehicle.vehicletype}" required="required" >
							
							<div class="input_border"></div></div>
								<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: left;"><label for="price" style="color: black; font-weight: bold;">Capacity<span style="color: red;">*</span>:</label> <br>
							<input type="number" class="contact_input contact_input_name inpt" name="capacity" id="capacity"  value="${vehicle.capacity}" required="required" >
							<div class="input_border"></div></div>

							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: right;"><label for="fuel" style="color: black; font-weight: bold;">Cost Per Day<span style="color: red;">*</span>:</label> <br>
							<input type="number" class="contact_input contact_input_name inpt" name="costperday" id="costperday"  value="${vehicle.costperday}" required="required" >
							
							<div class="input_border"></div></div>
							<div class="clr">
                           	
                           </div>
						</div>
						    <div>
							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: left;"><label for="year" style="color: black; font-weight: bold;">Address<span style="color: red;">*</span>:</label> <br>
							<input type="text" class="contact_input contact_input_name inpt" name="address" id="address"  value="${vehicle.address}" required="required" >
							<div class="input_border"></div></div>

							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: right;"><label for="seat" style="color: black; font-weight: bold;">Vehicle No.<span style="color: red;">*</span>:</label> <br>
							<input type="number" class="contact_input contact_input_name inpt" name="vehicleno" id="vehicleno"  value="${vehicle.vehicleno}" required="required" >
							<div class="input_border"></div></div>
							
							<div style="margin-bottom: 18px; margin-top: 20px; width: 48.5%; float: right;"><label for="seat" style="color: black; font-weight: bold;">Mobile No.<span style="color: red;">*</span>:</label> <br>
							<input type="number" class="contact_input contact_input_name inpt" name="mobile" id="mobile"  value="${vehicle.mobile}" required="required" >
							<div class="input_border"></div></div>
						
							<div class="clr">
                           </div>
						</div>
						    <div style="margin-bottom: 18px; margin-top: 20px;"><label for="upload_images" style="color: black; font-weight: bold;">Upload Images :</label> <br>
						    	<!-- <div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 1 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div> -->
						    	<!-- <div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 2 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div><div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 3 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div><div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 4<span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div><div style="float:left; margin-left: 10px; border-radius:50%; margin-top: 20px;">
						    		<label for="upload_images" style="color: rgba(61, 62, 63,0.7); font-weight: bold;">Image 5 <span style="color: red;">*</span> :</label> <br><input type="file" name="File" placeholder="Choose File" required>
						    	</div> -->
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
							<button class="contact_button">Save Changes</button>
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

    for(let i = 1; i<table.rows.length; i++){
    	 
    }
</script>
</html>