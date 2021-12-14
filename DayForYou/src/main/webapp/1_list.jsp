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
Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
String dbid = "hr";
String dbpw = "hr";
Connection con = DriverManager.getConnection(url, dbid, dbpw);


String sql = "select * from tbl_nea";
PreparedStatement psmt = con.prepareStatement(sql);
ResultSet rs = psmt.executeQuery();

%>
<h1>jsp5/list.jsp</h1>

<table border= "1">
<tr><td>글 번호</td><td>제목</td><td>카테고리</<td>작성자</td><td>날짜</td><td>조회수</td></tr>

<%
while(rs.next()){
%>
<tr><td> <%=rs.getInt("article_seq") %></td>
<td><%=rs.getString("article_subject") %></td>
<td><%=rs.getString("article_kind") %></td>
<td><%=rs.getString("m_id") %></td>
<td><%=rs.getTimestamp("reg_date") %></td>
<td><%= rs.getInt("article_count") %></td></tr>
<%} %>

</table>
</body>
</html>