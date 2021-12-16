<%@page import="model.shopVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DAO"%>
<%@page import="model.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	MemberVo vo = (MemberVo)session.getAttribute("vo");
	DAO dao = new DAO();	
	ArrayList<shopVO> goods = dao.selectAllGoods();	
	shopVO svo = new shopVO();		
%>
<form action ="shop_update">
<table border=1px>
		<td>상품명</td>
		<td>상품카테고리</td>
		<td>상품가격</td>
		<td>시퀀스 번호</td>
	<tr>
		<td><input type="text" name="goods_name"></td>
		<td><input type="text" name ="goods_catagory"></td>
		<td><input type="text"name="goods_point"></td>
		<td><input type="number"name="shop_seq"></td>
	</table>
	<div align="center"margin="10px">
	<button type = "submit" class="btn btn-outline-dark mt-auto" >update</button>
	</div>
</form>
</body>
</html>