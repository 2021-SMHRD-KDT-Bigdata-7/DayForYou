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

    <!-- �߰� CSS-->
    <style>
    body{
        padding: 0;
        margin: 0;
      }
      div{
        box-sizing: border-box;
      }

      /*������ ī�װ���(my page)*/
      
      #mypage-category{
        padding-left: 10px;
        font-size: 10px;
        color: gray;
      }
      .titleContainer{  
        padding: 0;
        background-color: #ffffff;
        margin-bottom: 10px;
      }
      
      .chart-name{
        margin-left: 10px;
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
      
      /* ��� �ؽ�Ʈ */
      .green{
        color: #24855b;
      }
      
      .wrap{
        background-color: #F8F8F8;  
      }
      /* ������ */
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
      
      /* �ܰ���� , ��ǰ�ı� , ������ �ڽ� */
      .summaryContainer{
        background-color: white;  
        display: flex;  
        padding: 21px 16px;  
        height: 90px;
        margin-bottom: 10px;
      }
      /* �ܰ���� , ��ǰ�ı� , ������ */
      .summaryContainer .item{
        flex-grow: 1
      }
      /* ��� ���� */
      .summaryContainer .number{
        font-size: 19px;
        font-weight: bold;
        color: #24855b;
      }
      /* �ؽ�Ʈ */
      .summaryContainer .item > div:nth-child(2){
        font-size: 13px;
      }
      
      /* ================== �ֹ�/�����ȸ �ڽ� ���� ==================== */
      .shippingStatusContainer{
        padding: 21px 16px;
        background-color: white;
        margin-bottom: 10px;
      }
      
      /* �ֹ�/�����ȸ Ÿ��Ʋ */
      .shippingStatusContainer .title{
        font-size: 16px;
        font-weight: bold;
        margin-bottom: 15px;
      }
      
      /* ��ٱ��� �����Ϸ� ����� ����Ȯ�� [�ο�] */
      .shippingStatusContainer .status{
        display: flex;
        justify-content: space-between;
        margin-bottom: 21px;
      }
      /* ��ٱ��� �����Ϸ� ����� ����Ȯ�� [������]  */
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
      
      
      /*=================== �ֹ���� ~ ���ѻ�ǰ ����Ʈ ==================*/
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
      
      
      /*=================== ����Ʈ ��Ȳ�� ���� ����Ʈ ���� �κ� ================*/
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
      
      
      
      /* ���� ���� ���� */
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- ��Ʈ ��ũ -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.6.2"></script>
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
                        <h5 class="title">�Խñ� �˻�</h5>
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

                        <!-- Subscribe btn -->
                     <!--    <div class="subscribe-btn tag">
                            <input type = "text" name = "text" placeholder = "�±� �˻�"  class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal">
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
                            	<button class="button4">Logout</button>
                                <ul>
                                    <li><a href="main.html">Home</a></li>
                                    <li><a href="index.html">Calendar</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Calendar</a></li>
                                            <li><a href="Diarylist.html">Diary</a></li>
                                           <!--  <li><a href="single-post.html">Single Post</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="coming-soon.html">Coming Soon</a></li> -->
                                        </ul>
                                    </li>
                                    <li><a href="#">Challenge</a>
                                        <ul class="dropdown">
                                            <li><a href="#">All</a></li>
                                            <li><a href="#">Group</a></li>
                                            <li><a href="#">Individual</a>
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
                                    </li>
                                     <li><a href="#">Portfolio</a>
                                        <ul class="dropdown">
                                            <li><a>Statics</a></li>
                                            <li><a>Sample</a></li>
                                            <li><a>Create</a></li>
                                        </ul>
                                    </li>
                                     <li><a href="#">Board</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">Community</a></li>
                                            <li><a>Notice</a></li>
                                            <li><a>Q&A</a></li>
                                        </ul>
                                    </li>
                                    
                                    <!-- <li><a href="about-us.html">Portfolio</a></li> -->
                                    
                                   <!--  
                                    <li><a href="#">Board</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 1</li>
                                                <li><a href="#">Community</a></li>
                                                <li><a href="#">Notice</a></li>
                                                <li><a href="#">Q&A</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul> -->
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
                                 <!--        </div>
                                    </li> -->
                                    <li><a href="contact.html">About Us</a></li>
                                </ul>

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
            <div class="name"><h3>My Chart</h3></div>
          </div>    
          <div class="modify"></div>    
        </div>


        <div class="chart-name">
            <span>�� ç������ ���</span>      
        </div>  
        <div class="container">
            <canvas id="barChart" width="260" height="260" style="display: block; box-sizing: border-box; height: 136px; width: 273px;"></canvas>
        </div>
       
        <!-- ç������ bar ��Ʈ -->
        <script> 
            var ctx = document.getElementById('barChart'); 
            var myChart = new Chart(ctx, { type: 'bar', 
                data: { labels: ['����', '�׷�', '��ü'], 
                datasets: [{ label: '��Ʈ ����', data: [22, 19, 23], 
                backgroundColor: ['rgb(255, 178, 102)', 'rgb(102, 178, 255)', 'rgb(178, 255, 102)'], 
                borderColor: [ 'rgb(255, 178, 102)', 'rgb(102, 178, 255)', 'rgb(178, 255, 102)'], 
                borderWidth: 1 }] }, options: { scales: { yAxes: [{ ticks: { beginAtZero: true } }] } } }); 
        </script>
       
            
            <div class="chart-name">
              <span>�� ī�װ����� ���</span>      
            </div>    

            <div class="container">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <canvas id="DnChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- ��Ʈ -->
            <script> data = { datasets: [{ backgroundColor: ['rgb(255, 178, 102)', 'rgb(102, 178, 255)', 'rgb(255, 255, 102)', 'rgb(178, 255, 102)'], data: [30
            , 20, 30, 40] }], // ���� �̸��� ����ó�� ���콺�� ��ó�� ���� ��Ÿ�� 
            labels: ['����','�','���','��Ÿ'] }; 
            
            // ������ ��Ʈ 
            var ctx2 = document.getElementById("DnChart"); 
            var myDoughnutChart = new Chart(ctx2, { type: 'doughnut', data: data, options: {} }); </script>
        </div>

        <div class="infoContainer">
          <a href="#" class="item">
            <div>�������� / ���ǻ���</div>
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