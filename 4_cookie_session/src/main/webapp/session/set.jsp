<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	set.jsp<br>
	<%
		session.setAttribute("id", "abcd");
		session.setAttribute("age", "20");
		session.setAttribute("nick", "홍길동");
	%>
	<h3>세션 설정</h3>
	<a href="get.jsp">세션 확인</a>
	<a href="del.jsp">세션 삭제</a>
</body>
</html>