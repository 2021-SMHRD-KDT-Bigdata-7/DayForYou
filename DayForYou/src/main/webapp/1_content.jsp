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
		<tr><td>�۹�ȣ</td><td><%=bvo.getArticle_seq()%></td></tr>
		<tr><td>��ȸ��</td><td><%=bvo.getArticle_count()%></td></tr>
		<tr><td>�۾���</td><td><%=bvo.getM_id()%></td></tr>
		<tr><td>ī�װ�</td><td><%=bvo.getArticle_kind()%></td></tr>
		<tr><td>�ۼ���</td><td><%=bvo.getReg_date()%></td></tr>
		<tr><td>������</td><td><%=bvo.getArticle_subject()%></td></tr>
		<tr><td>�۳���</td><td><%=bvo.getArticle_content()%></td></tr>
		<tr><td colspan="2"><input type = "submit" value="�۸��"></td></tr>


	</table>
	</form>
	<button onclick = "location.href = 'updateBoardService?article_seq=<%=bvo.getArticle_seq()%>'">����</button>
	<button onclick = "location.href = '1_deleteForm.jsp?article_seq=<%=bvo.getArticle_seq()%>'">����</button>
	<!--<button href="1_deleteForm.jsp?article_seq=<%//<%=rs.getInt("article_seq")%>">����</button>-->
	<!-- <button onclick = "location.href = '1_deleteForm.jsp'">����</button> -->


</body>
</html>