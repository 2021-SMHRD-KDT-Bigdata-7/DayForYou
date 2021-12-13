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

</head>

<body>
	<!-- 스크립트릿 -->
	<%
	DAO dao = new DAO();
	ArrayList<challengeBoardVO> chall_personal = dao.SelectChallengeBoard_cat("개인");
	int last_chall_personal = chall_personal.size()-1;
	
	
	ArrayList<challengeBoardVO> chall_group = dao.SelectChallengeBoard_cat("그룹");
	int last_chall_group = chall_group.size()-1;
	
	ArrayList<challengeBoardVO> chall_all= dao.SelectChallengeBoard_cat("전체");
	int last_chall_all = chall_all.size()-1;
	
	ArrayList<challengeBoardVO> chall_popularity = dao.SelectChallengeBoard_cat("인기");
	int last_chall_popularity = chall_popularity.size()-1;
	
	ArrayList<challengeBoardVO> chall_suggestion =  dao.SelectChallengeBoard_cat("추천");
	int last_chall_suggestion = chall_suggestion.size()-1;
		
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
	<!-- ##### Header Area End ##### -->

	<!-- ##### Breadcumb Area Start ##### -->
	<div class="breadcumb-area bg-img"
		style="background-image: url(img/bg-img/b1.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-content text-center">
						<h2>챌린지</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- ##### Cool Facts Area Start ##### -->
	<div
		class="cool-facts-area section-padding-100-0 bg-img background-overlay"
		style="background-image: url(img/bg-img/b4.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="single-blog-area blog-style-2 text-center mb-100">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">공 지 사 항</a>
							<h4>
								<a href="#" class="post-headline">챌린지에 오신 것을 환영합니다!</a>
							</h4>
							<p>이곳은 Day For You입니다. 모두 함께 챌린지에 도전해보세요!!</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<!-- Single Cool Facts Area -->
				<div class="col-12 col-sm-6 col-lg-3">
					<div class="single-cool-facts-area text-center mb-100">
						<table style="margin: 20%;">
							<tr>
								<td>
									<h2>
										<span class="counter">25</span>
									</h2>
								</td>
								<td rowspan="2" width="30px"></td>
								<td>
									<h2>
										<span class="counter">23</span>
									</h2>
								</td>
							</tr>
							<tr>
								<td><p>Awards won</p></td>

								<td><p>Awards won</p></td>
							</tr>
						</table>
						<table style="margin: 20%">
							<tr>
								<td>
									<h2>
										<span class="counter">25</span>
									</h2>
								</td>
								<td></td>
								<td>
									<h2>
										<span class="counter">23</span>
									</h2>
								</td>
							</tr>
							<tr>
								<td><p>Awards won</p></td>
								<td></td>
								<td><p>Awards won</p></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Cool Facts Area End ##### -->

	<!-- ##### Blog Wrapper Start ##### -->
	<div class="blog-wrapper section-padding-100-0 clearfix">
		<div class="container">
			<div class="row">

				<!-- My 챌린지 영역  -->

				<div class="col-12 col-md-6 col-lg-4">
					<div>
						<h2>My 챌린지</h2>
					</div>

					<div class="single-blog-area blog-style-2" style="margin: 10 0 0 0">

						<div class="single-blog-thumbnail">

							<a href="temp.html"><img
								src="<%= chall_personal.get(0).getChalPic1()%>"
								alt="img/logo.png"> </a>
							<div class="post-date">
								<a href="#"><%= chall_personal.get(0).getChalCnt() %> <span>0명</span></a>
							</div>
						</div>
						<!-- Blog Content -->
						<div class="single-blog-content" style="margin: 10 0 0 0">

							<a href="#" class="post-tag"><%=chall_personal.get(0).getChalCat2() %></a>
							<h4>
								<a href="#" class="post-headline"><%=chall_personal.get(0).getChalSubject()%></a>
							</h4>
						</div>
					</div>
					<div align="right">
						<a href="challenge_deep.jsp?chal_cat1=<%=chall_personal.get(0).getChalCat1()%>">더보기</a>
					</div>
				</div>
			</div>
			<hr>
			<!-- 추천 챌린지 영역  -->
			<div class="col-12 col-md-6 col-lg-4">
				<div>
					<h2>추천 챌린지</h2>
				</div>
				<div class="single-blog-area blog-style-2">

					<div class="single-blog-thumbnail">
