<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>get.jsp</h3>
	id : <%=request.getParameter("id") %>
	pwd : <%=request.getParameter("pwd") %>
	<a href="form.jsp">form 이동</a>
</body>
</html>