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
	MemberVo vo = (MemberVo) session.getAttribute("vo");
	DAO dao = new DAO();
	ArrayList<shopVO> goods = dao.selectAllGoods();
	shopVO svo = new shopVO();
	%>
	<table>
		<td>시퀀스값</td>
		<td></td>
		<tr>
			<td><input type="text"><%=svo.getShop_seq()%></td>
			<td></td>
	</table>
	<div align="center"margin"10px">
		<a class="btn btn-outline-dark mt-auto" href="shop_delete">delet</a>
</body>
</html>