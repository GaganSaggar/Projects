<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style = "text-align:center">List of Vehicles</h1>

<table border="1" align = "center">
<tr>
<th> ID</th>
<th>Vehicle Type</th>
<th>Vehicle Name</th>
<th>Vehicle Number</th>
<th>Capacity</th>
<th>Cost per Day</th>
<th>Mobile</th>
<th>Address</th>
<th>Action</th>
             </tr>
<c:forEach var="vehicle" items="${vehicles}">
<tr>
<td>${vehicle.id}</td>
<td>${vehicle.vehicletype}</td>
<td>${vehicle.vehiclename}</td>
<td>${vehicle.vehicleno}</td>
<td>${vehicle.capacity}</td>
<td>${vehicle.costperday}</td>
<td>${vehicle.mobile}</td>
<td>${vehicle.address}</td>
<!-- <td><input type = "submit" value="Edit"><input type = "submit" value="Delete"></td>-->
<td><button type="button" class="btn btn-danger"><a href="bookvehicle?id=${vehicle.id }">Book</a></button></td>
<%-- <td><button type="button" class="btn btn-warning"><a href="updatesVehicle?id=${vehicle.id }">Update</a></button></td>
 --%>
</tr>
</c:forEach>
             </table>  
</body>
</html>