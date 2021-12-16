<%@page import="model.DAO"%>
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

	<% MemberVo vo = (MemberVo)session.getAttribute("vo"); %>
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
                                    <li><a href="#">Challenge</a>
                                        <ul class="dropdown">
                                            <li><a href="challenge_main.jsp">All</a></li>
                                            <li><a href="challenge_main.jsp">Group</a></li>
                                            <li><a href="challenge_main.jsp">Individual</a>
                                               <!--  <ul class="dropdown">
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
                                                </ul> -->
                                            </li>
                                           <!--  <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a></li> -->
                                        </ul>
                                    <li><a href="portfolioMain.jsp">Portfolio</a></li>

                              
                                     <li><a href="#">Board</a>
                                        <ul class="dropdown">
                                            <li><a href="1_list.jsp">Community</a></li>
                                            <li><a>Notice</a></li>
                                            <li><a>Q&A</a></li>
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
						<div class="row align-items-end">
							<div class="board_title">
								<div style="position:relative; left: 50px;">
								<strong>자유게시판</strong>
								<p>DayForYou 회원님들과 소통할 수 있는 공간입니다 :)</p>

							</div>
							<%
									BoardDAO dao = new BoardDAO();
									ArrayList<BoardVO> boards = dao.getAllBoard();
									 
									%>
							

							<%
								BoardVO bvo = null;
								if(session.getAttribute("bvo") !=null){
								   bvo = (BoardVO)session.getAttribute("bvo");
								}
								
								%>
							<%!
							
								   public Integer toInt(String x){
								      int a = 0;
								      try{
								         a = Integer.parseInt(x);
								      }catch(Exception e){}
								      return a;
								   }
								%>
							<%
								   int pageno = toInt(request.getParameter("pageno"));
								   if(pageno<1){
								      pageno = 1;
								   }
								   int total_record = boards.size();
								   int page_per_record_cnt = 5;  
								   int group_per_page_cnt =5;                                      
								   int record_end_no = pageno*page_per_record_cnt;            
								   int record_start_no = record_end_no-(page_per_record_cnt-1);
								   if(record_end_no>total_record){
								      record_end_no = total_record;
								   }                                                         
								   int total_page = total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0);
								   if(pageno>total_page){
								      pageno = total_page;
								   }
								   int group_no = pageno/group_per_page_cnt+(pageno%group_per_page_cnt>0 ? 1:0);              
								   int page_eno = group_no*group_per_page_cnt;      
								   int page_sno = page_eno-(group_per_page_cnt-1);      
								   if(page_eno>total_page){   
								      page_eno=total_page;
								   }
								   
								   int prev_pageno = page_sno-group_per_page_cnt;
								   int next_pageno = page_sno+group_per_page_cnt;
								   if(prev_pageno<1){   
								      prev_pageno=1;
								
								   }
								   if(next_pageno>total_page){   
								      next_pageno=total_page/group_per_page_cnt*group_per_page_cnt+1;
								   
								   }
								
								%>
								
							<table border="1" class="#" style="position: ">
								<tr id="head_tr" class="#">
									<td class="#">번호</td>
									<td class="#">제목</td>
									<td class="#">카테고리</td>
									<td class="#">작성자</td>
									<td class="#">시간</td>
									<td class="#">조회수</td>
								</tr>

								<%if(boards.size()>(pageno)*5){%>

								<%for(int i=0;i<5;i++){%>

								<tr class="#">
									<%//String result = boards.get(i+(pageno-1)*5).getReg_date().substring(5,11);%>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getArticle_seq()%></td>
									<td class="#"><a class="main_a"
										href="1_content.jsp?article_seq=<%=boards.get(i+(pageno-1)*5).getArticle_seq()%>"><%=boards.get(i+(pageno-1)*5).getArticle_subject()%></a></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getArticle_kind()%></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getM_id()%></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getReg_date()%></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getArticle_count()%></td>
								</tr>
								<%}%>
								<%}else if(boards.size()<(pageno)*5) {%>
								<%for(int i=0;i<(pageno)*5-boards.size();i++){%>
								<tr class="#">
									<%//String result = boards.get(i+(pageno-1)*5).getReg_date().substring(5,11);%>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getArticle_seq()%></td>
									<td class="#"><a class="main_a"
										href="1_content.jsp?article_seq=<%=boards.get(i+(pageno-1)*5).getArticle_seq()%>"><%=boards.get(i+(pageno-1)*5).getArticle_subject()%></a></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getArticle_kind()%></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getM_id()%></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getReg_date()%></td>
									<td class="#"><%=boards.get(i+(pageno-1)*5).getArticle_count()%></td>
								</tr>
								<%}%>
								<%}else{%>

								<%}%>


							</table>
							<div class = "bt_wrap">
							<a href = '1_writeForm.jsp'" class= "on">글작성</a>
							</div>	
							<div class="board_page">

								<%-- <a href="c_Community.jsp?pageno=1">[맨앞으로]</a>
								<a href="c_Community.jsp?pageno=<%=prev_pageno%>">[이전]</a>  --%>
								<a class = "bt first" href="1_list.jsp?pageno=<%=prev_pageno%>">≪ </a><a href="#" class="bt prev">이전</a>
								<%
							   for (int i = page_sno; i <= page_eno; i++) {
							   %>
								<a class = "num" href="1_list.jsp?pageno=<%=i%>"> <%
									 if (pageno == i) {
									 %> <span id="cho" align="center"><%=i%></span> <%
									 } else {
									 %> <%=i%> <%
									 }
									 %>
								</a>
								<%
								   if (i < page_eno) {
								   %>
								<%
								   }
								   %>
								<%
								   }
								   %>
								<a href="1_list.jsp?pageno=<%=prev_pageno%>" class="bt next">다음</a> <a href="#" class="bt last">>></a>
										
									</div>

								<%-- <a href="c_Community.jsp?pageno=<%=next_pageno%>" >[다음]</a>
								<a href="c_Community.jsp?pageno=<%=total_page %>">[맨뒤로]</a> --%>

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
						<script>document.write(new Date().getFullYear());</script>
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