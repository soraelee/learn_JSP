<%@page import="java.util.HashMap"%>
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
		String name = "홍길동";
		HashMap<String, String> map = new HashMap<>();
		map.put("naver", "https://www.naver.com");
		map.put("google", "https://www.google.co.kr");
	%>
	<input type="text" value="<%= name %>"><br>
	<input type="text" value="<%out.print(name); %>"><br>
	<a href=<%= map.get("naver") %>>네이버</a>
	<a href=<%= map.get("google") %>>구글</a>
	<a href="http://localhost:3000/">이동</a><!-- 응용 가능 -->

</body>
</html>