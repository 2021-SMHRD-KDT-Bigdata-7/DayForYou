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
	String goods_point = request.getParameter("goods_point");
	MemberVo vo = (MemberVo) session.getAttribute("vo");
	out.print(vo);

	DAO dao = new DAO();
	ArrayList<shopVO> goods = dao.selectAllGoods();
	shopVO svo = new shopVO();
	int my_point = vo.getPoint();
	int good_point = svo.getGoods_point();
	%>

	<%
	if (vo == null) {
	%>
	<script>
		alert("로그인이 필요합니다")
	</script>
	<%
	}
	%>


	<div align="left" withd="10px";margin"10px">
		<a class="btn btn-outline-dark mt-auto" href="shop.jsp"> <img
			src="./img/shop/icon1.png">
		</a>
	</div>
	<!-- Header-->
	<header class="bg-light py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-black">
				<h1 class="display-4 fw-bolder">day for you</h1>
				<p class="text-center">point shop</p>
			</div>
		</div>
	</header>
	<!-- Section-->

	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<div class="col mb-5">
						<div class="card h-100">

							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 id="myPoint" class="fw-bolder" name="my_Point"><%=vo.getPoint()%></h5>
								</div>
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder" id="goodsPoint">
											<!-- 아직 해결못함 -->
											<%=goods_point%></h5>

									</div>
								</div>
								<!-- Product actions-->
								<br>
								<%
								System.out.println(goods_point);
								%>
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<form action="shopbuyService?goods_point">
										<input type="hidden" name="goods_point"
											value="<%=goods_point%>">
										<button id="btn" class="btn btn-outline-dark mt-auto"
											onclick="check()">
											<p>BUY</p>
										</button>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
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
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript"></script>
	// 1. 필요한 데이터 가져오기 // h5태그(id가 주어진) 값 --> $('선택자').html() : 닫는태그가 있는
	태그인 경우에만 내부 html 코드 가져옴

	<script>
		$("#btn").click(function() {
			var num = $("#myPoint").html();
			var num2 = $("#goodsPoint").html();
			// 2. 어느게 더큰지 판단
			if (num < num2) {
				alert("잔액이 부족합니다.");
			}
			console.log(num);
		});

		// 3. 성공했는지 실패 했는지 // 4. 성공하면 ~~ 로 이동 실패하면 ~~ 이동 // window.location =
		//""; // window.location = "http://www.naver.com";
	</script>


</body>
</html>