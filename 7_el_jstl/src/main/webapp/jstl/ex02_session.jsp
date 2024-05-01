<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="ex02_test.jsp" />
	<hr color="hotpink" size="10">
	
	<h3>session</h3>
	session : ${name }<br>
	${sessionScope.name }
	<hr>
	<a href="ex02_delete.jsp">세션 삭제</a>
	<hr>
	
	getContextPath : <%= request.getContextPath() %><br>
	<a href="<%= request.getContextPath() %>/jstl/ex01.jsp">ex01</a>
	
	<c:set var="path" value="<%= request.getContextPath() %>"></c:set>
	<a href="${path }jstl/ex01.jsp">ex01</a>
	
	<a href="<c:url value="jstl/ex01.jsp" />">ex01</a>
	
	<c:url var="url" value="/jstl" />
	<br> url : ${ url }
</body>
</html>