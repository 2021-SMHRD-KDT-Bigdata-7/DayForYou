<%@page import="model.BoardVO"%>
<%@page import="model.BoardDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
request.setCharacterEncoding("euc-kr");
int article_seq = Integer.parseInt(request.getParameter("article_seq"));
BoardDAO dao = new BoardDAO();
BoardVO bvo = dao.getBoard(article_seq);

%>

	<form action="1_list.jsp" method ="post">
	<table border="1">
		<tr><td>글번호</td><td><%=bvo.getArticle_seq()%></td></tr>
		<tr><td>조회수</td><td><%=bvo.getArticle_count()%></td></tr>
		<tr><td>글쓴이</td><td><%=bvo.getM_id()%></td></tr>
		<tr><td>카테고리</td><td><%=bvo.getArticle_kind()%></td></tr>
		<tr><td>작성일</td><td><%=bvo.getReg_date()%></td></tr>
		<tr><td>글제목</td><td><%=bvo.getArticle_subject()%></td></tr>
		<tr><td>글내용</td><td><%=bvo.getArticle_content()%></td></tr>
		<tr><td colspan="2"><input type = "submit" value="글목록"></td></tr>


	</table>
	</form>
	<button onclick = "location.href = 'updateBoardService?article_seq=<%=bvo.getArticle_seq()%>'">수정</button>
	<button onclick = "location.href = '1_deleteForm.jsp?article_seq=<%=bvo.getArticle_seq()%>'">삭제</button>
	<!--<button href="1_deleteForm.jsp?article_seq=<%//<%=rs.getInt("article_seq")%>">삭제</button>-->
	<!-- <button onclick = "location.href = '1_deleteForm.jsp'">삭제</button> -->


</body>
</html>