<%@page import="model.DAO"%>
<%@page import="model.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>DayForYou-Home</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

    <!-- 추가 CSS-->
    <style>
    body{
        padding: 0;
        margin: 0;
      }
      div{
        box-sizing: border-box;
      }

      /*페이지 카테고리(my page)*/
      .titleContainer{  
        padding: 0;
        background-color: #ffffff;
        margin-bottom: 10px;
      }
      
      #mypage-category{
        padding-left: 10px;
        font-size: 10px;
        color: gray;
      }

      .name{
          padding-left: 10px;
      }
      
      /* alert badge */
      .circle{
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
      .green{
        color: #24855b;
      }
      
      .wrap{
        background-color: #F8F8F8;  
      }
      /* 녹색배경 */
      .greenContainer{  
        height: 132px;
        background-color: #24855b;    
        
        display: flex;
        align-items: flex-end;
        padding: 16px;
      }
      
      .greenContainer .name{
         font-size: 20px;
        font-weight: bold;
        color: #ffffff;
      } 
      .greenContainer .modify{
        margin-left: auto;
      }
      
      /* 단골상점 , 상품후기 , 적립금 박스 */
      .summaryContainer{
        background-color: white;  
        display: flex;  
        padding: 21px 16px;  
        height: 90px;
        margin-bottom: 10px;
      }
      /* 단골상점 , 상품후기 , 적립금 */
      .summaryContainer .item{
        flex-grow: 1
      }
      /* 녹색 숫자 */
      .summaryContainer .number{
        font-size: 19px;
        font-weight: bold;
        color: #24855b;
      }
      /* 텍스트 */
      .summaryContainer .item > div:nth-child(2){
        font-size: 13px;
      }
      
      /* ================== 주문/배송조회 박스 시작 ==================== */
      .shippingStatusContainer{
        padding: 21px 16px;
        background-color: white;
        margin-bottom: 10px;
      }
      
      /* 주문/배송조회 타이틀 */
      .shippingStatusContainer .title{
        font-size: 16px;
        font-weight: bold;
        margin-bottom: 15px;
      }
      
      /* 장바구니 결제완료 배송중 구매확정 [로우] */
      .shippingStatusContainer .status{
        display: flex;
        justify-content: space-between;
        margin-bottom: 21px;
      }
      /* 장바구니 결제완료 배송중 구매확정 [아이템]  */
      .shippingStatusContainer .item{
        display: flex;
      }
      
      .shippingStatusContainer .number{
        font-size: 31px;
        font-weight: 500;
        text-align: center;
      }
      .shippingStatusContainer .text{
        font-size: 12px;
        font-weight: normal;
        color: #c2c2c2;
        text-align: center;
      }
      .shippingStatusContainer .icon{
        display: flex;
        align-items: center;
        padding: 20px;
        width: 16px;
        height: 16px;
      }
      
      
      /*=================== 주문목록 ~ 찜한상품 리스트 ==================*/
      .listContainer{  
        padding: 0;
        background-color: #ffffff;
        margin-bottom: 10px;
      }
      .listContainer .item{  
        display: flex;
        align-items: center;
        padding: 16px;
        color: black;
        text-decoration: none;  
        height: 56px;
        box-sizing: border-box;
      }
      .listContainer .icon{  
        margin-right: 14px;
      }
      .listContainer .text{
        font-size: 16px;
        position: relative;
      }
      .listContainer .right{
        margin-left: auto;
      }
      
      
      /*=================== 내지갑의 보유 적립금 들어가는 부분 ================*/
      .listContainer .smallLight{
        font-size: 1px;
        color: #c2c2c2;  
      }
      .listContainer .smallLight > span{
        margin-left: 10px;
      }
      
      .listContainer .right .blct{
        font-size: 14px;
        font-weight: bold;
        margin-right: 5px;
      }
      
      
      
      /* 공지사항 이용안내 고객센터 */
      .infoContainer{
        background-color: white; 
        display: flex;
        height: 100px;
        margin-bottom: 10px;    
      }
      
      .infoContainer .item{
        flex-grow: 1;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        font-size: 13px;
        text-decoration: none;
        color: black;
      }
      .infoContainer .item > div:first-child{
        margin-bottom: 2px;
      }
      
      
      
      /*  */
      .listContainer .item:hover{
      /*   background-color: #f8f8f8; */
      }
      .infoContainer .item:hover{
      /*   background-color: #f8f8f8; */
      }
    </style>
</head>

<body>
   <%
   MemberVo vo = (MemberVo)session.getAttribute("vo");
     

   DAO dao = new DAO();

   if(vo == null){%>
	   <script> alert("로그인이 필요합니다")
		location.href ="login.jsp";
	</script>
  <% }%>


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
                        <h5 class="title">게시글 검색</h5>
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

    <div class="wrap">
        <div>
          <div class = "titleContainer">
            <div id="mypage-category">MY PAGY</div>
            <div class="name"><h3>Menu</h3></div>
          </div>    
          <div class="modify"></div>    
        </div>
       
        <div class="listContainer">
          <a href="updateMember.jsp" class="item">
              <div class="icon">■</div>
             <div class="text" onclick = "location">회원정보 수정</div>
              <div class="right"> > </div>
          </a>
          <a href="pointMember.jsp" class="item">
            <div class="icon">■</div>
            <div class="text">
              <span>포인트 관리</span>
              <span class="smallLight">
                
              </span>          
            </div>                
            <div class="right">
              <span class="blct"></span>
              >
           </div>
          </a>
          <a href="myChart.jsp" class="item">
              <div class="icon">■</div>
              <div class="text">개인 통계</div>
              <div class="right"> > </div>
          </a>
          <a href="Mychallengepage" class="item">
              <div class="icon">■</div>
              <div class="text">나의 챌린지 보기</div>
              <div class="right"> > </div>
          </a>
          <a href="#" class="item">
              <div class="icon">■</div>
              <div class="text">설정</div>
              <div class="right"> > </div>
          </a>
    
        </div>

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
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/2.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/3.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/4.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/5.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/6.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/7.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
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