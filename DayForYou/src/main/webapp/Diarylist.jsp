
<%@page import="model.diaryVO"%>
<%@page import="model.DAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="EUC-KR">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Diarylist</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="style.css">

</head>

<body>
	<%
//								HttpSession session = request.getSession();
//								MemberVo vo = (MemberVo) session.getAttribute("vo");
//								String m_id = vo.getId();
		 	String m_id ="m_id 01";

			DAO dao = new DAO();
			ArrayList<diaryVO> diarys = dao.SelectDiary(m_id);%>
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
									<li><a href="#">record your day with Dayforyou</a></li>
									<li><a href="#">It's winter</a></li>
									<li><a href="#">Merry Christmas!</a></li>
									<li><a href="#">Good day:)</a></li>
									<li><a href="#">Do challenge with Dayforyou!</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Top Social Area -->
					<!-- <div class="col-12 col-sm-4">
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
						<a href="index.html" class="original-logo"><img
							src="img/logo-img/logomini.PNG" alt=""></a>
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

						<!-- Subscribe btn -->
						<!--   <div class="subscribe-btn">
                            <a href="#" class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal">Subscribe</a>
                        </div> -->

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
									<li><a href="index.html">Home</a></li>
									<li><a href="#">Calendar</a>
										<ul class="dropdown">
											<li><a href="index.html">Calendar</a></li>
											<li><a href="about-us.html">Diary</a></li>
											<!--  <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="coming-soon.html">Coming Soon</a></li> -->
										</ul></li>
									<li><a href="#">Challenge</a>
										<ul class="dropdown">
											<li><a href="#">All</a></li>
											<li><a href="#">Group</a></li>
											<li><a href="#">Individual</a> <!--  <ul class="dropdown">
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a>
                                                        <ul class="dropdown">
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                </ul> --></li>
											<!--  <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a></li> -->
										</ul></li>
									<li><a href="#">Portfolio</a>
										<ul class="dropdown">
											<li><a href="index.html">Statics</a></li>
											<li><a href="about-us.html">Sample</a></li>
											<li><a href="about-us.html">Create</a></li>
										</ul></li>
									<li><a href="#">Board</a>
										<ul class="dropdown">
											<li><a href="index.html">Community</a></li>
											<li><a href="about-us.html">Notice</a></li>
											<li><a href="about-us.html">Q&A</a></li>
										</ul></li>


									<li><a href="contact.html">About Us</a></li>
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
		style="background-image: url(img/main-img/diary.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-content text-center">
						<h2 id="recordyourday">Record your day</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcumb Area End ##### -->






	<!--diary============================================================================= -->
	<div class="blog-wrapper section-padding-100-0 clearfix">
		<div class="container">
			<div class="row align-items-end">
				<!-- Single Blog Area -->
				<div class="col-12 col-lg-4">
					<div class="single-blog-area clearfix mb-100">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">Calendar</a>

							<div>
								<h1>Diary</h1>
								<button class="button5" onclick="location.href='Diaryform.html'">write</button>
							</div>
							<hr>

							<div>
								<table id="table11" align="center" width="400px" height="400px">
									<tr align="center">
										<td>Number</td>
										<td>Title</td>
										<td>Date</td>
									</tr>
									<%for(diaryVO dvo : diarys) {%>
									<tr align="center">
										<td><%=dvo.getDiary_seq()%></td>
										<td><a
											href="DiarySingleService?diary_seq=<%=dvo.getDiary_seq()%>"><%=dvo.getDiary_subject()%></a></td>
										<td><%=dvo.getReg_date() %></td>
									</tr>
									
									<script>
 
										function test(ths){
      											  var hello = $(ths).text();
       												 $('#kind').val(hello);
 
										</script>

									<%} %>
								</table>
							</div>
							<br>
							<br>

							<div>
								<hr>
								<button class="button4" id="more">더보기</button>
							</div>
							<h4>
								<a href="#" class="post-headline"></a>
							</h4>
							<p class="mb-3"></p>
						</div>
					</div>
				</div>
				<!-- Single Blog Area -->
				<div class="col-12 col-lg-4">
					<div class="single-blog-area clearfix mb-100">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<p class="mb-3"></p>
						</div>
					</div>
				</div>
				<!-- Single Blog Area -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-catagory-area clearfix mb-100">
						<img src="img/main-img/photo.jpg" alt="">
						<!-- Catagory Title -->
						<div class="catagory-title">
							<a href="#">Photo >></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- ##### Blog Wrapper End ##### -->

	<!-- ##### Instagram Feed Area Start ##### -->



	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area text-center">
		<div class="container">
			<div class="row">
				<div class="col-12">

					<!-- Footer Nav Area -->
					<div class="classy-nav-container breakpoint-off">
						<!-- Classy Menu -->
						<nav class="classy-navbar justify-content-center">

							<!-- Navbar Toggler -->
							<!--  <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>
 -->
							<!-- Menu -->
							<div class="classy-menu">

								<!-- close btn -->
								<div class="classycloseIcon">
									<div class="cross-wrap">
										<span class="top"></span><span class="bottom"></span>
									</div>
								</div>

								<!-- Nav Start -->
								<div class="classynav">
									<ul>
										<li><a href="#">Home</a></li>
										<li><a href="#">About Us</a></li>
										<li><a href="#">Lifestyle</a></li>
										<li><a href="#">travel</a></li>
										<li><a href="#">Music</a></li>
										<li><a href="#">Contact</a></li>
									</ul>
								</div>
								<!-- Nav End -->
							</div>
						</nav>
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
		<script>document.write(new Date().getFullYear());</script>
		
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