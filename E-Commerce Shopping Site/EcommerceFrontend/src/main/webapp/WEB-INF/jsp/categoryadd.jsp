<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding New Category</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<h2>Adding Category</h2>
<form:form method = "POST" action = "addCategorys" commandName="category">
         <table>
         	 
          <tr>
               <td>Category Name</td>
               <td><input type="text" name="name"  /></td>
            </tr>
            <tr>
               <td>Category Description</td>
               <td><input type="text" name="description"  /></td>
            </tr>
            
            <tr>
            	<input type="submit" value="Add"/>
            </tr>
         </table>  
      </form:form>

</body>
</html>