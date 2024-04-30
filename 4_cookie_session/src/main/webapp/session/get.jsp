<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	get.jsp<br>
	<%
		String id = (String)session.getAttribute("id");
		String age = (String)session.getAttribute("age");
		String nick = (String)session.getAttribute("nick");
	%>
	id : <%= id %><br>
	age : <%= age %><br>
	nick : <%= nick %><br>
	<hr>
	<a href="set.jsp">세션 설정</a>
	<a href="del.jsp">세션 삭제</a>
</body>
</html>