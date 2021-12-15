<%@page import="model.MemberVo"%>
<%@page import="model.challengeBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"	pageEncoding="euc-kr"%>
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
<link rel="stylesheet" href="chall_style.css">
<link rel="stylesheet" href="style.css">

</head>

<body>
	<%
	MemberVo vo = (MemberVo)session.getAttribute("vo");
	out.print(vo);

	DAO dao = new DAO();
	
	
%>
<% if(vo==null){ %>
<script> alert("로그인이 필요합니다")</script>
<%} %>
	<!-- 스크립트릿 -->

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
	
	<div style="padding: 30px;">
		<form action="ChallService" method="post"
			enctype="multipart/form-data">

			<hr style="border: solid 1px gray;">
				<tr height="35px" bgcolor="whitesmoke">
					<td align="right">챌린지 분류</td>
					<td align="left">
					<select name="chall_cat1">
							<option value="개인">개인</option>
							<option value="그룹">그룹</option>
							<option value="전체">전체</option>
							<option value="인기">인기</option>
							<option value="추천">추천</option>
					</select></td>
				</tr>
			<hr style="border: solid 1px gray;">

			<h5 align="center">어떤 주제와 관련이 있나요?</h5>
			<br>

			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all1" name="chall_cat2" value="health">
						<label for="view_all1"><span class="round"></span>건강</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live1" name="chall_cat2" value="emotion">
						<label for="view_live1"> <span class="round"></span>정서
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live2" name="chall_cat2" value="life">
						<label for="view_live2"> <span class="round"></span>생활
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live3" name="chall_cat2" value="ability">
						<label for="view_live3"> <span class="round"></span>역량
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live4" name="chall_cat2" value="asset">
						<label for="view_live4"> <span class="round"></span>자산
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live5" name="chall_cat2" value="hobby">
						<label for="view_live5"> <span class="round"></span>취미
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live6" name="chall_cat2" value="etc">
						<label for="view_live6"> <span class="round"></span>그외
					</label>
				</span></li>
			</ul>
			<br> <br> <br>
			<hr style="border: solid 1px gray;">
			<br>
			<h5 align="center">챌린지 제목을 입력해주세요.</h5>
			<br>
			<!-- 밑 사이즈 작게 -->
			<p class="mb-15">타인에게 불쾌감을 주는 단어를 사용할 경우 계정이 영구정지 될 수 있습니다</p>
			<div align="center">
				<input type="text" name="chall_subject" style="width: 300px" required><br>
			</div>
			<br>
			<hr style="border: solid 1px gray;">
			<br>

			<!--===========================================================  -->
			<br>
			<h5 align="center">챌린지를 소개하세요.</h5>
			<br>
			<!-- 밑 사이즈 작게 -->
			<div align="center">

				<textarea name="chall_Introduce" id="" cols="34" rows="5"
					placeholder="추가 글로 챌린지를 자세히 소개해보세요." required></textarea>
			</div>
			<!-- 글자수 체크해주는 것 넣어야함 -->
			<br> <br>
			<hr style="border: solid 1px gray;">
			<input type="file" id="chooseFile1" name="chall_pic1"
				accept="image/*" onchange="loadFile(this)">
			<h5 align="center">챌린지 대표 이미지를 등록하세요.</h5>
			<!-- ================================================================== -->
			<div align="center">
				<div class="single-image-1">
					<label for="chooseFile1">
						<div class="labelbox">
							<p id="labeltext">클릭</p>
						</div>
					</label>
				</div>
				<br>
			<div class="image-box" align="center">
				<img class="image-thumbnail" id="image1" />
			</div>
			</div>

			<!-- ================================================================== -->
			<br> <br>

			<hr style="border: solid 1px gray;">

			<!--===========================================================  -->
			<h5 align="center">챌린지 시작일</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all2" name="chall_start" value="today">
						<label for="view_all2"><span class="round"></span> <span
							class="selectDate">오늘??</span> </label>
						<p class="start1" style="display: none;"></p>

				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv1" name="chall_start" value="1_week">
						<label for="view_liv1"> <span class="round"></span> <span
							class="selectDate">아냐.. 담주?</span>
					</label>
						<p class="start2" style="display: none;"></p>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv2" name="chall_start" value="2_weeks">
						<label for="view_liv2"> <span class="round"></span> <span
							class="selectDate">역시 2주 정도?</span>
					</label>
						<p class="start3" style="display: none;"></p>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv3" name="chall_start" value="1_month">
						<label for="view_liv3"> <span class="round"></span> <span
							class="selectDate">담달에 할까?</span>
					</label>
						<p class="start4" style="display: none;"></p>
				</span></li>
			</ul>
			<br> <br>
			<hr style="border: solid 1px gray;">
			<br>
			<h5 align="center">챌린지 기간</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all3" name="chall_period" value="1_day">
						<label for="view_all3"><span class="round"></span>1 Day</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li1" name="chall_period" value="1_week">
						<label for="view_li1"> <span class="round"></span>1 Week
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li2" name="chall_period" value="2_weeks">
						<label for="view_li2"> <span class="round"></span>2 Weeks
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li3" name="chall_period" value="3_weeks">
						<label for="view_li3"> <span class="round"></span>3 Weeks
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li4" name="chall_period" value="1_month">
						<label for="view_li4"> <span class="round"></span>1 Month
					</label>
				</span></li>
			</ul>
			<br> <br>
			<!-- 기한 나타내주는 jquary  -->
			<p class="start1" style="display: none;"></p>
			<p class="start2" style="display: none;"></p>
			<p class="start3" style="display: none;"></p>
			<p class="start4" style="display: none;"></p>
			<p id="period" style="display: none;"></p>

			<!-- 챌린지 예상 종료일 보여주는 부분 있으면 좋을듯-->
			<hr style="border: solid 1px gray;">
			<br>
			<h5 align="center">모집 방식을 선택해주세요.</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all4" name="chall_Private" value="official"
						onClick="this.form.chall_pw.disabled=true"> <label
						for="view_all4"><span class="round"></span>공개모집</label> <!-- 기본은 공개모집 으로써 공개모집 선택시 태그설정탭-->
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_l1" name="chall_Private" value="informal"
						onClick="this.form.chall_pw.disabled=false"> <label
						for="view_l1"> <span class="round"></span>비공개모집
					</label> <!-- 비밀번호 설정 창이 나와야함 (참가코드설정)-->
				</span></li>
			</ul>
			<br>
			<div align="center">
				<input type="text" name="chall_pw" size="30" disabled
					placeholder="비밀번호를 입력해 주세요" required>
			</div>

			<br> <br>
			<hr style="border: solid 1px gray;">




			<br>
			<h5 align="center">인증샷 예시를 등록하세요.</h5>
			<br>
			<p class="mb-3">다른 사람들과 함께하게 된다면, 정확한 기준일수록 향후 분쟁 소지가 적습니다.</p>
			<br>
			<!--=========================================================================  -->
			<!--=========================================================================  -->
			<!--=========================================================================  -->
			<!--=========================================================================  -->
			<input type="file" id="chooseFile2" name="chall_pic2" accept="image/*"
						onchange="loadFile(this)">
			<div class="image-box">
				<h5>좋은 인증샷 예시</h5>
				<div class="single-image-1">
					<label class="single-label" for="chooseFile2"> 
						<div class="labelbox">
							<p id="labeltext">클릭</p>
						</div>
					</label>
				</div>
			</div>
			<div class="image-box">
				<img class="image-thumbnail" id="image2" /> <br>
			</div>
			<div class="image-box">
				<h5>나쁜 인증샷 예시</h5>
				<div class="single-image-1">
					<label class="single-label" for="chooseFile3"> <input
						type="file" id="chooseFile3" name="chall_pic3" accept="image/*"
						onchange="loadFile(this)">
						<div class="labelbox">
							<p id="labeltext">클릭</p>
						</div>
					</label>


				</div>
			</div>
			<div class="image-box">
				<img class="image-thumbnail" id="image3" /> <br>
			</div>
			<!--=========================================================================  -->
			<!--=========================================================================  -->
			<!--=========================================================================  -->
			<!--=========================================================================  -->
			<hr style="border: solid 1px gray;">
			<br>
			<!-- 마지막 제출을 누를시 모든것을 보여주는 창이있으면 좋겠음 -->
			<div align="center">
			<input type="submit"
				style="width: 300px; background-color: ##caffbf; "
				value="챌린지 개설하기">
			</div>
		</form>
	</div>










	<!-- Active js -->
	<script src="js/chall.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		var StartDate = new Date();
		$('input[name="chall_period"]').on(
				'change',
				function() {
					var now = new Date(StartDate);

					let changed = $(this).val();
					console.log(changed)

					if (changed == '1_day') {
						now.setDate(now.getDate() + 1);
					} else if (changed == '1_month') {
						now.setMonth(now.getMonth() + 1);
					} else if (changed == '1_week') {
						now.setDate(now.getDate() + 7);
					} else if (changed == '2_weeks') {
						now.setDate(now.getDate() + 14);
					} else {
						now.setDate(now.getDate() + 21);
					}

					var year = now.getFullYear();
					var month = now.getMonth() + 1;
					var day = now.getDate();
					var hours = now.getHours();
					var minutes = now.getMinutes();

					var today = new Date();

					$('#period').html(
							" ~ " + year + "/" + month + "/" + day
									)
					$('#period').css('display', 'block');
				});

		$('input[name="chall_start"]').on(
				'change',
				function() {
					var now = new Date();

					let changed = $(this).val();

					var today = new Date();
					if (changed == 'today') {
						now.setDate(now.getDate());
					} else if (changed == '1_month') {
						now.setMonth(now.getMonth() + 1);
					} else if (changed == '1_week') {
						now.setDate(now.getDate() + 7);
					} else {
						now.setDate(now.getDate() + 14);
					}

					var eyear = now.getFullYear();
					var emonth = now.getMonth() + 1;
					var eday = now.getDate();
					var ehours = now.getHours();
					var eminutes = now.getMinutes();

					if (changed == 'today') {
						$('.start1').css('display', 'inline').html(
								eyear + "/" + emonth + "/" + eday
										)
						$('.start2').css('display', 'none');
						$('.start3').css('display', 'none');
						$('.start4').css('display', 'none');
					} else if (changed == '1_month') {
						$('.start4').css('display', 'inline');
						$('.start4').html(
								eyear + "/" + emonth + "/" + eday
						)
						$('.start1').css('display', 'none');
						$('.start2').css('display', 'none');
						$('.start3').css('display', 'none');
					} else if (changed == '1_week') {
						$('.start2').css('display', 'inline');
						$('.start2').html(
								eyear + "/" + emonth + "/" + eday
						)
						$('.start1').css('display', 'none');
						$('.start3').css('display', 'none');
						$('.start4').css('display', 'none');
					} else {
						$('.start3').css('display', 'inline');
						$('.start3').html(
								eyear + "/" + emonth + "/" + eday
						)
						$('.start1').css('display', 'none');
						$('.start2').css('display', 'none');
						$('.start4').css('display', 'none');
					}

					StartDate = now;
				});
	</script>

	<!-- ##### Cool Facts Area Start ##### -->
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