<%@page import="java.util.ArrayList"%>
<%@page import="model.CalendarDAO"%>
<%@page import="model.CalendarVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>DayForYou-Calender</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link rel="stylesheet" href="style.css">

<!-- 추가 CSS-->
<style>
head{
	width: 100%;
	height: 100%;
}

body {
	padding: 0;
	margin: 0;
	width: 100%;
	height: 100%;
}

div {
	box-sizing: border-box;
}

/*페이지 카테고리(my page)*/
.titleContainer {
	padding: 0;
	background-color: #ffffff;
	margin-bottom: 10px;
}

#mypage-category {
	padding-left: 10px;
	font-size: 10px;
	color: gray;
}

.name {
	padding-left: 10px;
}

/* alert badge */
.circle {
	display: inline-block;
	width: 5px;
	height: 5px;
	border-radius: 2.5px;
	background-color: #ff0000;
	position: absolute;
	top: -5px;
	left: 110%;
}

/* 녹색 텍스트 */
.green {
	color: #24855b;
}

.wrap {
	background-color: #F8F8F8;
}
/* 녹색배경 */
.greenContainer {
	height: 132px;
	background-color: #24855b;
	display: flex;
	align-items: flex-end;
	padding: 16px;
}

.greenContainer .name {
	font-size: 20px;
	font-weight: bold;
	color: #ffffff;
}

.greenContainer .modify {
	margin-left: auto;
}

/* 단골상점 , 상품후기 , 적립금 박스 */
.summaryContainer {
	background-color: white;
	display: flex;
	padding: 21px 16px;
	height: 90px;
	margin-bottom: 10px;
}
/* 단골상점 , 상품후기 , 적립금 */
.summaryContainer .item {
	flex-grow: 1
}
/* 녹색 숫자 */
.summaryContainer .number {
	font-size: 19px;
	font-weight: bold;
	color: #24855b;
}
/* 텍스트 */
.summaryContainer .item>div:nth-child(2) {
	font-size: 13px;
}

/* ================== 주문/배송조회 박스 시작 ==================== */
.shippingStatusContainer {
	padding: 21px 16px;
	background-color: white;
	margin-bottom: 10px;
}

/* 주문/배송조회 타이틀 */
.shippingStatusContainer .title {
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 15px;
}

/* 장바구니 결제완료 배송중 구매확정 [로우] */
.shippingStatusContainer .status {
	display: flex;
	justify-content: space-between;
	margin-bottom: 21px;
}
/* 장바구니 결제완료 배송중 구매확정 [아이템]  */
.shippingStatusContainer .item {
	display: flex;
}

.shippingStatusContainer .number {
	font-size: 31px;
	font-weight: 500;
	text-align: center;
}

.shippingStatusContainer .text {
	font-size: 12px;
	font-weight: normal;
	color: #c2c2c2;
	text-align: center;
}

.shippingStatusContainer .icon {
	display: flex;
	align-items: center;
	padding: 20px;
	width: 16px;
	height: 16px;
}

/*=================== 주문목록 ~ 찜한상품 리스트 ==================*/
.listContainer {
	padding: 0;
	background-color: #ffffff;
	margin-bottom: 10px;
}

.listContainer .item {
	display: flex;
	align-items: center;
	padding: 16px;
	color: black;
	text-decoration: none;
	height: 56px;
	box-sizing: border-box;
}

.listContainer .icon {
	margin-right: 14px;
}

.listContainer .text {
	font-size: 16px;
	position: relative;
}

.listContainer .right {
	margin-left: auto;
}

/*=================== 내지갑의 보유 적립금 들어가는 부분 ================*/
.listContainer .smallLight {
	font-size: 1px;
	color: #c2c2c2;
}

.listContainer .smallLight>span {
	margin-left: 10px;
}

.listContainer .right .blct {
	font-size: 14px;
	font-weight: bold;
	margin-right: 5px;
}

/* 공지사항 이용안내 고객센터 */
.infoContainer {
	background-color: white;
	display: flex;
	height: 100px;
	margin-bottom: 10px;
}

.infoContainer .item {
	flex-grow: 1;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	font-size: 13px;
	text-decoration: none;
	color: black;
}

.infoContainer .item>div:first-child {
	margin-bottom: 2px;
}

/*  */
.listContainer .item:hover {
	/*   background-color: #f8f8f8; */
	
}

.infoContainer .item:hover {
	/*   background-color: #f8f8f8; */
}

</style>



