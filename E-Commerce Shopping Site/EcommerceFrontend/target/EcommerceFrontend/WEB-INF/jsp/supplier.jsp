<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Supplier</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<h1 style = "text-align:center">List of Suppliers</h1>

<table border="1" align = "center">
<tr>
<th>Supplier ID</th>
<th>Supplier Name</th>
<th>Supplier Number</th>
<th>Action</th>
</tr>
<c:forEach var="supplier" items="${suppliers}">
<tr>
<td>${supplier.supId}</td>
<td>${supplier.supName}</td>
<td>${supplier.supnumber}</td>
<!-- <td><input type = "submit" value="Edit"><input type = "submit" value="Delete"></td>-->
<td><button type="button" class="btn btn-danger"><a href="deletesupplier?id=${supplier.supId }">Delete</a></button></td>
<td><button type="button" class="btn btn-warning"><a href="updatesSupplier?id=${supplier.supId }">Update</a></button></td>

</tr>
</c:forEach>

</table>
<button type="button" class="btn btn-link"> <a href ="addSupplier">ADD</a></button>

</body>
</html>