<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Welcome Page</title>
<style>
 .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
</style>
</head>
<body>

</body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Online Store</h1>      
    <p>Mission, Vission & Values</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Products</a></li>
        <li><a href="#">Deals</a></li>
        <li><a href="#">Stores</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> <strong>${user}</strong></a></li>
        <li><a href="<c:url value="/logout" />">Logout</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart<input type="text"></a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="C:\Users\Gagan Saggar\Desktop\Project Images\41EOO5bTP4L._AC_SY200_.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">A pair of towel</div>
      </div>
            <button type="button" class="btn btn-warning" onclick="buy()">Buy Now</button>
            <button type="button" class="btn btn-danger" onclick="cart()">Add to Cart</button>
      
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="C:\Users\Gagan Saggar\Desktop\Project Images\41EQ2mnJBtL._AC_SY200_.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Flash Light</div>
      </div>
            <button type="button" class="btn btn-warning" onclick="buy()">Buy Now</button>
            <button type="button" class="btn btn-danger" onclick="cart()">Add to Cart</button>
      
      </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="C:\Users\Gagan Saggar\Desktop\Project Images\51vENlSI1eL._AC_SY200_.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Ear Rings</div>
      </div>
            <button type="button" class="btn btn-warning" onclick="buy()">Buy Now</button>
            <button type="button" class="btn btn-danger" onclick="cart()">Add to Cart</button>
      
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="C:\Users\Gagan Saggar\Desktop\Project Images\41gt68Y6f1L.__AC_SY200_.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Floaters</div>
      </div>
            <button type="button" class="btn btn-warning" onclick="buy()">Buy Now</button>
            <button type="button" class="btn btn-danger" onclick="cart()">Add to Cart</button>
      
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="C:\Users\Gagan Saggar\Desktop\Project Images\41P2Mt43HCL.__AC_SY200_.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Mixer Grinder</div>
      </div>
            <button type="button" class="btn btn-warning" onclick="buy()">Buy Now</button>
            <button type="button" class="btn btn-danger" onclick="cart()">Add to Cart</button>
      
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="C:\Users\Gagan Saggar\Desktop\Project Images\51e0ZKTDP7L.__AC_SY200_.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Measuring tape</div>
      </div>
            <button type="button" class="btn btn-warning" onclick="buy()">Buy Now</button>
            <button type="button" class="btn btn-danger" onclick="cart()">Add to Cart</button>
      
    </div>
  </div>
</div><br><br>
<script>
 function buy()
 {
	 alert("Thanks for the Shopping\n Your Order will be delivered to you soon");
 }
 
 function cart()
 {
	 alert("This item has been added to your cart");
 }
</script>

</html>