<!--fullcaleder-->
<link href='./fullcalender/lib/main.min.css' rel='stylesheet' />
<script src='./fullcalender/lib/main.min.js'></script>

<!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 13px;
}

#calendar {
	max-width: 1100px;
	margin: 0px auto;
}
</style>
</head>

<body>
<div id="test"></div>


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
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<button class="button4">Logout</button>
								<ul>
									<li><a href="main.html">Home</a></li>
									<li><a href="index.html">Calendar</a>
										<ul class="dropdown">
											<li><a href="index.html">Calendar</a></li>
											<li><a href="Diarylist.html">Diary</a></li>
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
											<li><a>Statics</a></li>
											<li><a>Sample</a></li>
											<li><a>Create</a></li>
										</ul></li>
									<li><a href="#">Board</a>
										<ul class="dropdown">
											<li><a href="index.html">Community</a></li>
											<li><a>Notice</a></li>
											<li><a>Q&A</a></li>
										</ul></li>

									<!-- <li><a href="about-us.html">Portfolio</a></li> -->

									<!--  
                                  <li><a href="#">Board</a>
                                      <div class="megamenu">
                                          <ul class="single-mega cn-col-4">
                                              <li class="title">Headline 1</li>
                                              <li><a href="#">Community</a></li>
                                              <li><a href="#">Notice</a></li>
                                              <li><a href="#">Q&A</a></li>
                                              <li><a href="#">Mega Menu Item 4</a></li>
                                              <li><a href="#">Mega Menu Item 5</a></li>
                                          </ul> -->
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
									<!--        </div>
                                  </li> -->
									<li><a href="contact.html">About Us</a></li>
								</ul>

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

	<!-- ##### caledar Area End ##### -->

		<div>
          <div class = "titleContainer">
            <div id="mypage-category">MY CALENDAR</div>
            <div class="name"><h3>Todo-List</h3></div>
          </div>    
          <div class="modify"></div>    
        </div>	

	<div id='calendar' style="position:relative; width: 100%; height:100%;">
	</div>
	
	<div>
		<div class="infoContainer">
			<a href="#" class="item">
				<div>광고문의 / 문의사항</div>
				<div>abc12345@dayforyou.com</div>
			</a>
		</div>
	</div>

	<!-- ##### Instagram Feed Area Start ##### -->
	<div class="instagram-feed-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="insta-title">
						<h5>Follow us @ DayFoyYou_instagram</h5>
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
		<script>
			document.write(new Date().getFullYear());
		</script>
		이용약관 | 개인정보처리방침 <a href="https://colorlib.com" target="_blank">000-0000-0000</a>
		<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

	</footer>
	<!-- ##### Footer Area End ##### -->

	<!-- jQuery (Necessary for All JavaScript Plugins) -->

	<script src="./jquery-3.6.0.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
