<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login V9</title>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-login100">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30" style = "box-shadow: 0px 0px 20px #d1febc;">
			<form class="login100-form validate-form" action="joinService">
			<img src = "img/main-img/logo3.png" style = "align: center; position: relative; right: 80px;">
				<span class="login100-form-title p-b-37" style="color: black;"> sing up </span>

				<div class="wrap-input100 validate-input m-b-20">
					<input class="input100" type="text" name="id" placeholder="id" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25">
					<input class="input100" type="password" name="pw" placeholder="pw" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20">

					<input class="input100" type="text" name="name" placeholder="name" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20">
					<input class="input100" type="text" name="nick" placeholder="nick" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20">
					<input class="input100" type="text" name="phone"
						placeholder="phone" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;"> <span class="focus-input100" ></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20">
					<input class="input100" type="text" name="email"
						placeholder="email" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;"> <span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20">
					<input class="input100" type="text" name="birthday"  placeholder="2001-01-01" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;">
				</div>
				<div class="wrap-input100 " align="center">




					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" align="center" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;">
					<table>
						<tr>
							<th><input type="radio" id="man" value="M" name="gender" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;">
							
							<label for="man" style="color: #006600">MAN</label>
							</th>
							<td style="padding: 29px;"></td>
							<th><input type="radio" id="woman" value="W" name="gender" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;"> 
							<label for="woman" style="color: #006600" >WOMAN</label></th>
							<span class="focus-input100"></span>
						</tr>

					</table>



					<table>
						<tr>

							<th><input type="radio" id="student" name="job"
								value="student"> <label for="student" style="color: #006600">student</label></th>
							<td style="padding: 20px;"></td>
							<th><input type="radio" id="worker" name="job"
								value="worker"> <label for="worker" style="color: #006600">worker</label></th>
						</tr>

					</table>


				</div>

				<div class="wrap-input100 validate-input m-b-25">
					<input class="input100" type="text" name="address"
						placeholder="address" style = "box-shadow: 0px 0px 20px #d1febc; border-radius: 20px;"> <span class="focus-input100"></span>
				</div>
				<br> <br>
				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit" style = "background-color: #a9da81; box-shadow: 0px 0px 20px #d1febc;">submit</button>
				</div>



			</form>
	

		</div>
	</div>



	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>