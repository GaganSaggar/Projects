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
<h1 style = "text-align:center">List of OrderedVehicles</h1>

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
<th>UserName</th>
<th>Action</th>
             </tr>
<c:forEach var="orderedvehicle" items="${orderedvehicles}">
<tr>
<td>${orderedvehicle.id}</td>
<td>${orderedvehicle.vehicletype}</td>
<td>${orderedvehicle.vehiclename}</td>
<td>${orderedvehicle.vehicleno}</td>
<td>${orderedvehicle.capacity}</td>
<td>${orderedvehicle.costperday}</td>
<td>${orderedvehicle.mobile}</td>
<td>${orderedvehicle.address}</td>
<td>${orderedvehicle.username}</td>

<!-- <td><input type = "submit" value="Edit"><input type = "submit" value="Delete"></td>-->
<td><button type="button" class="btn btn-danger"><a href="deleteorderedvehicle?id=${orderedvehicle.id }">Delete</a></button></td>
<td><button type="button" class="btn btn-warning"><a href="updatesorderedVehicle?id=${orderedvehicle.id }">Update</a></button></td>

</tr>
</c:forEach>
             </table>  
</body>
</html>