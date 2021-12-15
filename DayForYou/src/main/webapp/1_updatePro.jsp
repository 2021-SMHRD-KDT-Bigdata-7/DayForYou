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
	<h1>jsp5/updatePro.jsp</h1>
	
	
	<%
	request.setCharacterEncoding("euc-kr");
	int article_seq = Integer.parseInt(request.getParameter("article_seq"));
	String article_kind = request.getParameter("article_kind");
	String article_subject = request.getParameter("article_subject");
	String article_content = request.getParameter("article_content");
	String m_id = request.getParameter("m_id");	
	
	String article_pwd = request.getParameter("article_pwd");
	String user_article_pwd = request.getParameter("user_article_pwd");
		

	System.out.println(article_pwd);
	System.out.println(user_article_pwd);
		
	if(user_article_pwd.equals(article_pwd)){		
		BoardDAO dao = new BoardDAO(); 
		int cnt = dao.updateBoard(article_seq, m_id, article_pwd, article_subject, article_kind, article_content);
		
		if(cnt>0){
			response.sendRedirect("1_list.jsp");	
		}else{
		%><script> alert("수정실패");</script>
		<%
		}
					
	}else{%>
	<script type="text/javascript">
	alert("비밀번호가 틀렸습니다.");
	history.back();	
	</script>
	<% } %>
</body>
</html>