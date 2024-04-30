<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("loginUser") == null){ %>
	<form action="check.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="로그인"><br>
	</form>
<%} else {%>
	<!-- 로그인 상태일 때 로그인 상태임을 알려줌 -->
	<%=session.getAttribute("loginUser") %>님 로그인 상태 입니다<br>
	<a href="logout.jsp">로그아웃</a>
	<a href="main.jsp">main 이동</a>
<% } %>
</body>
</html>