
<%@page import="model.diaryVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!--   <script language="javascript">
	 function time(){
	  var time= new Date(); //시간받기위해서 new date
	  var dt = new Date();
	    var Year = dt.getFullYear();        
	    var Month = "" + (dt.getMonth()+1);
	    var Day = "" + dt.getDate();            
	    var Today = Year.toString() + Month + Day;
	    
	    document.getElementById("TODAY").innerHTML=dt.getFullYear()+"년"+(dt.getMonth()+1)+"월"+ dt.getDate()+"일";
	  


	/* 출처: https://shxrecord.tistory.com/128 [유에서 유] */
	      document.getElementById("now").innerHTML=time.getHours()+"시"+time.getMinutes()+"분"+time.getSeconds()+"초";
	     setInterval("time()",1000);     //1초 지난후 time()실행
	  }
      </script> -->
</head>
<body>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Diary-individual</title>

    <!-- Favicon -->
    <link rel="icon" href="img/main-img/white.PNG">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

</head>

<body onload="time()">
	
    <!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <div class="coming-soon-area bg-img background-overlay">
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
                            <a href="index.html" class="original-logo"><img alt=""></a>
                            <h1>Diary 상세보기</h1>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ##### Header Area End ##### -->

        <!-- ##### Coming Soon Area Start ##### -->
    
        <!-- ##### Coming Soon Area End ##### -->

        <!-- ##### Contact Area Start ##### -->
        <div class="contact-area section-padding-100">
            <div class="container">
                <div class="row justify-content-center">
                    <!-- Contact Form Area -->
                    <div class="col-12 col-md-10 col-lg-9">
                        <div class="contact-form">
                        <!-- 현재시간 나오기 -->
                       <!--      <p><span id = "TODAY"></span>   <span id="now"></span></p> -->
                            <!-- Contact Form -->
                  				<%
                  					
                  				diaryVO dvo = (diaryVO)request.getAttribute("dv");
                  					
								%>	
	
                            <form action="#" method="post">
                            
                            	 <div class="col-12 col-md-6">
                                        <div class="group">
                                        	<p>작성일시</p>
                                        	<p><%=dvo.getReg_date()%></p>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                           
                                        </div>
                                    </div>
                                <div class="row">
                                    <div class="col-12 col-md-6">
                                        <div class="group">
                                        	<h3><%=dvo.getDiary_subject()%></h3>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            
                                        </div>
                                    </div>
                           
                                    
                                    <div class="col-12">
                                        <div class="group">
                                            <p><%=dvo.getDiary_content()%></p>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                           
                                        </div>
                                    </div>
                                    
                                    
                                     <div class="col-12 col-md-6">
                                        <div class="group">
                                        	<%
                                        		String imageNames = dvo.getDiary_file1();
                                        		String images[] = imageNames.split("/");
                                        	%>
                                        	<%for(int i = 0; i < images.length; i++) {
                                        		if(i > 0){
                                        	%>
                                        	<img src="./img/<%=images[i]%>">
                                        	<%} %>
                                        	<%} %>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                        </div>
                                    </div>
                                    
                                  
                                </div>
                            </form>
                              <div class="col-12">
                                     	<a href = "Diarylist.jsp"><button class = "button7" class="btn original-btn" >목록</button></a>
                                        
                                    </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-10 col-lg-3">
                        <div class="post-sidebar-area">
                            <!-- Widget Area -->
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Contact Area End ##### -->

    <!-- ##### Instagram Feed Area Start ##### -->
   
        <!-- Instagram Slides -->
       
    <!-- ##### Instagram Feed Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area text-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                   
                    <!-- Footer Nav Area -->
                    <div class="classy-nav-container breakpoint-off">
                        <!-- Classy Menu -->
                        <nav class="classy-navbar justify-content-center" id="footerNav">

                            <!-- Navbar Toggler -->
                          <!--   <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>
 -->
                            <!-- Menu -->
                           <!--  <div class="classy-menu">

                                close btn
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>

                                Nav Start
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
                                Nav End
                            </div> -->
                        </nav>
                    </div>
                    
                    <!-- Footer Social Area -->
                   
                </div>
            </div>
        </div>

<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
</body>
</html>