<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
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
       <div align ="left" margin"10px">
        <a class="btn btn-outline-dark mt-auto" href ="shop.jsp">
        <img src="./img/shop/icon1.png">
        </a>
        </div>
        <!-- Header-->
        <header>
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-black">
                    <img src = "img/logo-img/shop.PNG">
                
                </div>
            </div>
        </header>
        <!-- 버튼 모을꺼야 건들지마 -->
        <div align ="center" margin"10px">
        <br><br>
        <a><img src= "img/logo-img/gift.PNG" onclick="location.href = 'shop_gift.jsp'"></a>
       
        
        
        </div>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/c5.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">신세계 상품권</h5>
                                    <!-- Product price-->
                                  p)50.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'">
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/g2.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">신세계상품권</h5>                                    
                                    <!-- Product price-->
                                    p)100.000
                                    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'">
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/g1.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">도서문화상품권</h5>
                                    <!-- Product price-->
                                    p)5.000
                                    
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'">
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./img/shop/g4.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">롯데상품권</h5>                          
                                    <!-- Product price-->
                                    p)50.000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <img src = "img/logo-img/buy.PNG" onclick = "location.href = 'shop_buy.jsp'">
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