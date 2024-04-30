<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>test.jsp</h3>
	<%
		for( Cookie c : request.getCookies() ){
			out.print("name : " + c.getName() + "<br>");
		}
	%>
	<a href="cookie/ex01.jsp">ex01.jsp</a>
</body>
</html>