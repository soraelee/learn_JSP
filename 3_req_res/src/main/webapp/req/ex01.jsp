<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= request.getContextPath() %><br>
	<!-- 포트 번호 다음의 경로 -> getContextPath로 설정 -->
	<%= request.getMethod() %><br><!-- get 방식 / post 방식을 알려줌 -->
</body>
</html>