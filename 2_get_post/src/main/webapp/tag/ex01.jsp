<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/tag/quiz/header.jsp" %>
	<%
		ArrayList<String> list = new ArrayList<>();
		list.add("오늘");
		list.add("내일");
		list.add("그리고");
	%>
	<%
		for (int i = 0; i<list.size() ; i++) {
			out.print(list.get(i) + "<br>");
		}
	%>
	<hr>
	<% 
		for(String s : list) {%>
			값 : <%= s%><br>
		<%}
	%>
</body>
</html>