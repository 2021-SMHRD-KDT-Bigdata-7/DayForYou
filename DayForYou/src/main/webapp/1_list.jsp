<%@page import="model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BoardDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
BoardDAO dao = new BoardDAO();
ArrayList<BoardVO> boards = dao.getAllBoard();


%>
<h1>jsp5/list.jsp</h1>

<table border= "1">
<tr><td>�� ��ȣ</td><td>����</td><td>ī�װ�</td><td>�ۼ���</td><td>��¥</td><td>��ȸ��</td></tr>

<%

for(int i = 0; i < boards.size(); i++){
%>
<tr><td> <%=boards.get(i).getArticle_seq()%></td>
<td><a href="1_content.jsp?article_seq=<%=boards.get(i).getArticle_seq()%>"><%=boards.get(i).getArticle_subject() %></a></td>
<td><%=boards.get(i).getArticle_kind() %></td>
<td><%=boards.get(i).getM_id() %></td>
<td><%=boards.get(i).getReg_date() %></td>
<td><%=boards.get(i).getArticle_count() %></td></tr>
<%} %>

</table>
<button onclick = "location.href = '1_writeForm.jsp'">���ۼ�</button>

</body>
</html>