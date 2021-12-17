<%@page import="model.MemberVo"%>
<%@page import="model.MyChallengeVO"%>
<%@page import="model.challengeBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DayDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
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

<!--fullcaleder-->
<link href='./fullcalender/lib/main.min.css' rel='stylesheet' />
<script src='./fullcalender/lib/main.min.js'></script>

<!-- ȭ�� �ػ󵵿� ���� ���� ũ�� ����(����� ����) -->
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

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


</head>

<body>


	<%MemberVo vo = (MemberVo)session.getAttribute("vo");%>
	<!-- ��ũ��Ʈ�� --!>
	<%
	String m_id = "a";
	DAO dao = new DAO();
	
	//�� �������� �Խñ� �ҷ�����.
	ArrayList<challengeBoardVO> chall_personal = dao.SelectChallengeBoard_cat("����");
	int last_chall_personal = chall_personal.size()-1;
		
	ArrayList<challengeBoardVO> chall_group = dao.SelectChallengeBoard_cat("�׷�");
	int last_chall_group = chall_group.size()-1;
	
	ArrayList<challengeBoardVO> chall_all= dao.SelectChallengeBoard_cat("��ü");
	int last_chall_all = chall_all.size()-1;
	
	ArrayList<challengeBoardVO> chall_popularity = dao.SelectChallengeBoard_cat("�α�");
	int last_chall_popularity = chall_popularity.size()-1;
	
	ArrayList<challengeBoardVO> chall_suggestion =  dao.SelectChallengeBoard_cat("��õ");
	int last_chall_suggestion = chall_suggestion.size()-1;
	
	
		
	
	//���� ç���� ��
	int allChallengeCount = dao.CountAllChallenge();	
	//���� �������� ç���� ��
	int nowChallengeCount = 0;
	//���� ������ ��
	int allChallengeCountCnt = dao.countChallCnt();
	//���� �������� ������ ��
	int nowChallengeCountCnt = 0;
	
	//////////////////////����///////////////////
	
	//���� �����ϰ��ִ� ç�������� ���۳�¥ ����ִ� arraylist
	ArrayList<String> challengeStartDate = null;
	//���� �����ϰ��ִ� ç�������� ��������¥ ����ִ� arraylist
	ArrayList<String> challengeEndDate = null;
	//myChallengesSeq: ���� �����ϰ��ִ� ç���� ����
	ArrayList<Integer> ChallengesSeq = null;
	//myChallengeCat2: ���� �����ϰ��ִ� ç������ ī�װ�2
	ArrayList<String> myChallengeCat2 = null;
	//myChallengeTitle: ���� �����ϰ��ִ� ç������ ����
	ArrayList<String> myChallengeTitle = null;
	//mychallengesSeq: �� ç���� ����
	ArrayList<String> myChallengesSeq = null;
	//ī�װ�2 �ߺ����� �θ���.
	ArrayList<String> myChallengesCat2NoDuple = dao.challengeCategoryNoDuple(m_id);
	//Į�� �迭
	String[] arr = {"blue","indigo","purple","pink","red","orange","green","teal","gray"};
		
	
	//���� ç������ �����ϴ� ���� 
	ArrayList<Integer> nowCnt = dao.getNowCnt();
		
	//ç���� �����³�¥ �θ���
	ArrayList<DayDAO> challengeStartPeriod = null;
	challengeStartPeriod = dao.getChallengePeriod(1);
	
	LocalDate now = LocalDate.now();
	int nowYear = now.getYear();
	int nowMonth  = now.getMonthValue();
	int nowDate = now.getDayOfMonth();
	

	for(int i = 0; i < challengeStartPeriod.size(); i++){	
		if(challengeStartPeriod.get(i).getYear() <=nowYear){			
			if(challengeStartPeriod.get(i).getMonth() <= nowMonth){				
				if(challengeStartPeriod.get(i).getDate() <= nowDate ){
					nowChallengeCount++;
					nowChallengeCountCnt = nowChallengeCountCnt + nowCnt.get(i);
				
				}
			}
		}
	}
	

		
	%>
	
	<%
	
	// ç���� Ķ���� ����	
	ArrayList<MyChallengeVO> myChallenges = dao.MychallengeSelectAll(m_id);
	
	//ChallengesSeq: ���� �����ϰ��ִ� ç�������� ����
	ChallengesSeq = new ArrayList<>();	
	//myChallengesSeq: ���� �����ϰ��ִ� ç���� ����� ����
	myChallengesSeq = new ArrayList<>();
	for(int i = 0 ; i < myChallenges.size(); i++){
		ChallengesSeq.add(myChallenges.get(i).getChal_seq());	
		myChallengesSeq.add(Integer.toString(myChallenges.get(i).getMy_chal_seq()));
	}	
	
	//myChallengesInfo: ���� �����ϰ��ִ� ç���� ������ ����ִ� arraylist
	ArrayList<challengeBoardVO> myChallengesInfo = new ArrayList<>();
	
	//ç�������� ����ֱ�.
	for(int i = 0 ; i < ChallengesSeq.size(); i++){
		myChallengesInfo.add(dao.ChallengeSingleService(ChallengesSeq.get(i)));			
	}
	
	
	//���� �����ϰ��ִ� ç�������� ��¥�� ����ִ� arraylist
	ArrayList<String> challengeDate = new ArrayList<>();
	
	//���� �����ϰ��ִ� ç�������� ��¥�� ����ִ� arraylist
	myChallengeTitle = new ArrayList<>();
	//myChallengeCat2: ���� �����ϰ��ִ� ç������ ī�װ�2
	myChallengeCat2 = new ArrayList<>();
	for(int i = 0; i < myChallengesInfo.size(); i++){
		challengeDate.add(myChallengesInfo.get(i).getChalPeriod());
		myChallengeTitle.add(myChallengesInfo.get(i).getChalSubject());
		myChallengeCat2.add(myChallengesInfo.get(i).getChalCat2());				
	}
		
	//���� �����ϰ��ִ� ç�������� ���۳�¥ ����ִ� arraylist
	challengeStartDate = new ArrayList<>();
	for(int i = 0; i < myChallengesInfo.size(); i++){
		challengeStartDate.add(dao.dividePeriodWave(myChallengesInfo.get(i).getChalPeriod(),0));
	
	}

	//���� �����ϰ��ִ� ç�������� ��������¥ ����ִ� arraylist
	challengeEndDate = new ArrayList<>();	
	for(int i = 0; i < myChallengesInfo.size(); i++){
		challengeEndDate.add(dao.dividePeriodWave(myChallengesInfo.get(i).getChalPeriod(),1));
		
	}
	
		
	%>
	
		


	
	
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
				<nav class="classy-navbar justify-content-between"> <!-- Subscribe btn -->
				<div id="search-wrapper" style="margin-top: 0px;">
					<input type="text" id="search" placeholder="Search something...">

				</div>
				<!-- �۾��� ��ư -->
				<div class="write-bar">
					<a href="challenge_make.jsp"><img
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
						<%if(vo != null) { %>
						<button class="button4" onclick="location.href = 'LogoutService'">Logout</button>
						<%System.out.println("�α��� ����");%>
						<%}else{ %>
						<a href="login.jsp" class="button4">login</a>
						<%System.out.println("�α׾ƿ� ����");%>
						<%} %>
						<ul>
							<li><a href="main.jsp">Home</a></li>
							<li><a href="my.html">Calendar</a>
								<ul class="dropdown">
									<li><a href="myCalendar.html">Calendar</a></li>
									<li><a href="Diarylist.jsp">Diary</a></li>
									<!--  <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="coming-soon.html">Coming Soon</a></li> -->
								</ul></li>
							<li><a href="#">Challenge</a>
								<ul class="dropdown">
									<li><a href="challenge_main.jsp">All</a></li>
									<li><a href="challenge_main.jsp">Group</a></li>
									<li><a href="challenge_main.jsp">Individual</a> <!--  <ul class="dropdown">
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
								</ul>
							<li><a href="portfolioMain.jsp">Portfolio</a></li>


							<li><a href="#">Board</a>
								<ul class="dropdown">
									<li><a href="1_writeForm.jsp">Community</a></li>
									<li><a>Notice</a></li>
									<li><a>Q&A</a></li>
								</ul></li>

							<!-- <li><a href="about-us.html">Portfolio</a></li> -->


							<li><a href="mypage.html">MyPage</a></li>
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

	<!-- ##### Breadcumb Area Start ##### -->
	<div class="breadcumb-area bg-img"
		style="background-image: url(img/bg-img/b1.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-content text-center">
						<h2>ç����</h2>
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
							<a href="#" class="post-tag">�� �� �� ��</a>
							<h4>
								<a href="#" class="post-headline">ç������ ���� ���� ȯ���մϴ�!</a>
							</h4>
							<p>�̰��� Day For You�Դϴ�. ��� �Բ� ç������ �����غ�����!!</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<!-- Single Cool Facts Area -->
				<div class="col-12 col-sm-6 col-lg-3">
					<div class="single-cool-facts-area text-center mb-100">
						<table style="margin-left: auto; margin-right: auto;">
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
								<td><p>���� ç���� ��</p></td>
								<td><p>�������� ç���� ��</p></td>
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
								<td><p>���� ������ ��</p></td>

								<td><p>�������� ������ ��</p></td>
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

				<!-- My ç���� ����  -->

				<div class="col-12 col-md-6 col-lg-4">
					<div>
						<h2>My ç����</h2>
					</div>

					<div class="single-blog-area blog-style-2" style="margin: 10 0 0 0">

						<div class="single-blog-thumbnail">

							<a
								href="challenge_deep.jsp?chal_cat1=<%=chall_personal.get(0).getChalCat1()%>"><img
								src="<%= chall_personal.get(0).getChalPic1()%>"
								alt="img/logo.png" class = "product-img"> </a>						
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
						<a
							href="challenge_deep.jsp?chal_cat1=<%=chall_personal.get(0).getChalCat1()%>">������</a>
					</div>
				</div>
			</div>
			<hr style="border: solid 1px gray;">
			<!-- ��õ ç���� ����  -->
			<div class="col-12 col-md-6 col-lg-4">
				<div>
					<h2>��õ ç����</h2>
				</div>
				<div class="single-blog-area blog-style-2">

					<div class="single-blog-thumbnail">
						<%-- 						<a href="ChallengeSingleService?chal_seq=<%=dvo.getDiary_seq()%>""><img --%>
						<a href="challenge_deep.jsp?chal_cat1=<%=chall_suggestion.get(0).getChalCat1()%>"><img class = "product-img"
							src="<%=chall_suggestion.get(0).getChalPic1() %>"
							alt="img/logo.png"> </a>
						
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
					<a
						href="challenge_deep.jsp?chal_cat1=<%=chall_suggestion.get(0).getChalCat1()%>">������</a>
						
				</div>
			</div>
			<hr style="border: solid 1px gray;">
		</div>

		<!-- �α� ç���� ����  -->
		<div class="col-12 col-md-6 col-lg-4">
			<div>
				<h2>�α� ç����</h2>
			</div>
			<div class="single-blog-area blog-style-2">

				<div class="single-blog-thumbnail">
					<a href="challenge_deep.jsp?chal_cat1=<%=chall_popularity.get(0).getChalCat1()%>"><img class = "product-img"
						src="<%=chall_popularity.get(0).getChalPic1() %>"
						alt="img/logo.png"> </a>
					
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
				<a
					href="challenge_deep.jsp?chal_cat1=<%=chall_popularity.get(0).getChalCat1()%>">������</a>
			</div>
			<hr style="border: solid 1px gray;">
		</div>
	</div>

	<!-- �׷� ç���� ����  -->
	<div class="col-12 col-md-6 col-lg-4">
		<div>
			<h2>�׷� ç����</h2>
		</div>
		<div class="single-blog-area blog-style-2">

			<div class="single-blog-thumbnail">
				<a href="challenge_deep.jsp?chal_cat1=<%=chall_group.get(0).getChalCat1()%>"><img class = "product-img" src="<%=chall_group.get(0).getChalPic1() %>" alt="img/logo.png">
				</a>
			</div>
			<!-- Blog Content -->
			<div class="single-blog-content">
				<a href="#" class="post-tag"><%=chall_group.get(0).getChalCat2() %></a>
				
			</div>
			<div align="right">
				<a href="challenge_deep.jsp?chal_cat1=<%=chall_group.get(0).getChalCat1()%>">������</a>
			</div>
		</div>
		<hr style="border: solid 1px gray;">
	</div>

	<!-- ��ü ç���� ����  -->
	<div class="col-12 col-md-6 col-lg-4">
		<div>
			<h2>��ü ç����</h2>
		</div>
		<div class="single-blog-area blog-style-2">

			<div class="single-blog-thumbnail">
				<a href="challenge_deep.jsp?chal_cat1=<%=chall_all.get(0).getChalCat1()%>"><img class = "product-img" src="<%=chall_all.get(0).getChalPic1() %>" alt="img/logo.png"></a>
				
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
			<a
				href="challenge_deep.jsp?chal_cat1=<%=chall_all.get(0).getChalCat1()%>">������</a>
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


	<!-- Preloader -->
	
	<script>

    document.addEventListener('DOMContentLoaded', function () {
      var calendarEl = document.getElementById('calendar');

      var calendar = new FullCalendar.Calendar(calendarEl, {
        schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
        //now: '2020-09-07', // �̰� ��Ȱ��ȭ�ϸ� ���� ��¥�� ����
        scrollTime: '00:00', // undo default 6am scrollTime
        height: '500px', // Ķ���� ����
        expendRows: true, // ȭ�鿡 �°� ���� ����
        editable: true, // �޷¿� ������ �̺�Ʈ�� �����Ҽ� �ִ���
        selectable: true, // �޷¿� ǥ�õ� �̺�Ʈ �巡�� ��������.
        aspectRatio: 1.8, // ����, ���� ����
        dayMaxEvents: false, // �̺�Ʈ�� �����Ǹ� ���� ���� (+ �� �������� ǥ��)
        locale: 'ko', // �ѱ��� ����
        buttonText: {
          month: 'Ķ����',
          today: '����',
          list: '����'
        },
        headerToolbar: { //Ķ���� ��� ���� �κ� ��ư ����
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

        resourceAreaHeaderContent: '����',
        resources: [           	
        {id: '<%=myChallengesCat2NoDuple.get(0)%>', title: '<%=myChallengesCat2NoDuple.get(0)%>', eventColor: '<%=arr[0]%>'  }
        <%for(int i = 1 ; i < myChallengesCat2NoDuple.size(); i++){%>
          ,{id: '<%=myChallengesCat2NoDuple.get(i)%>', title: '<%=myChallengesCat2NoDuple.get(i)%>', eventColor: '<%=arr[i]%>'  }
          <%    
          }%>         
        ],
        events: [        	
        	 { id: '<%=myChallengesSeq.get(0)%>', resourceId: '<%=myChallengeCat2.get(0)%>', start: '<%=challengeStartDate.get(0)%>', end: '<%=challengeEndDate.get(0)%>', title: '<%=myChallengeTitle.get(0)%>' }
        	<% for(int i = 1 ; i <challengeStartDate.size(); i++){ %>
          ,{ id: '<%=myChallengesSeq.get(i)%>', resourceId: '<%=myChallengeCat2.get(i)%>', start: '<%=challengeStartDate.get(i)%>', end: '<%=challengeEndDate.get(i)%>', title: '<%=myChallengeTitle.get(i)%>' }
          <%    
        	}%>
          
   
        ]
      });

      calendar.render();
    });


    /*   { id: '2', resourceId: 'a', start: '2021-12-07', end: '2021-12-12', title: '������Ʈ' },
    { id: '3', resourceId: 'e', start: '2021-12-10', end: '2021-12-10', title: 'ī�尪 ������' },
    { id: '4', resourceId: 'd', start: '2021-12-11', end: '2021-12-11', title: '����' },
    { id: '5', resourceId: 'a', start: '2021-12-13', end: '2021-12-19', title: '������Ʈ' },
    { id: '6', resourceId: 'a', start: '2021-12-20', end: '2021-12-22', title: '������Ʈ' },
    { id: '7', resourceId: 'd', start: '2021-12-21', end: '2021-12-22', title: '��ǥ' },
    { id: '8', resourceId: 'b', start: '2021-12-08', end: '2021-12-08', title: '������' },
    { id: '9', resourceId: 'b', start: '2021-12-15', end: '2021-12-15', title: '������' },
    { id: '10', resourceId: 'b', start: '2021-12-18', end: '2021-12-18', title: '����' },
    { id: '11', resourceId: 'e', start: '2021-12-15', end: '2021-12-15', title: '����' },
    { id: '12', resourceId: 'c', start: '2021-12-17', end: '2021-12-17', title: '��ȭ' },
    { id: '13', resourceId: 'd', start: '2021-12-24', end: '2021-12-25T23:59:59', title: 'ũ�������� ��Ƽ' },
    { id: '14', resourceId: 'c', start: '2021-12-06', end: '2021-12-06', title: '���� ����' },
    { id: '14', resourceId: 'c', start: '2021-12-21', end: '2021-12-21', title: '��Ÿ ����' }*/
    
    let teg = `
    	<!-- Single Insta Feed -->
		<div class="single-insta-feed">
			<img src="` + 123 + `" alt="">
			<!-- Hover Effects -->
			<div class="hover-effects">
				<a href="#"
					class="d-flex align-items-center justify-content-center"><i
					class="fa fa-instagram"></i></a>
			</div>
		</div>
    `;

    
    </script>
  


</body>

</html>