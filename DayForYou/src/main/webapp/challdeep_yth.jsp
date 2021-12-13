<%@page import="model.challengeBoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">


<title>Insert title here</title>
<style type="text/css">
.product-title {
	text-align: center;
	display: table;
	border: 1px solid #cecece;
	width: 400px;
	height: 350px;
}

.product-img-div {
	display: table-cell;
	vertical-align: middle;
}

.product-img {
	max-width: 400px;
	max-height: 350px;
}
</style>
</head>
<body>
	<%
	challengeBoardVO zvo = (challengeBoardVO) request.getAttribute("zvo");
	%>
	<div class="product-title">
		<div class="product-img-div">
			<img class="product-img" src="<%=zvo.getChalPic1()%>" alt="img/logo.jpg">
		</div>
	</div>
	<a href="#"><%=zvo.getChalCnt()%> <span>0명</span></a>
</body>
</html>