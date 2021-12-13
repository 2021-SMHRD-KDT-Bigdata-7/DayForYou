<%@page import="model.challengeBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Original - Lifestyle Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="style.css">

<style type="text/css">
.product-title {
	text-align: center;
	display: table;
	border: 1px solid #cecece;
	width: 400px;
	height: 350px;
}

.product-img-div {
	display: table-cell;
	vertical-align: middle;
}

.product-img {
	max-width: 400px;
	max-height: 350px;
}
.product-title23 {
	
	text-align: center;
	display: table;
	border: 1px solid #cecece;
	width: 170px;
	height: 150px;
}

.product-img-div23 {
	display: table-cell;
	vertical-align: middle;
}

.product-img23 {
	max-width: 170px;
	max-height: 120px;
}
</style>
</head>

<body>
	<!-- 스크립트릿 -->
	<%
	challengeBoardVO zvo = (challengeBoardVO) request.getAttribute("zvo");
	%>

	<!-- Preloader -->
	<div id="preloader">
		<div class="preload-content">
			<div id="original-load"></div>
		</div>
	</div>

	<!-- Subscribe Modal -->
	<div class="subscribe-newsletter-area">
		<div class="modal fade" id="subsModal" tabindex="-1" role="dialog"
			aria-labelledby="subsModal" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="modal-body">
						<h5 class="title">Subscribe to my newsletter</h5>
						<form action="#" class="newsletterForm" method="post">
							<input type="email" name="email" id="subscribesForm2"
								placeholder="Your e-mail here">
							<button type="submit" class="btn original-btn">Subscribe</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area"> <!-- Top Header Area -->
	<div class="top-header">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<!-- Breaking News Area -->
				<div class="col-12 col-sm-8">
					<div class="breaking-news-area">
						<div id="breakingNewsTicker" class="ticker">
							<ul>
								<li><a href="#">Hello World!</a></li>
								<li><a href="#">Hello Universe!</a></li>
								<li><a href="#">Hello Original!</a></li>
								<li><a href="#">Hello Earth!</a></li>
								<li><a href="#">Hello Colorlib!</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Top Social Area -->
			</div>
		</div>
	</div>

	<!-- Logo Area -->
	<div class="logo-area text-center">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<a href="index.html" class="original-logo"><img
						src="img/logo-img/logo22.png" alt=""></a>
				</div>
			</div>
		</div>
	</div>

	<!-- Nav Area -->
	<div class="original-nav-area" id="stickyNav">
		<div class="classy-nav-container breakpoint-off">
			<div class="container">
				<!-- Classy Menu -->
				<nav class="classy-navbar justify-content-between"> <!-- Subscribe btn -->
				<div id="search-wrapper" style="margin-top: 0px;">
					<input type="text" id="search" placeholder="Search something...">

				</div>
				<!-- 글쓰기 버튼 -->
				<div class="write-bar">
					<a href="chall.jsp"><img
						src="img/challenge-main/write_button.png"
						style="position: fixed; bottom: 5%; left: 33%; right: 50%"></a>
				</div>

				<!-- Navbar Toggler -->
				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span></span><span></span><span></span></span>
				</div>

				<!-- Menu -->
				<div class="classy-menu" id="originalNav">
					<!-- close btn -->
					<div class="classycloseIcon">
						<div class="cross-wrap">
							<span class="top"></span><span class="bottom"></span>
						</div>
					</div>

					<!-- Nav Start -->
					<div class="classynav">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="#">Pages</a>
								<ul class="dropdown">
									<li><a href="index.html">Home</a></li>
									<li><a href="about-us.html">About Us</a></li>
									<li><a href="single-post.html">Single Post</a></li>
									<li><a href="contact.html">Contact</a></li>
									<li><a href="coming-soon.html">Coming Soon</a></li>
								</ul></li>
							<li><a href="#">Catagory</a>
								<ul class="dropdown">
									<li><a href="#">Catagory 1</a></li>
									<li><a href="#">Catagory 1</a></li>
									<li><a href="#">Catagory 1</a>
										<ul class="dropdown">
											<li><a href="#">Catagory 2</a></li>
											<li><a href="#">Catagory 2</a></li>
											<li><a href="#">Catagory 2</a>
												<ul class="dropdown">
													<li><a href="#">Catagory 3</a></li>
													<li><a href="#">Catagory 3</a></li>
													<li><a href="#">Catagory 3</a></li>
													<li><a href="#">Catagory 3</a></li>
													<li><a href="#">Catagory 3</a></li>
												</ul></li>
											<li><a href="#">Catagory 2</a></li>
											<li><a href="#">Catagory 2</a></li>
										</ul></li>
									<li><a href="#">Catagory 1</a></li>
									<li><a href="#">Catagory 1</a></li>
								</ul></li>
							<li><a href="about-us.html">About Us</a></li>
							<li><a href="#">Megamenu</a>
								<div class="megamenu">
									<ul class="single-mega cn-col-4">
										<li class="title">Headline 1</li>
										<li><a href="#">Mega Menu Item 1</a></li>
										<li><a href="#">Mega Menu Item 2</a></li>
										<li><a href="#">Mega Menu Item 3</a></li>
										<li><a href="#">Mega Menu Item 4</a></li>
										<li><a href="#">Mega Menu Item 5</a></li>
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title">Headline 2</li>
										<li><a href="#">Mega Menu Item 1</a></li>
										<li><a href="#">Mega Menu Item 2</a></li>
										<li><a href="#">Mega Menu Item 3</a></li>
										<li><a href="#">Mega Menu Item 4</a></li>
										<li><a href="#">Mega Menu Item 5</a></li>
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title">Headline 3</li>
										<li><a href="#">Mega Menu Item 1</a></li>
										<li><a href="#">Mega Menu Item 2</a></li>
										<li><a href="#">Mega Menu Item 3</a></li>
										<li><a href="#">Mega Menu Item 4</a></li>
										<li><a href="#">Mega Menu Item 5</a></li>
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title">Headline 4</li>
										<li><a href="#">Mega Menu Item 1</a></li>
										<li><a href="#">Mega Menu Item 2</a></li>
										<li><a href="#">Mega Menu Item 3</a></li>
										<li><a href="#">Mega Menu Item 4</a></li>
										<li><a href="#">Mega Menu Item 5</a></li>
									</ul>
								</div></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>

						<!-- Search Form  -->
						<div id="search-wrapper">
							<form action="#">
								<input type="text" id="search" placeholder="Search something...">
								<div id="close-icon"></div>
								<input class="d-none" type="submit" value="">
							</form>
						</div>
					</div>
					<!-- Nav End -->
				</div>
				</nav>
			</div>
		</div>
	</div>
	</header>
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->
	<!-- ###################################################################################################################################### -->

	<!-- ##### deep Area Start ##### -->
	<div class="product-title">
		<div class="product-img-div">
			<img class="product-img" src="<%=zvo.getChalPic1()%>"
				alt="img/logo.jpg">
		</div>
	</div>
	<div style="padding: 30px;">
		<br>
		<h5><%=zvo.getChalPublic()%>
			챌린지
		</h5>
		<br>

		<h1>
			[<%=zvo.getChalCat1()%>]
			<%=zvo.getChalSubject()%></h1>
		<p><%=zvo.getChalCnt()%>명
		</p>
		<hr style="border: solid 1px gray;">
		<h3>챌린지 기간</h3>
		<br>
		<h5><%=zvo.getChalPeriod()%></h5>

		<hr style="border: solid 1px gray;">
		<p><%=zvo.getChalContent()%></p>

		<hr style="border: solid 1px gray;">
		<h4>챌린지 진행시 꼭 알아주세요!!!!</h4>
		<p>전체 기간 동안 평일 매일,하루에 1번 인증샷을 촬영하셔야 합니다. 
		사진첩을 사용하실수 없습니다. 
		인증샷이 참가자에게만 공개됩니다. 
		공휴일에는 인증하지 않으셔도 됩니다.</p>
		<hr style="border: solid 1px gray;">
		<div style="float: left; width: 50%">
					<p align="center">좋은 인증샷 예시</p>
			<div class="product-title23">
				<div class="product-img-div23">
					<img class="product-img23" src="<%=zvo.getChalPic1()%>"
						alt="img/logo.jpg">
				</div>
			</div>
		</div>
		<div style="float: left; width: 50%">
			<p align="center">나쁜 인증샷 예시</p>
			<div class="product-title23">
				<div class="product-img-div23">
					<img class="product-img23" src="<%=zvo.getChalPic1()%>"
						alt="img/logo.jpg">
				</div>
			</div>
		</div>
		<br>
		<br>
	</div>



	<!-- ##### deep Area End ##### -->

	<!-- ##### Blog Wrapper End ##### -->

	<!-- ##### Instagram Feed Area Start ##### -->
	<div class="instagram-feed-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="insta-title">
						<h5>Follow us @ Instagram</h5>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Slides -->
		<div class="instagram-slides owl-carousel">
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="img/instagram-img/1.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="img/instagram-img/2.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="img/instagram-img/3.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="img/instagram-img/4.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="img/instagram-img/5.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="img/instagram-img/6.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
			<!-- Single Insta Feed -->
			<div class="single-insta-feed">
				<img src="img/instagram-img/7.png" alt="">
				<!-- Hover Effects -->
				<div class="hover-effects">
					<a href="#"
						class="d-flex align-items-center justify-content-center"><i
						class="fa fa-instagram"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Instagram Feed Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area text-center">
	<div class="container"></div>

	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	Copyright &copy;<script>
		document.write(new Date().getFullYear());
	</script> All rights reserved | This template is made with <i
		class="fa fa-heart-o" aria-hidden="true"></i> by <a
		href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

	</footer>
	<!-- ##### Footer Area End ##### -->

	<!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>

</body>

</html>