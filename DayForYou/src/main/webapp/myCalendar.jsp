<%@page import="model.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CalendarDAO"%>
<%@page import="model.CalendarVO"%>
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
    <title>Dayforyou Calender</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
    
    <!--fullcaleder-->
	<link href='./fullcalender/lib/main.min.css' rel='stylesheet' />
	<script src='./fullcalender/lib/main.min.js'></script>
    
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
	<%MemberVo vo = (MemberVo)session.getAttribute("vo");%>
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
                        <h2 id = "recordyourday">Calender</h2>
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
                            <a href="#" class="post-tag">calendar</a>
                            <div>
                            <h1>Todo-List</h1>
                            </div>
                            <hr>
                            <br><br>
                            <a href="mychart.html" class="post-tag">당신의 일정을 더욱 편리하게 관리하기 위해, day for you에서 제공해드리는 일정관리 캘린더를 이용해보세요.</a>
	
							<br><br><br>
							
							<!-- Calender 영역 -->
							
								<div id='calendar' style="position:relative; width: 100%; height:100%;">
							
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
    <script src="./jquery-3.6.0.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
    
   <!-- Fullcalender Area-->
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
			nextDayThreshold: '00:00',
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
				
			},
			eventRemove : function(obj) { // 이벤트가 삭제되면 발생하는 이벤트
				
			},
									
			select : function(arg) { // 캘린더에서 날짜 클릭으로 이벤트를 생성할 수 있다.


				
				$("#calendar").append("<iframe src='myCalModal.jsp' style='position:absolute; width:100%; height:100%;z-index:1'></iframe>")
				
				calendar.unselect()
			},
	          
			eventClick : function(info) { // 이벤트 클릭하면 발생하는 이벤트. 현재는 삭제
				
				//$("#calendar").append("<iframe src='myCalUpdateModal.jsp' style='position:absolute; width:100%; height:100%;z-index:1'></iframe>")
			
				let delcal = confirm(info.event.title + "일정을 삭제하시겠습니까?");
				if (delcal == true) {
					info.event.remove();

				}
			},
			events : [],
			
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
			    	  		
			    	  		let seq = element.Todo_seq;
			    	  		let allday = element.Todo_allday;
			    	  		let cate = element.Todo_cate;
			    	  		console.log(element.Todo_sdate)
			    	  		console.log(allday)
			    	  		console.log(cate)
							console.log(index);
			    	  		
			    	  		let sdate = element.Todo_sdate;
			    	  		let edate = element.Todo_edate + 'T00:00:00';
			    	  		
			    	  		if(allday == 1) {
			    	  			if(cate == "study"){
			    	  				calendar.addEvent({
			    	  					id: seq,
				    	  				title: element.Todo_title,
				    	  				start: sdate,
				    	  				end: edate,
				    	  				allDay : true,
				    	  				color : "blue"
			    	  				}); //push
			    	  			
			    	  		} else if(cate == "execise"){
			    	  			calendar.addEvent({
			    	  					id: seq,
				    	  				title: element.Todo_title,
				    	  				start: sdate,
				    	  				end: edate,
				    	  				allDay : true,
				    	  				color : "orange"
			    	  				}); //push
			    	  			
			    	  		} else if(cate == "hobby"){
			    	  			calendar.addEvent({
			    	  					id: seq,
				    	  				title: element.Todo_title,
				    	  				start: sdate,
				    	  				end: edate,
				    	  				allDay : true,
				    	  				color : "green"
			    	  				}); //push
			    	  			
			    	  		} else if(cate == "important"){
			    	  			calendar.addEvent({
			    	  				id: seq,
			    	  				title: element.Todo_title,
			    	  				start: sdate,
			    	  				end: edate,
			    	  				allDay : true,
			    	  				color : "red"
			    	  			}); //push
			    	  			
			    	  		} else if(cate == "etc"){
			    	  			calendar.addEvent({
			    	  				id: seq,
			    	  				title: element.Todo_title,
			    	  				start: sdate,
			    	  				end: edate,
			    	  				allDay : true,
			    	  				color : "purple"
			    	  			}); //push	
			    	  		} // cate if end
			    	  		
			    	  	} else if (allday == 0) { //allday else if start
			    	  		if(cate == "study"){
			    	  			id: seq,
			    	  			calendar.addEvent({
				    	  			title: element.Todo_title,
				    	  			start: sdate,
			    	  				end: edate,
				    	  			allDay : false,
				    	  			color : "blue"
			    	  			}); //push
			    	  				
			    	  		} else if(cate == "execise"){
			    	  			calendar.addEvent({
			    	  				id: seq,
				    	  			title: element.Todo_title,
				    	  			start: sdate,
			    	  				end: edate,
				    	  			allDay : false,
				    	  			color : "orange"
			    	  			}); //push
			    	  				
			    	  		} else if(cate == "hobby"){
			    	  			calendar.addEvent({
			    	  				id: seq,
				    	  			title: element.Todo_title,
				    	  			start: sdate,
			    	  				end: edate,
				    	  			allDay : false,
				    	  			color : "green"
			    	  			}); //push
			    	  			
			    	  		} else if(cate == "important"){
			    	  			calendar.addEvent({
			    	  				id: seq,
				      				title: element.Todo_title,
				      				start: sdate,
			    	  				end: edate,
				   	  				allDay : false,
				   	  				color : "red"
			   	  				}); //push
			    	  				
			   	  			} else if(cate == "etc"){
			   	  			calendar.addEvent({
			   	  					id: seq,
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