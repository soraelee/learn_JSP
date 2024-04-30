<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 확인</h1>
	<!-- 쿠키 만들기 -->
	<%
		Cookie cookie = new Cookie("testCookie", "myCookie"); //쿠키 이름과 값 설정
		cookie.setMaxAge(5); //쿠키의 유효기간 -> 5초
		cookie.setPath("/"); //쿠키의 시작 위치를 설정할 수 있음
		response.addCookie(cookie); //쿠키가 응답됨
		
		boolean bool = true;
		
		//사용자에 대한 쿠키 확인하는 냐ㅐ용
		Cookie[] cookieArr = request.getCookies();
		for( Cookie c : cookieArr ) { 
			out.print("name : " + c.getName() + "<br>");
			out.print("value : " + c.getValue() + "<hr>");
			if(c.getName().equals("testCookies")){
				//해당 쿠키 값이 없을 경우에만 팝업창을 열어주어라
				bool=false;
			}
		}
	%>
	<% if(bool) { %>
	<script type="text/javascript">
		//하나의 새로운 팝업 창을 열음
		window.open("popup.jsp", "", //"" : 새창으로 열기
					"width=400, height=200, top=500, left=500");
		
	</script>
	<% } %>
	<hr> 
	<a href="../test.jsp">test.jsp</a>
	<a href="delete.jsp">delete.jsp</a>
</body>
</html>