<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
  <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LOGIN</title>
	<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="C:/User/Gagan Saggar/Desktop/Project Images/images/rent.png">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<!-- <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 -->	<style>
		*{
			margin:0;
			padding: 0;
		}

		.clr{
			clear:both;
		}

		.fl{
			float: left;
		}

		.fr{
			float: right;
		}

		.body{
		background-image: url('C:/User/Gagan Saggar/Desktop/Project Images/images/home_slider1.jpg');
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-repeat: no-repeat;
		background-size: 100% 100%;
		background-position: center center;
		animation-name: carousel;
		animation-delay: 0s;
		animation-duration: 40s;
		animation-iteration-count: infinite;
		animation-timing-function: ease-in-out;
		}

		@keyframes carousel{
		
		0%{
             background-image: url('C:/User/Gagan Saggar/Desktop/Project Images/images/home_slider1.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		20%{
             background-image: url('C:/User/Gagan Saggar/Desktop/Project Images/images/home_slider3.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		40%{
             background-image: url('C:/User/Gagan Saggar/Desktop/Project Images/images/home_slider4.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		60%{
             background-image: url('C:/User/Gagan Saggar/Desktop/Project Images/images/home_slider5.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		80%{
             background-image: url('C:/User/Gagan Saggar/Desktop/Project Images/images/home_slider6.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		100%{
             background-image: url('C:/User/Gagan Saggar/Desktop/Project Images/images/home_slider1.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}
}

          .bl{  
          	       position: absolute;
					top: 0px;
					width: 100%;
					height: 100%;
					background-color: rgba(15,15,15,0.40);
				}

		.h{
			font-family: 'Baskerville Old Face';
			font-size: 35px;
			font-weight: bold;
			color: #F4F0E7;
			text-align: center;
			margin: 0 auto;
			margin-top: 3%;
		}

		.h2{
			font-size: 25px;
		}
		

		.login{
			height: 530px;
			width: 30%;
			background: rgba(42, 52, 79, 0.75);
			margin-top:4%;
			margin-left: 35%;
		}

		.sign{
			height: 530px;
			width: 30%;
			background: #2A344F;
			margin-top:4%;
			margin-right: 19%;
		}

		#user {
				    height: 88px;
				    width: 22%;
				    border: 0px solid #2b2b35;
				    border-radius: 10px;
				    margin-top: 7%;
				}

		.txt{
			height: 27px;
			width: 80%;
			background: #2A344F;
			padding: 2px;
			margin-top: 6%;
			border: 2px solid #62708B;
    		border-radius: 42px;
			font-family: 'Baskerville Old Face';
			font-size: 18px;
			font-weight: 600;
			color: #62708B;
			letter-spacing: 1px;
			text-align:center;

		}
		.sub{
			height: 35px;
			width: 80%;
			background: #F64E8B;
			cursor: pointer;
			margin-top: 6%;
			border: 0.5px solid #F64E8B;
    		border-radius: 42px;
			font-family: 'Baskerville Old Face';
			font-size: 20px;
			font-weight: 900;
			color: #ffffff;
			letter-spacing: 1px;
			text-align:center;
			-webkit-transition: all 1s ease;
			-o-transition: all 1s ease;
			transition: all 1s ease;
		}
      .sub:hover{
      		  border: 2px solid #F64E8B;
    		   border-radius: 42px;
              background-color: #e3ecef;
              color: #F64E8B;
           }


		.rem{
			
			margin-left: 12%;
			margin-top: 5%;
			font-family: 'Baskerville Old Face'; 
			font-size: 13px;
			font-weight: bold;
			color: #7593A2;

		}

		.frg{
			
			margin-right: 12%;
			margin-top: 5%;
			font-family: 'Baskerville Old Face'; 
			font-size: 15px;
			font-weight: 700;
			color: #ffffff;
			text-decoration: none;

		}

		.frg1{
			
			
			margin-top: 5%;
			font-family: 'Baskerville Old Face'; 
			font-size: 13px;
			font-weight: 600;
			color: #CBD7DC;

		}

		.social{
			font-size: 20px;
			color: rgba(218, 223, 234,1);
			-webkit-transition: all 200ms ease;
			-moz-transition: all 200ms ease;
			-ms-transition: all 200ms ease;
			-o-transition: all 200ms ease;
	        transition: all 200ms ease;
	        margin-left: 20px;
	        margin-top: 17px;
	        text-align: center;

		}
		.social:hover{
					color: rgba(255,255,255,0.5);
				}
				
				<%@include file="plugins/font-awesome-4.7.0/css/font-awesome.min.css" %>
				
	</style>

</head>
<body>
	<div class="body">
	<div class="bl">
	
	<h1 class="h">!! Start Finding Best Vehicles !!</h1>

	<div class="login fl">
			<h2 class="h h2">Login</h2>
			<center>
							<form action="${loginUrl}" method="post" >							<p>
								<img src="C:\User\Gagan Saggar\Desktop\Project Images\images\Julie-Professional-Round.png" alt="user" align="center" id="user">
							</p>

							<p>
							<input type="text" id="inputEmail" class="txt" name="username" placeholder="username" required autofocus>              							</p>

							<p>
								<input type="password" id="inputPassword" class="txt" name="password" placeholder="Password" required>            
								  </p>


							<p class="rem fl">
								<input type="checkbox" name="remember" value="rem" id="rem">
								<label for="rem" style="cursor: pointer;">Remember me</label>
							</p>

								<a href="#" class="frg fr">Forgot Password?</a>

							<p class="clr"></p>
							<p>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            
								<input type="submit" name="login" value="Login" class="sub">
							</p>
							<a href="registration.html" class="frg" style="text-align: center; display: block; margin-top: 5%; margin-left: 14%; "> Create a New Account <br>(or)</a>

							<p>
								<a href="#"><i class="fa fa-pinterest social" aria-hidden="true"></i></a>
								<a href="#"><i class="fa fa-facebook social" aria-hidden="true"></i></a>
								<a href="#"><i class="fa fa-google-plus social" aria-hidden="true"></i></a>
							</p>

					</form>
			</center>
		
	</div>
 </div>	
</div>
</body>
</html>