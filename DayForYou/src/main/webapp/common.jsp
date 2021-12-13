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
                                    <li><a href="#">Portfolio</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">developer</li>
                                                <li><a href="portfolioSample.jsp">sample 1</a></li>
                                                <li><a href="#">sample 2</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">designer</li>
                                                <li><a href="designer.jsp">sample 1</a></li>
                                                <li><a href="#">sample 2</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">marketer</li>
                                                <li><a href="marketer.jsp">sample 1</a></li>
                                                <li><a href="#">sample 2</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">photographer</li>
                                                <li><a href="photograph.jsp">sample 1</a></li>
                                                <li><a href="#">sample 2</a></li>
                                            </ul>
                                              <ul class="single-mega cn-col-4">
                                                <li class="title">common</li>
                                                <li><a href="common.jsp">sample 1</a></li>
                                                <li><a href="#">sample 2</a></li>
                                            </ul>
                                        </div>
                                    </li>
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
                        <h2 id = "recordyourday">Portfolio Templates</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->



    <div class="blog-wrapper section-padding-100-0 clearfix">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">samples</a>
                            <div>
                            <h1>경력직 포트폴리오 샘플</h1>
                            </div>
                            <hr>
                            <br>
                            <a><img src = "img/portfolio-img/intro2.PNG"></a>
							<br><br><br>
							
							<a>1. 표지</a>
							<br><br>
							<a><img src = "img/portfolio-img/common/co1.PNG"></a>
							<br><br><br>
							<a>2.프로필/경력사항</a>
							<br><br>
							<a><img src = "img/portfolio-img/common/co22.PNG"></a>
							<br><br>
							<a>3.자기소개</a>
							<br><br>
							<a><img src = "img/portfolio-img/common/co3.PNG"></a>
							<br><br>
							<a>4.핵심역량</a>
							<br><br>
							<a><img src = "img/portfolio-img/common/co4.PNG"></a>
							<br><br>
							<a>5.관련 프로젝트 및 경험</a>
							<br><br>
							<a><img src = "img/portfolio-img/common/co5.PNG"></a>
							
							<!-- <span><a href = "mychart.html"><img src = "img/portfolio-img/graphkey.PNG" width = "100px" align = "right"></a></span> -->
							<br><br>
							<a><img src = "img/portfolio-img/common/co6.PNG"></a>
							<br><br>
							<a><img src = "img/portfolio-img/common/co7.PNG"></a>
							<br><br>
							<br><br>
							<a><img src = "img/portfolio-img/common/co8.PNG"></a>
							
							<br><br>
							<br><br>
							<a><img src = "img/portfolio-img/common/co9.PNG"></a>
							<br><br>
							<br><br>
							<a><img src = "img/portfolio-img/common/co10.PNG"></a>
							<br><br>
							<br><br>
							<a><img src = "img/portfolio-img/common/co11.PNG"></a>
							<br><br>
							<a>6. 마무리</a>
							<br><br>
							<a><img src = "img/portfolio-img/common/co12.PNG"></a>
							<br><br>
							
								<div>
									<hr>
								</div>
                            <h4><a href="#" class="post-headline"></a></h4>
                            <p class="mb-3"> </p>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <p class="mb-3"></p>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
               
            </div>
        </div>
    </div>
    
                        
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