<%-- 						<a href="ChallengeSingleService?chal_seq=<%=dvo.getDiary_seq()%>""><img --%>
						<a href="ChallengeSingleService?chal_seq=298"><img
							src="<%=chall_suggestion.get(0).getChalPic1() %>"
							alt="img/logo.png"> </a>
						<div class="post-date">
							<a href="#"><%= chall_suggestion.get(0).getChalCnt() %><span>1명</span></a>
						</div>
					</div>
					<!-- Blog Content -->
					<div class="single-blog-content">						
						<a href="#" class="post-tag"><%=chall_suggestion.get(0).getChalCat2() %></a>
						<h4>
							<a href="#" class="post-headline"><%=chall_suggestion.get(0).getChalSubject()%></a>
						</h4>
					</div>

				</div>
				<div align="right">
					<a href="#">더보기</a>
				</div>
			</div>
			<hr>
		</div>
		
		<!-- 인기 챌린지 영역  -->
		<div class="col-12 col-md-6 col-lg-4">
			<div>
				<h2>인기 챌린지</h2>
			</div>
			<div class="single-blog-area blog-style-2">

				<div class="single-blog-thumbnail">
					<a href="temp.html"><img
						src="<%=chall_popularity.get(0).getChalPic1() %>"
						alt="img/logo.png"> </a>
					<div class="post-date">
						<a href="#"><%=chall_popularity.get(0).getChalCnt() %> <span>0명</span></a>
					</div>
				</div>
				<!-- Blog Content -->
				<div class="single-blog-content">					
					<a href="#" class="post-tag"><%=chall_popularity.get(0).getChalCat2() %></a>
					<h4>
						<a href="#" class="post-headline"><%=chall_popularity.get(0).getChalSubject()%></a>
					</h4>
				</div>
			</div>
			<div align="right">
				<a href="challenge_deep.jsp">더보기</a>
			</div>
			<hr>
		</div>		
	</div>
	
	<!-- 그룹 챌린지 영역  -->
	<div class="col-12 col-md-6 col-lg-4">
		<div>
			<h2>그룹 챌린지</h2>
		</div>
		<div class="single-blog-area blog-style-2">

			<div class="single-blog-thumbnail">
				<img src="<%=chall_group.get(0).getChalPic1() %>" alt="img/logo.png">
				<div class="post-date">
					<a href="#"><%= chall_group.get(0).getChalCnt() %> <span>0명</span></a>
				</div>
			</div>
			<!-- Blog Content -->
			<div class="single-blog-content">				
				<a href="#" class="post-tag"><%=chall_group.get(0).getChalCat2() %></a>
				<h4>
					<a href="#" class="post-headline"><%=chall_group.get(0).getChalSubject()%></a>
				</h4>
			</div>
			<div align="right">
				<a href="#">더보기</a>
			</div>
		</div>
	<hr>
	</div>
	
	<!-- 전체 챌린지 영역  -->
	<div class="col-12 col-md-6 col-lg-4">
		<div>
			<h2>전체 챌린지</h2>
		</div>
		<div class="single-blog-area blog-style-2">

			<div class="single-blog-thumbnail">
				<img src="<%=chall_group.get(0).getChalPic1() %>" alt="img/logo.png">
				<div class="post-date">
					<a href="#"><%= chall_group.get(0).getChalCnt() %> <span>0명</span></a>
				</div>
			</div>
			<!-- Blog Content -->
			<div class="single-blog-content">				
				<a href="#" class="post-tag"><%=chall_group.get(0).getChalCat2() %></a>
				<h4>
					<a href="#" class="post-headline"><%=chall_group.get(0).getChalSubject()%></a>
				</h4>
			</div>
		</div>
		<div align="right">
			<a href="#">더보기</a>
		</div>
	</div>

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