<%@page import="model.MySelectChallVO"%>
<%@page import="model.MyChallengeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.shopVO"%>
<%@page import="model.DAO"%>
<%@page import="model.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style type="text/css">
.product-title {
	text-align: center;
	display: table;
	border: 1px solid #cecece;
	width: 350px;
	height: 250px;
}

.product-img-div {
	display: table-cell;
	vertical-align: middle;
}

.product-img {
	max-width: 350px;
	max-height: 250px;
}
</style>
<head>
<meta charset="EUC-KR">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>my_challenge</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="style.css">


<style>
.centered {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

table {
	width: 400px;
	height: 40px;
	text-size: 100;
}
</style>
</head>

<body>
	<%
	DAO dao = new DAO();
	ArrayList<MyChallengeVO> mvo = (ArrayList<MyChallengeVO>) request.getAttribute("mvo");
	MySelectChallVO msvo = null;
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
	<header class="header-area">

		<!-- Top Header Area -->
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

				</div>
			</div>
		</div>

		<!-- Logo Area -->
		<div class="logo-area text-center">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<a href="index.html" class="original-logo"><img
							src="img/main-img/logo3.png" alt=""></a>
					</div>
				</div>
			</div>
		</div>

		<!-- Nav Area -->
		<div class="original-nav-area" id="stickyNav">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Classy Menu -->
					<nav class="classy-navbar justify-content-between">


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
								<button class="button4">Logout</button>
								<ul>
									<li><a href="main.html">Home</a></li>
									<li><a href="#">Calendar</a>
										<ul class="dropdown">
											<li><a href="index.html">Calendar</a></li>
											<li><a href="Diarylist.jsp">Diary</a></li>

										</ul></li>
									<li><a href="#">Challenge</a>
										<ul class="dropdown">
											<li><a href="#">All</a></li>
											<li><a href="#">Group</a></li>
											<li><a href="#">Individual</a></li>

										</ul></li>
									<li><a href="portfolioMain.jsp">Portfolio</a></li>
									<li><a href="#">Board</a>
										<ul class="dropdown">
											<li><a href="index.html">Community</a></li>
											<li><a href="about-us.html">Notice</a></li>
											<li><a href="about-us.html">Q&A</a></li>
										</ul></li>


									<li><a href="mypage.html">MyPage</a></li>
								</ul>

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
		style="background-image: url(img/portfolio-img/portfoliosample.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-content text-center">
						<h2 id="recordyourday">Challenge</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcumb Area End ##### -->

	<br>
	<br>


	<div class="blog-wrapper section-padding-100-0 clearfix">
		<div class="container">
			<div class="row align-items-end">
				<!-- Single Blog Area -->
				<div class="col-12 col-lg-4">
					<div class="single-blog-area clearfix mb-100">
						<!-- Blog Content -->
						<div class="single-blog-content">

							<div class="centered">
								<div class="line"></div>
								<a href="#" class="post-tag"> my Challenge</a>
								<div>
									<h1>Challenge</h1>
								</div>
								<hr>


								<!-- 시작~!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
								<!-- 시작~!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
								<!-- 시작~!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
								<!-- 시작~!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
								<!-- 시작~!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
								<div>
									<div class="group">

										<hr style="border: solid 1px gray;">

										<%
										for (int i = 0; i < mvo.size(); i++) {
										%>
										<%
										msvo = dao.MySelectChall(mvo.get(i).getChal_seq());
										%>
										<br>
										<p style="font-size: 16px; color: black; font-weight: bold;"><%=msvo.getChal_cat2()%></p>
										<a href="myDailyChallenge?chal_seq=<%=mvo.get(i).getChal_seq() %>">
										<div class="product-title">
											<div class="product-img-div">
												<img class="product-img" src="<%=msvo.getChal_pic1()%>"
													alt="img/logo.jpg">
											</div>
										</div>
										</a>
										<div style="padding-top: 5px; padding-bottom: 5px;">
											<div
												style="display: inline-block; width: 70px; font-size: 12px; color: rgb(64, 64, 64); text-align: center; line-height: 2em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(224, 224, 224);">
												<%=msvo.getChal_public()%>
											</div>
											<div style="display: inline-block;">
												<a href="myDailyChallenge?chal_seq=<%=mvo.get(i).getChal_seq() %>" style="text-align: center; font-size: 16px; color: black; font-weight: bold"><%=msvo.getChal_subject()%></a>
											</div>
										</div>
										<div
											style="border-top-left-radius: 30px; border-top-right-radius: 30px; border-bottom-right-radius: 30px; border-bottom-left-radius: 30px; text-align: center; line-height: 20px; color: rgb(255, 255, 255); font-size: 16px; box-shadow: none; background-color: rgb(26, 188, 156);">
											<%=msvo.getChal_period()%>
										</div>
										<br>
										<h4>
											시간 :
											<%=mvo.get(i).getChal_time()%>
											hours
										</h4>
										<h4>
											횟수 :
											<%=mvo.get(i).getChal_num()%>
											times
										</h4>
										<br>
										<hr style="border: solid 1px gray;">


										<%
										}
										%>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Footer Social Area -->
				<div class="footer-social-area mt-30">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Pinterest"><i class="fa fa-pinterest"
						aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip"
						data-placement="top" title="Facebook"><i
						class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"
						data-toggle="tooltip" data-placement="top" title="Twitter"><i
						class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
						data-toggle="tooltip" data-placement="top" title="Dribbble"><i
						class="fa fa-dribbble" aria-hidden="true"></i></a> <a href="#"
						data-toggle="tooltip" data-placement="top" title="Behance"><i
						class="fa fa-behance" aria-hidden="true"></i></a> <a href="#"
						data-toggle="tooltip" data-placement="top" title="Linkedin"><i
						class="fa fa-linkedin" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	<script>
		document.write(new Date().getFullYear());
	</script>
	이용약관 | 개인정보처리방침
	<a href="https://colorlib.com" target="_blank">000-0000-0000</a>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

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
</body>

</html>