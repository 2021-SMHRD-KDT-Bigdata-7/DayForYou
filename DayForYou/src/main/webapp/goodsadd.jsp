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
<form action = "shop_insert">
	<table border=1px>
		<td>��ǰ��</td>
		<td>��ǰī�װ�</td>
		<td>��ǰ����</td>
		<td>������ ���̵�</td>
	<tr>
		<td><input type="text" name = "goods_name"></td>
		<td><input type="text" name = "goods_catagory"></td>
		<td><input type="text" name = "goods_point"></td>
		<td><p><%=vo.getId() %></p></td>		
	</table>
	<div align="center"margin="10px">
	<button type = "submit" class="btn btn-outline-dark mt-auto" >insert</button>
	</div>
</form>
</body>
</html>