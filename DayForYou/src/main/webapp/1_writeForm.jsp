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
                        <a href="main.jsp" class="original-logo"><img src="img/main-img/logo3.png" alt=""></a>
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
                     <!--    <div class="subscribe-btn tag">
                            <input type = "text" name = "text" placeholder = "태그 검색"  class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal">
                        </div> -->

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" id="originalNav">
                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
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
	

	<!-- ##### Blog Wrapper Start ##### -->
	<div class="blog-wrapper  clearfix">
		<div class="container">
			<div class="row align-items-end">
				<!-- Single Blog Area -->
				<div class="col-12 col-lg-4">
					<div class="single-blog-area clearfix mb-100">
						<!-- Blog Content -->
						<div class="board_wrap">
							<div class="board_title"
								style="position: relative; bottom: 100px; right: 30px;">
								<h2>Write Here</h2>
								<hr>
								<p>DayForYou에 이야기를 남겨주세요 : )</p>

							</div>
							<form action="writerBoardService?m_id=<%=vo.getId() %>" method="post"
								style="position: relative; right: 30px;">
								<table class="#"
									style="position: relative; left: 15px; width: 100%; height: 300px; align: center; bottom: 50px;">

									<tr class="#" align="center"
										style="height: 30px; font-size: 13px; border: 0; border-bottom: 1px solid #e7e7e3; padding: 15px;">
										<td>비밀번호</td>
										<td><input type="text" name="article_pwd"
											style="border: none;"></td>
									</tr>
									<tr class="#" align="center"
										style="height: 30px; font-size: 13px; border: 0; border-bottom: 1px solid #e7e7e3; padding: 15px;">
										<td>제목</td>
										<td><input type="text" name="article_subject"
											style="border: none;"></td>
									</tr>
									<tr class="#" align="center"
										style="height: 30px; font-size: 13px; border: 0; border-bottom: 1px solid #e7e7e3; padding: 15px;">
										<td>카테고리</td>
										<td><input type="text" name="article_kind"
											style="border: none;"></td>
									</tr>
									<tr class="#" align="center"
										style="height: 200px; font-size: 13px; border: 0; border-bottom: 1px solid #e7e7e3; padding: 15px;">
										<td>내용</td>
										<td><textarea rows="8" cols="25" name="article_content"
												placeholder="여기에 작성해주세요."
												style="position: relative; top: 5px;"></textarea></td>
									</tr>
									<tr class="#" align="right"
										style="height: 40px; font-size: 13px; padding: 15px;">
										<td colspan="2"><input type="submit" value="write"
											style="outline: none; border: none; width: 50px; height: 30px; border-radius: 50px; position: relative; top: 10px;"></td>
									</tr>
								</table>
							</form>

						</div>
					</div>
				</div>
			</div>
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