<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating Supplier</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<h2>Supplier Details</h2>
      <form:form method = "POST" action = "updateSupplier" commandName="supplier">
         <table>
         	 <tr>
               <td>Supplier Id</td>
               <td><input type="text" name="supId"  value="${supplier.supId}"/></td>
            </tr>
          <tr>
               <td>Supplier Name</td>
               <td><input type="text" name="supName"  value="${supplier.supName}"/></td>
            </tr>
            <tr>
               <td>Supplier Number</td>
               <td><input type="text" name="supnumber"  value="${supplier.supnumber}"/></td>
            </tr>
            
            <tr>
            	<input type="submit" value="Update"/>
            </tr>
         </table>  
      </form:form>

</body>
</body>
</html>