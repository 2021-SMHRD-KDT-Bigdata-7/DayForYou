<%@page import="model.BoardDAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp5/deletePro.jsp</h1>
	<%
	request.setCharacterEncoding("euc-kr");
	int article_seq = Integer.parseInt(request.getParameter("article_seq"));
	String user_article_pwd = request.getParameter("user_article_pwd");
	
	BoardDAO dao = new BoardDAO();
	String article_pwd = dao.getPassword(article_seq);
	System.out.println("게시글비밀번호" + article_pwd);
	System.out.println("유저가 쓴 비밀번호: " + user_article_pwd);
	if(user_article_pwd.equals(article_pwd)){
		
		int cnt = dao.deleteBoard(article_seq);
		if(cnt>0){
			response.sendRedirect("1_list.jsp");
		}else{
			%><script type="text/javascript">
			alert("db 삭제가 안됬습니다.");
			history.back();			
			</script>
		<%
		}		
	}else{
		%><script type="text/javascript">
		alert("비밀번호가 틀렸습니다.");
		history.back();
		
		</script>
	<% }
	
	%>





</body>
</html>