<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션 삭제</h3>
	<% 
		session.removeAttribute("age"); //해당 세션 만료 시킴
		/* session.setMaxInactiveInterval(5); //최대 시간을 5초로 설정
		session.invalidate(); //모든 세션 만료 */
	%>
	<a href="set.jsp">세션 설정</a>
	<a href="get.jsp">세션 확인</a>
</body>
</html>