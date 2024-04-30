<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/tag/quiz/header.jsp" %>
 	<h3>요청 페이지에 문제 발생 !!</h3>
 	<%= exception.getMessage() %><br>
 	<%= exception.toString() %><br>
</body>
</html>