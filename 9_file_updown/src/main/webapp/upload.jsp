<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- request 값 꺼내기 -->
	result : ${ pageContext.request }<br>
	result : <%= request %><br>
	<jsp:useBean id="file" class="file.FileOperation" />
	${ file.upload( pageContext.request) }
	<% response.sendRedirect("upload_form.jsp"); %>
</body>
</html>