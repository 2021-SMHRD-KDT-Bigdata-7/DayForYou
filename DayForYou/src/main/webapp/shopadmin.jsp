<%@page import="model.shopVO"%>
<%@page import="model.DAO"%>
<%@page import="model.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>포인트 샵 관리자 페이지</title>
</head>
<body>
<%
	MemberVo vo = (MemberVo)session.getAttribute("vo");
	out.print(vo);

	DAO dao = new DAO();
	
	shopVO svo = new shopVO();
	
	
	
%>
	<h2 align="center">포인트 샵 관리자 페이지</h2>
	<table border="1" bordercolor="black" width="500" height="300"
		align="center">
		<th>카테고리</th>
		<th>제품이름</th>
		<th>상품포인트</th>
		<th><a class="btn btn-outline-dark mt-auto" href="z">추가</a></th>
		<th><a class="btn btn-outline-dark mt-auto" href="#">수정</a></th>
		<th><a class="btn btn-outline-dark mt-auto" href="#">삭제</a></th>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<td><%=svo.getGoods_category() %></td>
		<td><%=svo.getGoods_name() %></td>
		<td><%=svo.getGoods_point() %></td>
		</tr>
		
		<tr>
			
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<td><%=svo.getGoods_category() %></td>
		<td><%=svo.getGoods_name() %></td>
		<td><%=svo.getGoods_point() %></td>
		</tr>
		
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<tr>
			<td><%=svo.getGoods_category() %></td>
			<td><%=svo.getGoods_name() %></td>
			<td><%=svo.getGoods_point() %></td>
		</tr>
		<td><%=svo.getGoods_category() %></td>
		<td><%=svo.getGoods_name() %></td>
		<td><%=svo.getGoods_point() %></td>
		</tr>
		

	</table>
	<tr><tr>
	<div align="center"margin"10px">
		<a class="btn btn-outline-dark mt-auto" href="main.html">확인하기</a>
	</div>
</body>
</html>