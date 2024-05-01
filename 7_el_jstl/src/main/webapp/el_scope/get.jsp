<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>get</h3>
	name : ${name }<br>
	page : ${pageScope.name}<br>
	request : ${requestScope.name}<br>
	session : ${sessionScope.name}<br>
	application : ${application.name}<br>
	<a href="set.jsp">set 이동</a>
</body>
</html>