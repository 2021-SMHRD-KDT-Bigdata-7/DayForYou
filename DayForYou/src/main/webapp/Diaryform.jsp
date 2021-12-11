<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="model.MemberVo"%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Diary form</title>

    <!-- Favicon -->
    <link rel="icon" href="img/main-img/white.PNG">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
<%
HttpSession session1 = request.getSession();
String m_id = "a";
MemberVo vo = (MemberVo)session1.getAttribute("vo");
if(vo != null){
m_id = vo.getId();
}

 %>
	
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
                            <a><img src = "img/main-img/record.PNG"></a>
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
                            <h5>Write here :)</h5>
                            <!-- Contact Form -->
                            <form action="DiaryService?m_id=<%=m_id %>" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-12 col-md-6">
                                        <div class="group">
                                            <input type="text" name="diary_subject" id="name" required>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>제목</label>
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-6">
                                        <div class="group">
                                            <input type="date" name="diary_date" id="date" required>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                           
                                        </div>
                                    </div>
                                    
           						
                                    <div class="col-12">
                                        <div class="group">
                                        	<!-- ì´ë¯¸ì§ ì´ë¦ì´ ë¤ì´ê° input -->
                                        	<input type="text" style="display : none;" name="images" id="image_arr">
                                            <input multiple = "multiple" type = "file" name="diary_file1[]" accept="image/*" onchange="setThumbnail(event);" multiple/>
                                            <div id="image_container"></div>
									<script> 
												let img_names='';
												function setThumbnail(event) {
												for (var image of event.target.files) { 
												var reader = new FileReader(); 
												reader.onload = function(event) { 
												var img = document.createElement("img"); 
												img.setAttribute("src", event.target.result); 
												document.querySelector("div#image_container").appendChild(img); }; 
												console.log(image); 
												reader.readAsDataURL(image); 
												
												// inputì ì´ë¯¸ë¤ ì´ë¦ ì´ì´ë¶ì¬ì¤ / ë¡ êµ¬ë¶íëë¡
												img_names +=("/"+ image.name);
												
												} 
												// ë¶ì¬ì§ ì´ë¦ì inputíê·¸ ìì ê°ì¼ë¡ ë£ì´ì¤
												document.querySelector("#image_arr").setAttribute("value", img_names);											
												console.log(document.querySelector("#image_arr").value);
												} 
												
									</script>

                                            <label>사진추가</label>                                           
                                        </div>
                                    </div>
                                    
                                    <br><br>
                                    
                                    
                                    <div class="col-12">
                                        <div class="group">
                                            <textarea name="diary_content" id="message" required></textarea>
                                            <span class="highlight"></span>
                                            <span class="bar"></span>
                                            <label>내용작성</label>
                                        </div>
                                    </div>
                                    <div class="col-12" align = "right">
                                  
                                    <!--  	<button class = "button7" type="submit" class="btn original-btn" onclick = "location.href='Diarylist.jsp'">ì·¨ì</button>
                                        <button class = "button6" type="submit" class="btn original-btn" onclick = "location.href='Diarylist.jsp'">ì ì¥</button> -->
                                        <span><a href = "Diarylist.jsp"><img src = "img/main-img/diaryn.PNG" align = "right"></a></span>                                      
                                        <a><button type = "submit" style = "border: 0;"><img src = "img/main-img/diaryoo.PNG" alt = ""></button></a>
                                    </div>
                                </div>
                            </form>
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