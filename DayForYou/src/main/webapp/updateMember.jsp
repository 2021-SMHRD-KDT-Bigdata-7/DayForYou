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
    
    
    
    
    
    </style>

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
                            	<button class="button4">Logout</button>
                                <ul>
                                    <li><a href="main.html">Home</a></li>
                                    <li><a href="#">Calendar</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Calendar</a></li>
                                            <li><a href="Diarylist.jsp">Diary</a></li>
                               
                                        </ul>
                                    </li>
                                    <li><a href="#">Challenge</a>
                                        <ul class="dropdown">
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">Group</a></li>
                                            <li><a href="#">Individual</a></li>
                                          
                                        </ul>
                                    </li>
                                   <li><a href="portfolioMain.jsp">Portfolio</a></li>
                                     <li><a href="#">Board</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Community</a></li>
                                            <li><a href="about-us.html">Notice</a></li>
                                            <li><a href="about-us.html">Q&A</a></li>
                                        </ul>
                                    </li>
                                    
                                  
                                    <li><a href="mypage.html">MyPage</a></li>
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
     	<table style = "border: none;">
     	<tr>
     		<td>
	     		<div class="col-12 col-md-6">
	                  <div class="group">
	                     <a>아이디</a>
	                        <input type="text" value = "hyein" name="id" id="name" required>
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
	                        <input type="password" value = "비밀번호" name="pw" id="name" required>
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
	                        <input type="text" value = "국혜인" name="name" id="name" required>
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
	                        <input type="text" value = "혠이" name="nick" id="name" required>
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
	                        <input type="tel" value = "01064282438" name="tel" id="name" required>
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
	                        <input type="email" value = "hyein@naver.com" name="email" id="name" required>
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
	                        <input type="date" value = "" name="birth" id="name" required>
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
	                     <a>성별</a>
	                     	<br><br>
	                     	<table>
		                        <tr>
		                        	<td><font>Man</font><input type="radio" style = "width:15px; height:15px; border:1px; font-size:50px;" value = "" name="gender" id="name" required></td>
		             				<td>Woman<input type="radio" style = "width:15px; height:15px; border:1px;" value = "" name="gender" id="name" required></td>
	                        	</tr>
	                        </table>
	                        <span class="highlight"></span>
	                        <span class="bar"></span>
	                         
	            	 </div>
	              </div>

     	</table>
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