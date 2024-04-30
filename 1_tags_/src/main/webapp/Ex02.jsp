<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		int num = 100;
		System.out.println("num : " + num); //서버에 있는 콘솔 창으로 출력하기
		out.print("num : " + num);
	--%>
	
	<%!
		int num = 1234;
	%>
	<%
		out.print("num : <b>" + num + "</b>");
	%>
	<br>
	num : <h4> <%= num++ %></h4> 
</body>
</html>