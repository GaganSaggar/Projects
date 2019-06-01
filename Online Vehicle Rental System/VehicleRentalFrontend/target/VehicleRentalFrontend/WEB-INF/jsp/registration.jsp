<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>SIGN UP</title>
	<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/rent.png">
	<style>
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
		background-image: url('images/home_slider1.jpg');
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
             background-image: url('images/home_slider1.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		20%{
             background-image: url('images/home_slider3.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		40%{
             background-image: url('images/home_slider4.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		60%{
             background-image: url('images/home_slider5.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		80%{
             background-image: url('images/home_slider6.jpg');
			background-size: 100% 100%;
			background-position: center center;
			background-repeat: no-repeat;
		}

		100%{
             background-image: url('images/home_slider1.jpg');
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
			background: #2A344F;
			margin-top:4%;
			margin-left: 19%;
		}

		.sign{
			height: 560px;
			width: 30%;
			background: rgba(42, 52, 79, 0.75);
			margin-top: 3%;
			margin-right: 35%;
			margin-left: 35%;
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
			height: 30px;
			margin-top:4%;

		}

	</style>

</head>
<body>
	<div class="body">
	<div class="bl">
	
	<h1 class="h">!! Start Finding Best Vehicles !!</h1>
	<div class="sign fr">
		<h2 class="h h2">Sign Up</h2>
	
	<center>
<form method="post" action="registration" modelAttribute="user">
   							
							<p>
<input type="text" name="name" id="name"  placeholder="Enter your Name" class="txt" required>
                            </p>

              <p>
                <input type="text" name="address" id="address"  placeholder="Enter your address" class="txt" required>
               </p>

               <p>
<input type="text" name="username" id="username"  placeholder="Enter your Username" class="txt" required>
                            </p>

              <p>
<input type="text" name="aadhar" id="aadhar"  placeholder="Enter your Aadhar No." class="txt" required>
              
              </p>

               <p>
<input type="text" name="pan" id="pan"  placeholder="Enter your PAN No." class="txt" required>

              </p>

              <p>
<input type="text" name="emailId" id="emailId"  placeholder="Enter your Email" class="txt" required>
              </p>
              
              <p>
<input type="text" name="password" id="password"  placeholder="Enter your Password" class="txt" required>
              </p>
              
              <p>
                <input type="text" name="mobile" id="mobile"  placeholder="Enter your Mobile No." class="txt" required>

              </p>
              
               <p>
                <input type="hidden" name="role" id="role" value="ROLE_USER" readonly  class="txt" required>
</p>

<p>
                <input type="hidden" name="enabled" id="enabled" value="TRUE" readonly  class="txt" required>

              </p>

							<p class="rem fl">
								<input type="checkbox" name="remember" value="rem" id="terms" required>
								<label for="terms" style="cursor: pointer;">I agree to <span class="frg1">Terms</span> and <span class="frg1">Privacy Policy</span></label>
							</p>
							<p class="clr"></p>

							<p>
<input type="submit" name="Register" value="Register" class="sub">
       							</p>
							<span class="frg" style="text-align: center; display: block; margin-top: 5%; margin-left: 14%; ">Already have an account  ?<br>
								<a  href="login_form.html" style="color: #F64E8B; font-size: 20px;" class="frg">Login Here</a></span>
					</form>
	</center>

</div>
			
 </div>	
</div>
</body>
</html>