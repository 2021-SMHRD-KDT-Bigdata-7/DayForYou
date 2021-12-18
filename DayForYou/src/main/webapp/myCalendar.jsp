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
                                    <li><a href="#">12�� �ֿ� �������� Ȯ���ϱ�</a></li>
                                    <li><a href="#">���� ���� �α��ִ� ç���� �ѷ�����</a></li>
                                    <li><a href="#">Ȩ ȭ�鿡�� �� ���� �̺�Ʈ�� Ȯ���ϼ���!</a></li>
                                    <li><a href="#">���������� �����ϰ� ���������� �غ�����</a></li>
                                    <li><a href="#">��õ �ǿ��� ������ �´� ç���� �˾ƺ���!</a></li>
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
                            					<%System.out.println("�α��� ����");%>										
                            			<%}else{ %>
												<a href = "login.jsp" class="button4">login</a>
												<%System.out.println("�α׾ƿ� ����");%>		
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
                            <a href="mychart.html" class="post-tag">����� ������ ���� ���ϰ� �����ϱ� ����, day for you���� �����ص帮�� �������� Ķ������ �̿��غ�����.</a>
	
							<br><br><br>
							
							<!-- Calender ���� -->
							
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
<script>document.write(new Date().getFullYear());</script> �̿��� | ��������ó����ħ  <a href="https://colorlib.com" target="_blank">000-0000-0000</a>
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
			//now: '2020-09-07', // �̰� ��Ȱ��ȭ�ϸ� ���� ��¥�� ����
			//scrollTime : '00:00', // undo default 6am scrollTime
			height : '750px', // Ķ���� ����
			expendRows : true, // ȭ�鿡 �°� ���� ����
			editable : true, // enable draggable events
			selectable : true, // �޷¿� ǥ�õ� �̺�Ʈ �巡�� ��������.
			aspectRatio : 1.8, // ����, ���� ����
			dayMaxEvents : false, // �̺�Ʈ�� �����Ǹ� ���� ���� (+ �� �������� ǥ��)
			locale : 'ko', // �ѱ��� ����
			selectLongPressDelay: 1,
			nextDayThreshold: '00:00',
			buttonText : {
				month : 'Ķ����',
				today : '����',
				list : '����'
			},
			headerToolbar : { //Ķ���� ��� ���� �κ� ��ư ����
				right : 'dayGridMonth,today,listDay',
				center : 'prev,next',
				left : 'title'
			},
		
			eventChange : function(obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
				
			},
			eventRemove : function(obj) { // �̺�Ʈ�� �����Ǹ� �߻��ϴ� �̺�Ʈ
				
			},
									
			select : function(arg) { // Ķ�������� ��¥ Ŭ������ �̺�Ʈ�� ������ �� �ִ�.


				
				$("#calendar").append("<iframe src='myCalModal.jsp' style='position:absolute; width:100%; height:100%;z-index:1'></iframe>")
				
				calendar.unselect()
			},
	          
			eventClick : function(info) { // �̺�Ʈ Ŭ���ϸ� �߻��ϴ� �̺�Ʈ. ����� ����
				
				//$("#calendar").append("<iframe src='myCalUpdateModal.jsp' style='position:absolute; width:100%; height:100%;z-index:1'></iframe>")
			
				let delcal = confirm(info.event.title + "������ �����Ͻðڽ��ϱ�?");
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
			    //  data : JSON.parse(), // �ϴ� json������ �̰ɷ� ��ȯ�ϴ°� �¾�. �ٵ� ���� ����.
			      success : function(res) {
			    	  	console.log(res); // �Ʊ�� �ܼ��� �����µ�? �� ������ ��������?+
			    	  	
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
			   	 	alert('���۽���');			    	  
			     } // error end
			});	//ajax end	
			
		console.log(calendar.events);
		calendar.render();
</script>
   

</body>

</html>