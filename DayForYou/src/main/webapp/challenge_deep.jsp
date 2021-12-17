<%@page import="model.MemberVo"%>
<%@page import="model.challengeBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="EUC-KR">
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
	width: 350px;
	height: 250px;
}

.product-img-div {
	display: table-cell;
	vertical-align: middle;
}

.product-img {
	max-width: 400px;
	max-height: 300px;
}
</style>
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>
</head>

<body>

	<%
	MemberVo vo = (MemberVo) session.getAttribute("vo");
	
	DAO dao = new DAO();
	request.setCharacterEncoding("EUC-KR");
	String chal_cat1 = request.getParameter("chal_cat1");
	System.out.println(chal_cat1);
	ArrayList<challengeBoardVO> chall_personal = dao.SelectChallengeBoard_cat(chal_cat1);
	if (chall_personal == null) {
		System.out.println("null입니다.");
	}
	int lastIndex = chall_personal.size() - 1;
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
						<h2><%=chal_cat1 %>
							챌린지
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Cool Facts Area End ##### -->

	<!-- ##### Blog Wrapper Start ##### -->
	<div class="blog-wrapper section-padding-50-0 clearfix">
		<div class="container">
			<div class="row" id="contentStart">
				<div class="col-12 col-md-6 col-lg-4" >
					<div class="single-blog-area blog-style-2" id="divContent">
						<div class="single-blog-thumbnail">
		<p style="font-size: 16px; color: black; font-weight: bold;">
		<%=chall_personal.get(0).getChalCat2()%>
		</p>
			<img class = "product-img" src="<%=chall_personal.get(0).getChalPic1()%>"
				alt="img/challenge_sample/none.png"
				onclick="password(<%=chall_personal.get(0).getChalPw()%>, <%=chall_personal.get(0).getChalSeq()%>);">							
		</div>

		<!-- Blog Content -->
		<div class="single-blog-content">
		<div style="padding-top: 5px; padding-bottom: 5px;">
                 <div
                    style="display: inline-block; width: 80px; font-size: 12px; color: rgb(64, 64, 64); text-align: center; line-height: 2em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(224, 224, 224);">
                    <%=chall_personal.get(0).getChalPublic()%>
                 </div>
                 <div style="display: inline-block;">
                    <a href="ChallengeSingleService?chal_seq=<%=chall_personal.get(0).getChalSeq() %>" style="text-align: center; font-size: 16px; color: black; font-weight: bold"><%=chall_personal.get(0).getChalSubject()%></a>
                 </div>
              </div>
              <div
                 style="border-top-left-radius: 30px; border-top-right-radius: 30px; border-bottom-right-radius: 30px; border-bottom-left-radius: 30px; text-align: center; line-height: 20px; color: rgb(255, 255, 255); font-size: 16px; box-shadow: none; background-color: rgb(26, 188, 156);">
                 <%=chall_personal.get(0).getChalPeriod()%>
              </div>					
			<div style="margin: 2px; font-size: 16px; color: black; font-weight: bold">
				<h4>인원 수: <%= chall_personal.get(0).getChalCnt() %>
				</h4>
			</div>
		<hr style="border: solid 1px gray;">
			</div>	
	<%
		for (int i = 1; i < chall_personal.size(); i++) {
		%>					
  
		<div class="single-blog-thumbnail">
		<p style="font-size: 16px; color: black; font-weight: bold;">
		<%=chall_personal.get(i).getChalCat2()%>
		</p>
			<img class = "product-img" src="<%=chall_personal.get(i).getChalPic1()%>"
				alt="img/challenge_sample/none.png"
				onclick="password(<%=chall_personal.get(i).getChalPw()%>, <%=chall_personal.get(i).getChalSeq()%>);">							
		</div>

		<!-- Blog Content -->
		<div class="single-blog-content">
		<div style="padding-top: 5px; padding-bottom: 5px;">
                 <div
                    style="display: inline-block; width: 80px; font-size: 12px; color: rgb(64, 64, 64); text-align: center; line-height: 2em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(224, 224, 224);">
                    <%=chall_personal.get(i).getChalPublic()%>
                 </div>
                 <div style="display: inline-block;">
                    <a href="ChallengeSingleService?chal_seq=<%=chall_personal.get(i).getChalSeq() %>" style="text-align: center; font-size: 16px; color: black; font-weight: bold"><%=chall_personal.get(i).getChalSubject()%></a>
                 </div>
              </div>
              <div
                 style="border-top-left-radius: 30px; border-top-right-radius: 30px; border-bottom-right-radius: 30px; border-bottom-left-radius: 30px; text-align: center; line-height: 20px; color: rgb(255, 255, 255); font-size: 16px; box-shadow: none; background-color: rgb(26, 188, 156);">
                 <%=chall_personal.get(i).getChalPeriod()%>
              </div>					
			<div style="margin: 2px; font-size: 16px; color: black; font-weight: bold">
				<h4>인원 수: <%= chall_personal.get(i).getChalCnt() %>
				</h4>
			</div>
		<hr style="border: solid 1px gray;">
			</div>	
    
		<%
		}
		%>

					</div>
				</div>
			</div>
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
	<script>									
	function password(pass, seq) {
		let link = 'ChallengeSingleService?chal_seq=' + seq;
		if(typeof pass == "undefined" || pass == null || pass == ""){		
			location.replace(link);	
		}else{		
			let password = prompt("비밀번호를 입력하세요.");
			if(pass != password){
				alert("비밀번호가 틀렸습니다.");					
			}	
			else{						
				location.replace(link);	
			}
		}
	}
    	
		
    $(window).ready(function(){
    //스크롤 발생 이벤트 처리
    $('body').scroll(function(){
        var scrollT = $(this).scrollTop(); //스크롤바의 상단위치
        var scrollH = $(this).height(); //스크롤바를 갖는 div의 높이
        var contentH = $('body').height(); //문서 전체 내용을 갖는 div의 높이
         // 스크롤바가 아래 쪽에 위치할 때
           
        
            if($(window).scrollTop() == ($(document).height() - $(window).height())){
            	 $('body').append(tag);
            	console.log('끝');
            	$('footer').before(div);
            }
        }
    });
});



	</script>

</body>

</html>