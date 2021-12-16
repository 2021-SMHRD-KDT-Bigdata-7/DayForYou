<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
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
        button {
            font-size: 17px;
            width: 100px;
            height: 40px;
            border-radius: 50px;
            font-weight: normal;
            color: white;
        }

        #output {
            font-size: 3.0em;
            text-align: center; 
            color: gray;     
        }

        #startPause {
            background-color: #9adb88; 
            border: none;
            outline: none;
         
        }

        #reset {
            background-color: gray; 
            border: none;
            outline: none;
        }

        .containerMrs {
            background-color: #E6E6E6;
            border-radius: 5px;
            margin: auto;
            margin-top: 30px;
            margin-bottom: 20px;
            width: 400px;
            height: 150px;
        }

        #controls {
            margin-left: 50px;
            margin-top: 10px;
            width: 310px;
            height: 70px;
        }
    </style>
    

    
 
   

    <script>

        var time = 0;
        var running = 0;
        var timerid = 0;
        function startPause() {
            if (running == 0) {
                
                //���۹�ư
                running = 1;
                increment();
                document.getElementById('stopTime').innerHTML="";
                document.getElementById("start").innerHTML = "PAUSE";
                document.getElementById("startPause").style.backgroundColor = "#64c649";
               /*  document.getElementById("startPause").style.borderColor = "#64c649"; */

            }
            else {
                //�Ͻ����ù�ư
                running = 0;
                clearTimeout(timerid);
                var date = new Date();
                var nowDate = date.getDate();
                var nowMonth = date.getMonth() + 1;
                var hour = date.getHours();
                if(hour<10){
                    hour = '0'+hour;
                }
                var min = date.getMinutes();
                if(min<10){
                    min = '0'+min;
                } 
                var sec = date.getSeconds();
                if(sec<10){
                    sec = '0'+sec;
                }
                document.getElementById('stopTime').innerHTML= "�����ð�  "+nowMonth+"/"+nowDate+" "+hour+":"+min+":"+sec;
                document.getElementById("start").innerHTML = "continue";
                document.getElementById("startPause").style.backgroundColor = "#3fac21";
                /* document.getElementById("startPause").style.borderColor = "#3fac21"; */
            }
        }
        //����
        function reset() {
            running = 0;
            time = 0;
            clearTimeout(timerid);
            document.getElementById('stopTime').innerHTML="";
            document.getElementById("start").innerHTML = "START";
            document.getElementById("output").innerHTML = "<b>00:00:00</b>";
            document.getElementById("startPause").style.backgroundColor = "green";
            /* document.getElementById("startPause").style.borderColor = "green"; */
        }
        //Ÿ�̸� �ð����� 
        function increment() {
            if (running == 1) {
                timerid = setTimeout(function () {
                    time++;
                    var hours = Math.floor(time / 3600 );
                    var mins = Math.floor(time % 3600 / 60 );
                    var secs = time % 3600 % 60;
                    if (hours < 10) {
                        hours = "0" + hours;
                    }
                    if (mins < 10) {
                        mins = "0" + mins;
                    }
                    if (secs < 10) {
                        secs = "0" + secs;
                    }
                    document.getElementById("output").innerHTML = "<b>"+hours + ":" + mins + ":" + secs+"</b>";
                    increment();
                  
                }, 1000)
            }
        }

        </script>
    
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
    <div class="breadcumb-area bg-img" style="background-image: url(img/main-img/timer.png);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2 id = "recordyourday">Timer</h2>
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
                            <a href="#" class="post-tag">Challenge timer</a>
                            <div>
                            <h1>Ÿ�̸�</h1>
                            </div>
                            <hr>
                             <br><br>
                            <a href="mychart.html" class="post-tag">���� ç������ �����ϰ� Ÿ�̸��� ���� ��ư�� ������ �ð��� ����˴ϴ�. ������ �ð��� ���� ��迡�� Ȯ���ϼ���! (������ ���� ���� �ٷ� �̵��մϴ�.)</a>
                         	<br><br>
							
							
							<!-- Ÿ�̸� ��� �߰� -->
	
								<title>Study Timer</title>
						    	<div>
								    <h2 id="clock" style="color:gray;" align="center"></h2>
								</div>
								    <div class="containerMrs">
								    	<br><br>
								        <p id="output"><b>00:00:00</b></p>
								        <div id="controls" align="center">
								            <button id="startPause" onclick="startPause()"><b id="start">START</b></button>
								            <button onclick="reset()" id="reset"><b id="reset">RESET</b></button>
								        </div>
								    </div>
								    <div><p>�� �� ç���� ����</p></div>
								    <div>
								        <h3 id=stopTime align="center" style="color:gray;"></h3>
								        <h1 id="breaktime"></h1>
								    </div>
								    
								    
	<script>
        var clockTarget = document.getElementById("clock");
        //��� ���� �ð�
        function clock() {
            var date = new Date();
            // date Object�� �޾ƿ��� 
            var month = date.getMonth() + 1;
            // ���� �޾ƿɴϴ� 
            var clockDate = date.getDate();
            // �������� �޾ƿɴϴ� 
            var day = date.getDay();
            // ������ �޾ƿɴϴ�. 
            var week = ['��', '��', 'ȭ', '��', '��', '��', '��'];
            // ������ �������·� ���ϵǱ⶧���� �̸� �迭�� ����ϴ�. 
            var hours = date.getHours();
            // �ð��� �޾ƿ��� 
            var minutes = date.getMinutes();
            // �е� �޾ƿɴϴ�.
            var seconds = date.getSeconds();
            // �ʱ��� �޾ƿ��� 
            clockTarget.innerText = `\${month}�� \${clockDate}�� \${week[day]}���� ` +
                `\${hours < 10 ? `0${hours}` : hours}:\${minutes < 10 ? `0${minutes}` : minutes}:\${seconds < 10 ? `0\${seconds}` : seconds}`;
            // ���� 0���� 1���̱⶧���� +1���� ���ְ� 
            // �ð� �� �ʴ� ���ڸ����̸� �ð谡 ����غ��ϱ�� 10���� ������ �տ�0�� �����ִ� �۾��� 3�׿������� �߽��ϴ�. 
        }

        function init() {
            clock();
            // ���ʿ� �Լ��� �ѹ� ��������ְ� 
            setInterval(clock, 1000);
            // setInterval�̶�� �Լ��� ���ʸ��� ������ ���ݴϴ�.
            // setInterval�� ù��° �Ķ���ʹ� �Լ��̰� �ι�°�� �ð��ε� �и��ʴ����� �޽��ϴ�. 1000 = 1�� 
        }

        init();
        

        
        </script>
        
        <% Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        DateFormat df = new SimpleDateFormat("HH:mm:ss");%>
        

        <button id="start">���۽���</button>
        <button id="end">����</button>
        
        <script>
        <%Date start;%>
        <%Date end;%>
        document.getElementById("start").onclick=function(){
        	<%-- <%start = sysdate;%> --%>
        	
        	
            
        	
        	
        }
        
        
        </script>
								    
							
							
							
							
							
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