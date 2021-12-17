<%@page import="java.util.ArrayList"%>
<%@page import="model.shopVO"%>
<%@page import="model.DAO"%>
<%@page import="model.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>point shope</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="shop/css/styles.css" rel="stylesheet" />
</head>

<body>
	<%
	MemberVo vo = (MemberVo)session.getAttribute("vo");

	DAO dao = new DAO();
	
	ArrayList<shopVO> goods = dao.selectAllGoods();
	
	shopVO svo = new shopVO();	
	
	
%>

<% if(vo==null){ %>
<script> alert("로그인이 필요합니다")
	location.href ="login.jsp";
<%} %></script>

	<div>
		<a href="main.jsp"> 
		<img src="./img/shop/home.PNG" style="width:40px; height:40px; position:relative; left:10px; top:15px;">
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
	<% if(vo !=null){ %>
	<% if(vo.getId().equals("admin_yesno")){ %>
	<div align="center"margin"10px">
	<a class="btn btn-outline-dark mt-auto" href="shopadmin.jsp">관리자</a>
	
	</div>
	<% } }%>
	<!-- 버튼 모을꺼야 건들지마 -->
	<div align="center"margin"10px">
		<!--         <a class="btn btn-outline-dark mt-auto" href ="shop_chicken.jsp">치킨</a>
        <a class="btn btn-outline-dark mt-auto" href ="shop_movie.jsp">영화</a>
        <a class="btn btn-outline-dark mt-auto" href ="shop_gift.jsp">상품권</a> -->
		<a><img src="img/logo-img/chicken.PNG"
			onclick="location.href = 'shop_chicken.jsp'"></a> <a><img
			src="img/logo-img/movie.PNG"
			onclick="location.href = 'shop_movie.jsp'"></a> <a><img
			src="img/logo-img/gift.PNG" onclick="location.href = 'shop_gift.jsp'"></a>
		<a><img src="img/logo-img/cafe.PNG"
			onclick="location.href = 'shop_coffe.jsp'"></a> <a><img
			src="img/logo-img/cosmetic.PNG"
			onclick="location.href = 'shop_cosmetics.jsp'"></a> <br>
		<!--         
        <a class="btn btn-outline-dark mt-auto" href="shop_coffe.jsp">커피</a>
        <a class="btn btn-outline-dark mt-auto" href="shop_cosmetics.jsp">화장품</a> -->
	</div>
	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

				<%for(int i = 0; i < goods.size(); i++){ %>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="<%=goods.get(i).getGoods_pic1()%>"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h7 class="fw-bolder"><%=goods.get(i).getGoods_name()%></h7>
								<br><br>
								<!-- Product price-->
								p)<%=goods.get(i).getGoods_point()%>
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent" style="position:relative; right: 13px;">
							<img src="img/logo-img/buy.PNG"
								onclick="location.href = 'shop_buy.jsp?goods_point=<%=goods.get(i).getGoods_point()%>'" style="width:100px; height:40px;">
						</div>
					</div>
				</div>
				<%} %>
			</div>
			</div>
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">박진택 컴퍼니</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
