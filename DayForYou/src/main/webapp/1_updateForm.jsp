<%@page import="model.BoardVO"%>
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
<%BoardVO bvo = (BoardVO)request.getAttribute("bvo");
%>
<h1>updateForm.jsp</h1>


<form action="1_updatePro.jsp?article_seq=<%=bvo.getArticle_seq()%>" method="post">
<input type="hidden" name="article_seq" value="<%=bvo.getArticle_seq()%>">
<table border="1">
<tr><td>글쓴이</td><td><input type="text" name="m_id" value="<%=bvo.getM_id()%>"></td></tr>
<tr><td>비밀번호</td><td><input type="password" name="user_article_pwd" ></td></tr>
<tr><td>글쓴이</td><td><input type="text" name="article_subject" value="<%=bvo.getArticle_subject() %>"></td></tr>
<tr><td>카테고리</td><td><input type="text" name="article_kind" value="<%=bvo.getArticle_kind() %>"></td></tr>
<tr><td>내용</td>
	<td><textarea rows="10" cols="20" name="article_content"><%=bvo.getArticle_content()%></textarea></td></tr>
	<input type = "hidden" name = "article_pwd" value = "<%=bvo.getArticle_pwd()%>"></div>
	
<tr><td colspan="2"><input type="submit" value="글수정"></td></tr>
</table>
</form>
</body>
</html>