<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<h1>모든 목록 확인</h1>
	<jsp:useBean id="dao" class="test.TestDAO"/>
	<c:set var="list" value="${dao.getList() }"/>
	<c:forEach var="dto" items = "${list }">
		name: ${dto.getName() }<br>
		addr: ${dto.getAddr() }<br>
	</c:forEach>
	<a href="ex04_one_data.jsp?num=3">하나의 데이터 확인</a>
</body>
</html>