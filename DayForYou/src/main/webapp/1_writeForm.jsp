<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="writerBoardService" method ="post">
	<table border="1">
	
		<tr><td>�۾��� </td><td><input type = "text" name="m_id"></td></tr>
		<tr><td>��й�ȣ </td><td><input type = "text" name="article_pwd"></td></tr>
		<tr><td>���� </td><td><input type = "text" name="article_subject"></td></tr>
		<tr><td>ī�װ� </td><td><input type = "text" name="article_kind"></td></tr>
		<tr><td>���� </td>
			<td><textarea rows="10" cols="20" name="article_content"></textarea></td></tr>
			<tr><td colspan="2"><input type = "submit" value="�۾���"></td></tr>
	</table>
	</form>
</body>
</html>