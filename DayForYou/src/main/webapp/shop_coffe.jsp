<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="EUC-KR" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>point shope</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="shop/css/styles.css" rel="stylesheet" />
    </head>
   
    <body>
       <div align ="left"  margin"10px">
        <a href ="shop.jsp">
        <img src="./img/shop/back.PNG" style="width:45px;height:45px; position:relative; left:10px; top:15px;">
        </a>
        </div>
        <!-- Header-->
        <header>
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-black">
                  <img src="img/logo-img/shop.PNG" style="position: relative; right:42px;">
                </div>
            </div>
        </header>
        <!-- 버튼 모을꺼야 건들지마 -->
		<div align ="center" margin"10px">
		<br><br>
        <a><img src= "img/logo-img/cafe.PNG" onclick="location.href = 'shop_coffe.jsp'"></a>

        </div>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                  
                    <div class="col mb-5">
                        <div class="card h-100">    
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/c3.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h7 class="fw-bolder">스타벅스 아메리카노</h7>
                                    <!-- Product price-->
                                    p)4.100    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" style="position:relative; right: 13px;">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'" style="width:100px; height:40px;">
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                           
                           
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/co1.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h7 class="fw-bolder">스타벅스 자바칩프라푸치노</h7>
                                    <!-- Product price-->
                                    p)6.100
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" style="position:relative; right: 13px;">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'" style="width:100px; height:40px;">
                            </div>
                        </div>
                    </div>
                   
                    <div class="col mb-5">
                        <div class="card h-100">
                            
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/c7.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h7 class="fw-bolder">스타벅스 카페라떼</h7>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        
                                    </div>
                                    <!-- Product price-->
                                    p)4.600
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" style="position:relative; right: 13px;">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'" style="width:100px; height:40px;">
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/c8.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h7 class="fw-bolder">이디야 토피넛라떼</h7>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        
                                    </div>
                                    <!-- Product price-->
                                    p)4.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent" style="position:relative; right: 13px;">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'" style="width:100px; height:40px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">박진택 컴퍼니</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>