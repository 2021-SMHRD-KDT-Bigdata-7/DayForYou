<%@page import="java.util.ArrayList"%>
<%@page import="model.shopVO"%>
<%@page import="model.DAO"%>
<%@page import="model.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����Ʈ �� ������ ������</title>
</head>
<body>
<%
	MemberVo vo = (MemberVo)session.getAttribute("vo");
	out.print(vo);

	DAO dao = new DAO();
	
	shopVO svo = new shopVO();
	ArrayList<shopVO> goods = dao.selectAllGoods();
	
	
%>
	<h2 align="center">����Ʈ �� ������ ������</h2>
	<table border="1" bordercolor="black" width="500" height="300"
		align="center">
		<th>ī�װ�</th>
		<th>��ǰ�̸�</th>
		<th>��ǰ����Ʈ</th>
		<th><a class="btn btn-outline-dark mt-auto" href="shop_insert">�߰�</a></th>
		<th><a class="btn btn-outline-dark mt-auto" href="#none">����</a></th>
		<th><a class="btn btn-outline-dark mt-auto" href="#none">����</a></th>
		<%for(int i =0; i<goods.size(); i++){ %>
		<tr>
			<td><%=goods.get(i).getGoods_category() %></td>
			<td><%=goods.get(i).getGoods_name()%></td>
			<td><%=goods.get(i).getGoods_point() %></td>
		</tr>
		<%} %>
	</table>
	<tr><tr>
	<div align="center"margin"10px">
		<a class="btn btn-outline-dark mt-auto" href="main.html">Ȯ���ϱ�</a>
	</div>
</body>
</html>