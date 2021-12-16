<%@page import="model.MemberVo"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="EUC-KR">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->



    <!-- Title -->
    <title>Developer Sample 2</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
    
    
    <style>
    	table{
    		width: 400px;
    		height: 40px;
    		text-size: 100;
    	
    	
    	}
    	
    	
    	.iu{
    	
    		border-bottom: 60px solid #fff;
    	
    	}
    
    
    
    </style>

</head>

<body>
		<%
			MemberVo vo = (MemberVo)session.getAttribute("vo");
			out.print(vo);

		%>
		
		
    <!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <!-- Subscribe Modal -->
    <div class="subscribe-newsletter-area">
        <div class="modal fade" id="subsModal" tabindex="-1" role="dialog" aria-labelledby="subsModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-body">
                        <h5 class="title">Subscribe to my newsletter</h5>
                        <form action="#" class="newsletterForm" method="post">
                            <input type="email" name="email" id="subscribesForm2" placeholder="Your e-mail here">
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
                        <a href="index.html" class="original-logo"><img src="img/main-img/logo3.png" alt=""></a>
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
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
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
                                            <li><a href="myCalendar.html">Calendar</a></li>
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
                                            <li><a href="1_writeForm.jsp">Community</a></li>
                                            <li><a>Notice</a></li>
                                            <li><a>Q&A</a></li>
                                        </ul>
                                    </li>
                                    
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
    <div class="breadcumb-area bg-img" style="background-image: url(img/portfolio-img/portfoliosample.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2 id = "recordyourday">Member Information</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->
    
    <br><br>
    

    <div class="blog-wrapper section-padding-100-0 clearfix">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">member information modification</a>
                            <div>
                            <h1>회원정보수정</h1>
                            </div>
                            <hr>
                           
     <br><br>
     	<div>
     	<form action="UpdateService" method = "post">
     	<table style = "border: none;">
     	<tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>아이디</a>
	                        <input type="text" value = <%=vo.getId()%> name="m_id" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	         </td>
	         <td></td>
          </tr>
          <tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>비밀번호</a>
	                        <input type="password" value = "<%=vo.getPw()%>" name="m_pwd" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	         </td>
	         <td></td>
          </tr>
           <tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>이름</a>
	                        <input type="text" value = "<%=vo.getName()%>" name="m_name" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	         </td>
	         <td></td>
          </tr>
           <tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>닉네임</a>
	                        <input type="text" value = "<%=vo.getNick()%>" name="m_nick" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	         </td>
	         <td></td>
          </tr>
           <tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>휴대폰 번호</a>
	                        <input type="tel" value = "<%=vo.getPhone()%>" name="m_phone" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	         </td>
	         <td></td>
          </tr>
           <tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>이메일</a>
	                        <input type="email" value = "<%=vo.getEmail()%>" name="m_email" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	         </td>
	         <td></td>
          </tr>
          <tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>생년월일</a>
	                        <input type="text" value = "<%=vo.getBirthday()%>" name="m_birthdate" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	         </td>
	         <td></td>
          </tr>
          <tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
						<a>성별(W/M)</a>
	                     	<br><br>
	        
	                  <input type = "text" value=<%=vo.getGender()%> name = "m_gender" id = "gender" required style = "font-size: 15px;">
 
	            	 </div>
	              </div>
	              
	              <div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>직종(student/worker)</a>
	                     	<br><br>
	             
	               			<input type = "text" value=<%=vo.getJob()%> name = "m_job" id = "job" required style = "font-size: 15px;">
	               		
 
	            	 </div>
	              </div>

	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>주소</a>
	                        <input type="text" value = "<%=vo.getAddress()%>" name="m_addr" id="name" required>
	                        <span class="highlight"></span>
	                         <span class="bar"></span>
	            	 </div>
	              </div>
	        
	   

     	</table>
     	<div style= "position:relative; left: 150px;">
     	<input type = "submit" value = "수정하기" style="width: 70px; height:30px; background-color:smokewhite; font-size: 12px;">
     	</div>
     	</form>
     	<button onclick="history.back()" style="width: 70px; height:30px; background-color:smokewhite; font-size: 12px; position: relative; left: 230px; bottom: 30px;">취소</button>
     	</div>
     	<br><br>
     	<hr>
                           

    
                        
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
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>

                                <!-- Nav Start -->
                               
                                <!-- Nav End -->
                            </div>
                        </nav>
                    </div>

                    <!-- Footer Social Area -->
                    <div class="footer-social-area mt-30">
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>

<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<script>document.write(new Date().getFullYear());</script> 이용약관 | 개인정보처리방침  <a href="https://colorlib.com" target="_blank">000-0000-0000</a>
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