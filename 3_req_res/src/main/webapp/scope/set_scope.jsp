<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 각각의 값 설정 : setAttribute -->
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	
	<!-- 각각의 값 가져오기 : getAttribute -->

		page : <%= pageContext.getAttribute("name")%><br>
		request : <%= request.getAttribute("name") %><br>
		session : <%= session.getAttribute("name")%><br>
		application : <%= application.getAttribute("name")%>
		
		<%--
			request.getRequestDispatcher("get01.jsp").forward(request, response);
			//request 값 다음 페이지까지 유지 하는 방법
		--%>
		<a href="get01.jsp">get01.jsp</a>
</body>
</html>