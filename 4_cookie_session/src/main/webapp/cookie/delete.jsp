<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="../test.jsp">test.jsp</a><br>

	<%
		//사용자에 대한 쿠키 확인하는 냐ㅐ용
		Cookie[] cookieArr = request.getCookies();
		for( Cookie c : cookieArr ) { 
			out.print("name : " + c.getName() + "<br>");
			out.print("value : " + c.getValue() + "<hr>");
			if(c.getName().equals("testCookies")){
				//delete 실행 시 쿠키의 MaxAge 0으로 하며 쿠키 삭제
				c.setMaxAge(0);
				c.setPath("/");
				response.addCookie(c);
			}
		}
	%>
</body>
</html>