<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!--  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>-->
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<h1 style = "text-align:center">List of Products</h1>
<table border="1" align = "center">
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Image</th>
<th>Product Desc</th>
<th>Product Price</th>
<th>Product Quantity</th>
<th>Action</th>
</tr>
<c:forEach var="product" items="${products}">
<tr>
<td>${product.id}</td>
<td>${product.name}</td>
<td><img src="<c:url value='/resources/images/${product.id }.png' />" height="50" width="50" /></td>
<td>${product.description}</td>
<td>${product.price}</td>
<td>${product.quantity}</td>
<td><button type="button" class="btn btn-danger"><a href="deleteproduct?id=${product.id }">Delete</a></button></td>
<td><button type="button" class="btn btn-warning"><a href="updatesProduct?id=${product.id }">Update</a></button></td>

</tr>
</c:forEach>

</table>
<button type="button" class="btn btn-link"> <a href ="addProduct">ADD</a></button>

</body>
</html>