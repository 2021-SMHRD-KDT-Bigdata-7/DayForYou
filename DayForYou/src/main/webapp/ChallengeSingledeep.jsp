<%@page import="model.MemberVo"%>
<%@page import="model.challengeBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="euc-kr">
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
	width: 170px;
	height: 120px;
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
	MemberVo vo = (MemberVo)session.getAttribute("vo");
	
	DAO dao = new DAO();
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
								<li><a href="#">12월 주요 공지사항 확인하기</a></li>
								<li><a href="#">지금 가장 인기있는 챌린지 둘러보기</a></li>
								<li><a href="#">홈 화면에서 이 달의 이벤트를 확인하세요!</a></li>
								<li><a href="#">데이포유로 간단하게 일정관리를 해보세요</a></li>
								<li><a href="#">추천 탭에서 나에게 맞는 챌린지 알아보기!</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Top Social Area -->
				<!--  <div class="col-12 col-sm-4">
                        <div class="top-social-area">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>
                    </div> -->
			</div>
		</div>
	</div>


	<!-- Logo Area -->
	<div class="logo-area text-center">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<a href="main.jsp" class="original-logo"><img src="img/logo4.PNG" alt="" style="width: 300px; height: 95px;"></a>
				</div>
			</div>
		</div>
	</div>

	<!-- Nav Area -->
	<div class="original-nav-area" id="stickyNav">
		<div class="classy-nav-container breakpoint-off">
			<div class="container">
				<!-- Classy Menu -->
				<a id="challcheck" href="#" style="border: solid 1px gray; text-align:center; font-size:20px; color:#535c68; width:400px;height:40px; position: fixed; bottom: 1px; left: 0.1px; right: 0.1px ; background-color: #f5f6fa;">오늘부터 챌린지 시작하기</a>
				<nav class="classy-navbar justify-content-between"> <!-- Subscribe btn -->
				<!--    <div class="subscribe-btn tag">
                            <input type = "text" name = "text" placeholder = "태그 검색"  class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal">
                        </div> --> <!-- Navbar Toggler -->
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
						<%if(vo != null) { %>
						<button class="button4" onclick="location.href = 'LogoutService'">Logout</button>
						<%System.out.println("로그인 성공");%>
						<%}else{ %>
						<a href="login.jsp" class="button4">login</a>
						<%System.out.println("로그아웃 성공");%>
						<%} %>
						<ul>
							<li><a href="main.jsp">Home</a></li>
							<li><a href="my.html">Calendar</a>
								<ul class="dropdown">
									<li><a href="myCalendar.jsp">Calendar</a></li>
									<li><a href="Diarylist.jsp">Diary</a></li>
									<!--  <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="coming-soon.html">Coming Soon</a></li> -->
								</ul></li>
							<li><a href="challenge_main.jsp">Challenge</a>
							<li><a href="portfolioMain.jsp">Portfolio</a></li>


							<li><a href="#">Board</a>
								<ul class="dropdown">
									<li><a href="1_list.jsp">Community</a></li>
									<li><a>Notice</a></li>
									<li><a>Q&A</a></li>
								</ul></li>

							<!-- <li><a href="about-us.html">Portfolio</a></li> -->


							<li><a href="mypage.jsp">MyPage</a></li>
							<li><a href="shop.jsp">Point shop</a></li>
							<!--  <ul class="single-mega cn-col-4">
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
                                            </ul> -->

							<!-- Search Form  -->
							<div id="search-wrapper">
								<form action="#">
									<input type="text" id="search"
										placeholder="Search something...">
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
		<div style="height: 200px">
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
		</div>
				<hr style="border: solid 1px gray;">
		<h4>챌린지 진행시 꼭 알아주세요!!!!</h4>
		<p>전체 기간 동안 평일 매일,하루에 1번 인증샷을 촬영하셔야 합니다. 
		사진첩을 사용하실수 없습니다. 
		인증샷이 참가자에게만 공개됩니다. 
		공휴일에는 인증하지 않으셔도 됩니다.</p>
		<br>
		<br>
		
		<br>
		<br>
	</div>
		<br>



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
							 <%System.out.println(vo.getId());%>
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
 	<script src="js/jquery/jquery-2.2.4.min.js">
	</script> 
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
	 <script> 
		 <%int num = dao.ChallengeCheck(vo.getId(),zvo.getChalSeq());%> 
	 <%System.out.println("number"+num);%>
	 <%System.out.println(zvo.getChalSeq());%>
		 document.getElementById("challcheck").onclick = function() {
		 		if(<%=num%> == 999999){
						 alert('현재 챌린지 참가중 입니다.');
					}else{
						<%dao.ChallengeCntUp(zvo.getChalSeq());%>
						location.href ="MyChallengeinsert?chal_seq=<%=zvo.getChalSeq()%>";
			}
		 } 
	 </script>

	 

</body>

</html>