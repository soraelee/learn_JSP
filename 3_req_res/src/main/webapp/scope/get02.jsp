<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	page : <%= pageContext.getAttribute("name")%><br>
	request : <%= request.getAttribute("name") %><br>
	session : <%= session.getAttribute("name")%><br>
	application : <%= application.getAttribute("name")%>
	<a href="get01.jsp">get01.jsp</a>
	<a href="set_scope.jsp">set_scope.jsp</a>
</body>
</html>