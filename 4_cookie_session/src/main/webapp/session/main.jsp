<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//세션이 없을 경우 login으로 리다이렉트
		if(session.getAttribute("nick") == null)
			response.sendRedirect("login.jsp");
	%>

	<h3> 로그인 성공 사용자 접근 가능 </h3>
	<%= session.getAttribute("nick") %>님 환영합니다.<hr>
	<a href="logout.jsp">로그아웃</a>
	<a href="login.jsp">로그인</a>
</body>
</html>