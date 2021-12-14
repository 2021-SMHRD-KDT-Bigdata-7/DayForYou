<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
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
		request.setCharacterEncoding("utf-8");
		String m_id = request.getParameter("m_id");
		String article_subject = request.getParameter("article_subject");
		String article_kind = request.getParameter("article_kind");
		String article_content = request.getParameter("article_content");
		String article_file1 = null;
		String article_file2 = null;
		String article_file3 = null;
		String article_file4 = null;
		String article_file5 = null;
		int article_count = 0;
		Timestamp reg_date = new Timestamp(System.currentTimeMillis());
		
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
		String dbid = "hr";
		String dbpw = "hr";
		Connection con = DriverManager.getConnection(url, dbid, dbpw);
		
		int article_seq = 0;
		String sql = "select max(article_seq) from tbl_nea";
		PreparedStatement psmt = con.prepareStatement(sql);
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			article_seq = rs.getInt("max(article_seq)")+1;
		}
		sql= "insert into tbl_nea(article_seq, article_kind, article_subject, article_content, reg_date, m_id, article_file1, article_file2, article_file3, article_file4, article_file5, article_count) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		psmt = con.prepareStatement(sql);
		psmt.setInt(1, article_seq);
		psmt.setString(2, article_kind);
		psmt.setString(3, article_subject);
		psmt.setString(4, article_content);
		psmt.setTimestamp(5, reg_date);
		psmt.setString(6, m_id);
		psmt.setString(7, article_file1);
		psmt.setString(8, article_file2);
		psmt.setString(9, article_file3);
		psmt.setString(10, article_file4);
		psmt.setString(11, article_file5);
		psmt.setInt(12, article_count);
		psmt.executeUpdate();
		
		response.sendRedirect("1_list.jsp");
	%>
</body>
</html>