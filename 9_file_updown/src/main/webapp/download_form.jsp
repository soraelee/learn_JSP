<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 목록 불러오는 코드 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<jsp:useBean id="file" class="file.FileOperation"></jsp:useBean>
	<c:forEach var="item" items="${file.getFileList() }">
		<img alt="" src="download.jsp?img=${item }" width="100" height="100">
		<a href="download.jsp?img=${item }">${item }</a>
		<br>
	</c:forEach>
	<hr>
	<a href="upload_form.jsp">form 이동</a>
</body>
</html>