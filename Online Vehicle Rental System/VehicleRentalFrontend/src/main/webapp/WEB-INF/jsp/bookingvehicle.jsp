<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</div><h2 class="h h2"> Vehicles Details</h2>
     <center>
          <form method="post" action="bookedVehicle" modelAttribute="vehicle">
            <p>
                            <input type="text" name="username" id="username" value="${user}" readonly  class="txt" required>
            
            </p>
             <p>
<input type="text" name="id" id="id"  value="${vehicle.id}" class="txt" required>
                            </p>
              <p>
<input type="text" name="vehiclename" id="vehiclename"  value="${vehicle.vehiclename}" class="txt" required>
                            </p>
              <p>
<input type="text" name="vehicletype" id="vehicletype"  value="${vehicle.vehicletype}" class="txt" required>
                            </p>
              <p>
<input type="text" name="capacity" id="capacity"  value="${vehicle.capacity}" class="txt" required>
                            </p>
              <p>
<input type="text" name="costperday" id="costperday"  value="${vehicle.costperday}" class="txt" required>
                            </p>
              <p>
<input type="text" name="address" id="address"  value="${vehicle.address}" class="txt" required>
                            </p>
              <p>
<input type="text" name="vehicleno" id="vehicleno"  value="${vehicle.vehicleno}" class="txt" required>
                            </p>
                             <p>
<input type="text" name="mobile" id="mobile"  value="${vehicle.mobile}" class="txt" required>
                            </p>
            
             <p>
                <input type="submit" name="Update" value="Update" class="sub">
              </p>


          </form>
  </center>
</body>
</html>