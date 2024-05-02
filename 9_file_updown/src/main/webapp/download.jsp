<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= response %>
	<jsp:useBean id="file" class="file.FileOperation"></jsp:useBean>
	${ file.fileDown( param.img, pageContext.response ) }
	<!-- response를 토대로 사용ㅇ자에게 응답 -->
</body>
</html>