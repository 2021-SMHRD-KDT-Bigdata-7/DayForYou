<%@page import="model.challengeBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
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

 <!--fullcaleder-->
  <link href='./fullcalender/lib/main.min.css' rel='stylesheet' />
  <script src='./fullcalender/lib/main.min.js'></script>

  <!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
  <meta name="viewport"
    content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

  <script>

    document.addEventListener('DOMContentLoaded', function () {
      var calendarEl = document.getElementById('calendar');

      var calendar = new FullCalendar.Calendar(calendarEl, {
        schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
        //now: '2020-09-07', // 이거 비활성화하면 오늘 날짜로 나옴
        scrollTime: '00:00', // undo default 6am scrollTime
        height: '500px', // 캘린더 높이
        expendRows: true, // 화면에 맞게 높이 설정
        editable: true, // 달력에 생성된 이벤트를 수정할수 있는지
        selectable: true, // 달력에 표시된 이벤트 드래그 설정가능.
        aspectRatio: 1.8, // 가로, 세로 비율
        dayMaxEvents: false, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
        locale: 'ko', // 한국어 설정
        buttonText: {
          month: '캘린더',
          today: '오늘',
          list: '일정'
        },
        headerToolbar: { //캘린더 상단 툴바 부분 버튼 순서
          right: 'dayGridMonth,today,listDay',
          center: 'prev,next',
          left: 'title'
        },
        dayMaxEventRows: true,
        views: {
          timeGrid: {
            dayMaxEventRows: 5
          }
        },

        resourceAreaHeaderContent: '일정',
        resources: [
          { id: 'a', title: '공부', eventColor: "blue" },
          { id: 'b', title: '운동', eventColor: 'orange' },
          { id: 'c', title: '취미', eventColor: 'green' },
          { id: 'e', title: '기타', eventColor: 'purple' },
        ],
        events: [
          {id: '1', resourceId: 'a', start: '2021-12-06T14:00:00', end: '2021-12-06T18:00:00', title: 'UX/UI' },
          { id: '2', resourceId: 'a', start: '2021-12-07', end: '2021-12-12', title: '프로젝트' },
          { id: '3', resourceId: 'e', start: '2021-12-10', end: '2021-12-10', title: '카드값 결제일' },
          { id: '4', resourceId: 'd', start: '2021-12-11', end: '2021-12-11', title: '생일' },
          { id: '5', resourceId: 'a', start: '2021-12-13', end: '2021-12-19', title: '프로젝트' },
          { id: '6', resourceId: 'a', start: '2021-12-20', end: '2021-12-22', title: '프로젝트' },
          { id: '7', resourceId: 'd', start: '2021-12-21', end: '2021-12-22', title: '발표' },
          { id: '8', resourceId: 'b', start: '2021-12-08', end: '2021-12-08', title: '배드민턴' },
          { id: '9', resourceId: 'b', start: '2021-12-15', end: '2021-12-15', title: '배드민턴' },
          { id: '10', resourceId: 'b', start: '2021-12-18', end: '2021-12-18', title: '측구' },
          { id: '11', resourceId: 'e', start: '2021-12-15', end: '2021-12-15', title: '월급' },
          { id: '12', resourceId: 'c', start: '2021-12-17', end: '2021-12-17', title: '영화' },
          { id: '13', resourceId: 'd', start: '2021-12-24', end: '2021-12-25T23:59:59', title: '크리스마스 파티' },
          { id: '14', resourceId: 'c', start: '2021-12-06', end: '2021-12-06', title: '도서 구매' },
          { id: '14', resourceId: 'c', start: '2021-12-21', end: '2021-12-21', title: '기타 연습' }
        ]
      });

      calendar.render();
    });



  </script>

</head>

