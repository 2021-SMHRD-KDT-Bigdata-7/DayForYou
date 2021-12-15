<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>jsp5/deleteForm.jsp</h1>
<%
int article_seq=Integer.parseInt(request.getParameter("article_seq"));
%>
<form action="1_deletePro.jsp">
<input type = "hidden" name = "article_seq" value = "<%=article_seq%>">
<table border="1">
<tr><td>비밀번호</td> <td><input type="password" name="user_article_pwd"></td></tr>
<tr><td colspan="2"><input type="submit" value="글삭제"> </td></tr>
</table>
</form>
</body>
</html>