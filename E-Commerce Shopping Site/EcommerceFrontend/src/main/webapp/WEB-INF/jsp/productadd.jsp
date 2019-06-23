<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding New Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<h2>Adding Product</h2>
      <form:form method = "POST" action = "addProducts" commandName="product" enctype = "multipart/form-data">
         <table>
         	 <tr>
               <td>Product Id</td>
               <td><input type="text" name="id"  /></td>
            </tr>
          <tr>
               <td>Product Name</td>
               <td><input type="text" name="name"  /></td>
            </tr>
            <tr>
               <td>Product Description</td>
               <td><input type="text" name="description"  /></td>
            </tr>
            <tr>
               <td>Product Price</td>
               <td><input type="text" name="price"  /></td>
            </tr>
            <tr>
               <td>Product Quantity</td>
               <td><input type="text" name="quantity"  /></td>
            </tr>
            <tr>
            	<td>Please select a file to upload :<td> 
        		 <td><input type = "file" name = "image" /><td>
         		
    
            </tr>
            <tr>
            <td></td>
            <td>
            	<input type="submit" value="Add"/>
            	</td>
            </tr>
         </table>  
      </form:form>

</body>
</html>