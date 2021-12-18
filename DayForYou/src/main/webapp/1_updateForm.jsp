<%@page import="model.MemberVo"%>
<%@page import="model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BoardDAO"%>
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
<title>DreamForest - records daily, start challenge</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/Post_style.css">
<link rel="stylesheet" href="css/Post_media.css">
<link rel="stylesheet" href="css/Post_css.css">

</head>

<body>
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
						<h5 class="title">게시글 검색</h5>
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
							 
										<%MemberVo vo = (MemberVo)session.getAttribute("vo");%>
		                           		<%if(vo != null) { %>
                            					<button class="button4" onclick = "location.href = 'LogoutService'">Logout</button>
                            					<%System.out.println("로그인 성공");%>										
                            			<%}else{ %>
												<a href = "login.jsp" class="button4">login</a>
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
                                        </ul>
                                    </li>
                                    <li><a href="challenge_main.jsp">Challenge</a>                                        
                                    <li><a href="portfolioMain.jsp">Portfolio</a></li>

                              
                                     <li><a href="#">Board</a>
                                        <ul class="dropdown">
                                            <li><a href="1_list.jsp">Community</a></li>
                                            <li><a href="2_Notice.jsp">Notice</a></li>
                                            <li><a href="2_FAQ.jsp">Q&A</a></li>
                                        </ul>
                                    </li>
                                    
                                    <!-- <li><a href="about-us.html">Portfolio</a></li> -->
                                    

                                     <li><a href="mypage.jsp">MyPage</a></li>
                                     <li><a href="shop.jsp">Point shop</a></li>
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

	<!-- ##### Hero Area Start ##### -->
	<div class="hero-area">
		<!-- Hero Slides Area -->
		<div class="hero-slides owl-carousel">
			<!-- Single Slide -->
			 <div class="single-hero-slide bg-img" style="background-image: url(img/main-img/mainbanner1.png);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">Check Event</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">2021 연말 챌린지 도전하고 특별 혜택받기!</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/main-img/banner2.png);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">Hot Challenge</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">Check variable challenge</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/main-img/diaryimg.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">2022 Diary</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">2022 다이어리도 데이포유와 함께</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### Blog Wrapper Start ##### -->
	<div class="blog-wrapper section-padding-100 clearfix">
		<div class="container">
			<div class="row align-items-end">
				<!-- Single Blog Area -->
				<div class="col-12 col-lg-4">
					<div class="single-blog-area clearfix mb-100">
						<!-- Blog Content -->
						<div class="board_wrap">
							<div class="board_title" style="position:relative; bottom:100px; right:20px;">
								<h1>자유게시판</h1>
								<hr>
								<br><br>
							<h3>게시글 수정</h3>
							</div>
							<%
							BoardVO bvo = (BoardVO) request.getAttribute("bvo");
							%>


							<form
								action="1_updatePro.jsp?article_seq=<%=bvo.getArticle_seq()%>"
								method="post" style="position:relative; bottom:100px; right: 20px;">
								<input type="hidden" name="article_seq"
									value="<%=bvo.getArticle_seq()%>">
								<table style="border:none; width: 270px;">
									<tr  style="border-bottom:1px solid #e7e7e3; height:25px;">
										<td>글쓴이</td>
										<td><input type="text" name="m_id"
											value="<%=bvo.getM_id()%>" style="outline:none; border:none;"></td>
									</tr>
									<tr style="border-bottom:1px solid #e7e7e3; height:25px;">
										<td>비밀번호</td>
										<td><input type="password" name="user_article_pwd" style="outline:none; border:none;"></td>
									</tr>
									<tr style="border-bottom:1px solid #e7e7e3; height:25px;">
										<td>글쓴이</td>
										<td><input type="text" name="article_subject"
											value="<%=bvo.getArticle_subject()%>" style="outline:none; border:none;"></td>
									</tr>
									<tr style="border-bottom:1px solid #e7e7e3; height:25px;">
										<td>분류</td>
										<td><input type="text" name="article_kind"
											value="<%=bvo.getArticle_kind()%>" style="outline:none; border:none;"></td>
									</tr>
									<tr style="height: 200px;">
										<td>내용</td>
										<td><textarea rows="10" cols="30" name="article_content"><%=bvo.getArticle_content()%></textarea></td>
									</tr>
									<input type="hidden" name="article_pwd"
										value="<%=bvo.getArticle_pwd()%>">
									</div>

									<tr>
										<td colspan="2"><input type="submit" value="글수정" style="outline:none; border:none; width:45px; height:30px; position:relative; left:220px;"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>


					<!-- ##### Instagram Feed Area End ##### -->

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
											<div class="classy-navbar-toggler">
												<span class="navbarToggler"><span></span><span></span><span></span></span>
											</div>

											<!-- Menu -->
											<div class="classy-menu">

												<!-- close btn -->
												<div class="classycloseIcon">
													<div class="cross-wrap">
														<span class="top"></span> <span class="bottom"></span>
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
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
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