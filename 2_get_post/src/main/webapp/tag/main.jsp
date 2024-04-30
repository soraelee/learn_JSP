<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h1>인크루드 속성</h1> : <%=name %>
	<%@ include file="/tag/footer.jsp" %>
	<!-- //절대 경로 : webapp --> 
</body>
</html>