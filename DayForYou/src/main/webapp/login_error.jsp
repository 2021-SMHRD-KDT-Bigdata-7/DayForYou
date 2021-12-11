<%@page import="java.net.URLDecoder"%>
<%@page import="Controller.loginService"%>
<%@page import="model.DAO"%>
<%@page import="model.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login V9</title>
<meta charset="utf-8">
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
<% Cookie co[] = request.getCookies();
String error_id = "";
for(Cookie i: co){
	if(i.getName().equals("error_id")){		
		error_id = URLDecoder.decode(i.getValue(), "UTF-8");
		break;
	}
}

%>


	<div class="container-login100">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" action="loginService"
				onSubmit="return login()">
				<span class="login100-form-title p-b-37"> day for you </span>

				<div class="wrap-input100 validate-input m-b-20"
					data-validate="Enter id">
					<input class="input100" type="text" name="id" placeholder="<%=error_id%>" id = "userId">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25"
					data-validate="Enter pw">
					<input class="input100" type="password" name="pw" placeholder="pw" id = "userPw">
					<span class="focus-input100"></span>
				</div>
				<input type="hidden" name="ACCESS" value="true">
				<!-- 로그인 실패 시, 출력 -->
				<div id = "failMsg"> <p style = "color:red;">아이디 또는 비밀번호를 다시 확인하세요.</p></div>
				 <br> 

				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit" id = "submitBtn">login</button>
				</div>
			</form>

			<br>

			<div class="container-login100-form-btn">
				<a href="main.html">
					<button class="login100-form-btn">B_login</button>
				</a>
			</div>

			<br>

			<div class="text-center">
				<a href="join.jsp" class="txt2 hov1"> Sign Up </a>
			</div>



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