<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= request.getParameter("id") %>님<br>
	<%= request.getParameter("msg") %><hr>
	<a href="javascript:history.back()">이전</a>
</body>
</html>