<body>
	<!-- 스크립트릿 --!>
	<%
	DAO dao = new DAO();
	
	//각 종류별로 게시글 불러오기.
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
	
	//누적 챌린지 수
	int allChallengeCount = dao.CountAllChallenge();	
	//현재 진행중인 챌런지 수
	int nowChallengeCount = 0;
	//누적 참가자 수
	int allChallengeCountCnt = dao.countChallCnt();
	//현재 진행중인 참가자 수
	int nowChallengeCountCnt = 0;
	
	
	//챌린지 마감날짜 불러오기.
	ArrayList<String> endDateChall = dao.getEndDateChallenge();
	//현재 챌린지를 진행하는 수들 
	ArrayList<Integer> nowCnt = dao.getNowCnt();
		
	//챌린지 기간 ~를 기점으로 마감날짜만 빼오는 배열
	ArrayList<String> divide1 = new ArrayList<String>();	
	
	
	//챌린지 기간 부분에 '년월일'을 나누는 배열들.
	ArrayList<String> year = new ArrayList<String>();
	ArrayList<String> month = new ArrayList<String>();
	ArrayList<String> day = new ArrayList<String>();
	
	int count = endDateChall.size();
	
	String[] endDate = new String[count];
			
	for(int i = 0; i < endDateChall.size(); i++){			
		String[] arr = new String[2];
		arr = endDateChall.get(i).split("~");
		divide1.add(arr[1]);
	}
	
	for(int i = 0 ; i < divide1.size(); i++){
		String[] arr = divide1.get(i).split("/");			
		year.add(arr[0]);
		month.add(arr[1]);
		day.add(arr[2]);		
	}
	
	LocalDate now = LocalDate.now();
	int nowYear = now.getYear();
	int nowMonth  = now.getMonthValue();
	int nowDate = now.getDayOfMonth();
	
	
	for(int i = 0; i < year.size(); i++){	
		if(Integer.parseInt(year.get(i))<=nowYear){			
			if(Integer.parseInt(month.get(i)) <= nowMonth){
				System.out.println(nowDate + " : " + day.get(i));
				if(Integer.parseInt(day.get(i)) <= nowDate ){
					nowChallengeCount++;
					nowChallengeCountCnt = nowChallengeCountCnt + nowCnt.get(i);
				
				}
			}
		}
	}
		
		
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
						<h2>챌린지</h2>						
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
						<table style = "margin-left:auto; margin-right:auto;">
							<tr>
								<td>
									<h2>
										<span class="counter"><%=allChallengeCount %></span>
									</h2>
								</td>								
								<td>
									<h2>
										<span class="counter"><%=nowChallengeCount %></span>
									</h2>
								</td>
							</tr>
							<tr>
								<td><p>누적 챌린지 수</p></td>
								<td><p>진행중인 챌린지 수</p></td>
							</tr>
						
							<tr>
								<td>
									<h2>
										<span class="counter"><%=allChallengeCountCnt %></span>
									</h2>
								</td>
							
								<td>
									<h2>
										<span class="counter"><%=nowChallengeCountCnt %></span>
									</h2>
								</td>
							</tr>
							<tr>
								<td><p>누적 참가자 수</p></td>
								
								<td><p>진행중인 참가자 수</p></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


  <!-- ##### Calendar Area Start #####-->

  <div id='calendar'></div>

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
								<a href="#"><%= chall_personal.get(0).getChalCnt() %> </a>
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
						<a href="ChallengeSingleService?chal_seq=327"><img
							src="<%=chall_suggestion.get(0).getChalPic1() %>"
							alt="img/logo.png"> </a>
						<div class="post-date">
							<a href="#"><%= chall_suggestion.get(0).getChalCnt() %></a>
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
						<a href="challenge_deep.jsp?chal_cat1=<%=chall_suggestion.get(0).getChalCat1()%>">더보기</a>
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
						<a href="#"><%=chall_popularity.get(0).getChalCnt() %> </a>
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
					<a href="challenge_deep.jsp?chal_cat1=<%=chall_popularity.get(0).getChalCat1()%>">더보기</a>
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
					<a href="#"><%= chall_group.get(0).getChalCnt() %></a>
				</div>
			</div>
			<!-- Blog Content -->
			<div class="single-blog-content">				
				<a href="#" class="post-tag"><%=chall_group.get(0).getChalCat2() %></a>
				<h4>
					<a href="challenge_deep.jsp?chal_cat1=<%=chall_group.get(0).getChalCat1()%>">더보기</a>
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
				<img src="<%=chall_all.get(0).getChalPic1() %>" alt="img/logo.png">
				<div class="post-date">
					<a href="#"><%= chall_all.get(0).getChalCnt() %></a>
				</div>
			</div>
			<!-- Blog Content -->
			<div class="single-blog-content">				
				<a href="#" class="post-tag"><%=chall_all.get(0).getChalCat2() %></a>
				<h4>
					<a href="#" class="post-headline"><%=chall_all.get(0).getChalSubject()%></a>
				</h4>
			</div>
		</div>
		<div align="right">
				<a href="challenge_deep.jsp?chal_cat1=<%=chall_all.get(0).getChalCat1()%>">더보기</a>
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