<script>
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			schedulerLicenseKey : 'CC-Attribution-NonCommercial-NoDerivatives',
			//now: '2020-09-07', // 이거 비활성화하면 오늘 날짜로 나옴
			//scrollTime : '00:00', // undo default 6am scrollTime
			height : '750px', // 캘린더 높이
			expendRows : true, // 화면에 맞게 높이 설정
			editable : true, // enable draggable events
			selectable : true, // 달력에 표시된 이벤트 드래그 설정가능.
			aspectRatio : 1.8, // 가로, 세로 비율
			dayMaxEvents : false, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
			locale : 'ko', // 한국어 설정
			selectLongPressDelay: 1,
			nextDayThreshold: '23:59:59',
			buttonText : {
				month : '캘린더',
				today : '오늘',
				list : '일정'
			},
			headerToolbar : { //캘린더 상단 툴바 부분 버튼 순서
				right : 'dayGridMonth,today,listDay',
				center : 'prev,next',
				left : 'title'
			},
		
			eventChange : function(obj) { // 이벤트가 수정되면 발생하는 이벤트
				alert("이벤트 수정");
			},
			eventRemove : function(obj) { // 이벤트가 삭제되면 발생하는 이벤트
				alert('이벤트 삭제');

			},
									
			select : function(arg) { // 캘린더에서 날짜 클릭으로 이벤트를 생성할 수 있다.


				
				$("#calendar").append("<iframe src='myCalModal.jsp' style='position:absolute; width:100%; height:100%;z-index:1'></iframe>")
				
				calendar.unselect()
			},
	          
			eventClick : function(info) { // 이벤트 클릭하면 발생하는 이벤트. 현재는 삭제
				
				$("#calendar").append("<iframe src='myCalUpdateModal.jsp' style='position:absolute; width:100%; height:100%;z-index:1'></iframe>")
			
	/*			let delcal = confirm(info.event.title + "일정을 삭제하시겠습니까?");
				if (delcal == true) {
					info.event.remove();

				}*/
			},
			events : []
		}) // event : funtion end 		
		
			$.ajax({
			      url : 'myCaleSelect',
			      type : 'post',
			      dataType : 'json',
			    //  data : JSON.parse(), // 일단 json형식은 이걸로 변환하는게 맞아. 근데 길을 잃음.
			      success : function(res) {
			    	  	console.log(res); // 아까는 콘솔이 찍혔는데? 왜 지금은 안찍히냐?+
			    	  	
			    	  	if(res != null){
			    	  	
			    	  	$.each(res, function(index, element){ 
			    	  		
			    	  		let allday = element.Todo_allday;
			    	  		let cate = element.Todo_cate;
			    	  		console.log(element.Todo_sdate)
			    	  		console.log(allday)
			    	  		console.log(cate)
							console.log(index);
			    	  		
			    	  		let sdate = element.Todo_sdate;
			    	  		let edate = element.Todo_edate;
			    	  		
			    	  		if(allday == 1) {
			    	  			if(cate == "study"){
			    	  				calendar.addEvent({
				    	  				title: element.Todo_title,
				    	  				start: sdate,
				    	  				end: edate,
				    	  				allDay : true,
				    	  				color : "blue"
			    	  				}); //push
			    	  			
			    	  		} else if(cate == "execise"){
			    	  			calendar.addEvent({
				    	  				title: element.Todo_title,
				    	  				start: sdate,
				    	  				end: edate,
				    	  				allDay : true,
				    	  				color : "orange"
			    	  				}); //push
			    	  			
			    	  		} else if(cate == "hobby"){
			    	  			calendar.addEvent({
				    	  				title: element.Todo_title,
				    	  				start: sdate,
				    	  				end: edate,
				    	  				allDay : true,
				    	  				color : "green"
			    	  				}); //push
			    	  			
			    	  		} else if(cate == "important"){
			    	  			calendar.addEvent({
			    	  				title: element.Todo_title,
			    	  				start: sdate,
			    	  				end: edate,
			    	  				allDay : true,
			    	  				color : "red"
			    	  			}); //push
			    	  			
			    	  		} else if(cate == "etc"){
			    	  			calendar.addEvent({
			    	  				title: element.Todo_title,
			    	  				start: sdate,
			    	  				end: edate,
			    	  				allDay : true,
			    	  				color : "purple"
			    	  			}); //push	
			    	  		} // cate if end
			    	  		
			    	  	} else if (allday == 0) { //allday else if start
			    	  		if(cate == "study"){
			    	  			calendar.addEvent({
				    	  			title: element.Todo_title,
				    	  			start: sdate,
			    	  				end: edate,
				    	  			allDay : false,
				    	  			color : "blue"
			    	  			}); //push
			    	  				
			    	  		} else if(cate == "execise"){
			    	  			calendar.addEvent({
				    	  			title: element.Todo_title,
				    	  			start: sdate,
			    	  				end: edate,
				    	  			allDay : false,
				    	  			color : "orange"
			    	  			}); //push
			    	  				
			    	  		} else if(cate == "hobby"){
			    	  			calendar.addEvent({
				    	  			title: element.Todo_title,
				    	  			start: sdate,
			    	  				end: edate,
				    	  			allDay : false,
				    	  			color : "green"
			    	  			}); //push
			    	  			
			    	  		} else if(cate == "important"){
			    	  			calendar.addEvent({
				      				title: element.Todo_title,
				      				start: sdate,
			    	  				end: edate,
				   	  				allDay : false,
				   	  				color : "red"
			   	  				}); //push
			    	  				
			   	  			} else if(cate == "etc"){
			   	  			calendar.addEvent({
			    	  				title: element.Todo_title,
			    	  				start: sdate,
			    	  				end: edate,
			    	  				allDay : false,
			    	  				color : "purple"
			    	  			}); //push
			   	  			} //cate end
			   	  		} // allday if end
			   	  	}); //.each end							
			    
			    } //if end
			   	  	
			    }, //success end
			     error : function(){
			   	 	alert('전송실패');			    	  
			     } // error end
			});	//ajax end	
			
		console.log(calendar.events);
		calendar.render();
</script>



</body>
</html>
