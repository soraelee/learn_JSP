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
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	<h3>set</h3>
	name : ${name }<br>
	page : ${pageScope.name} : <%=pageContext.getAttribute("name") %><br>
	request : ${requestScope.name}<br>
	session : ${sessionScope.name}<br>
	application : ${application.name}<br>
	<a href="get.jsp">get 이동</a>
</body>
</html>