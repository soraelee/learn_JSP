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
	<jsp:useBean id="dao" class="test.TestDAO"></jsp:useBean>
	<c:set var="dto" value="${dao.getData(param.num) }"/>
	
	<h1>하나의 목록</h1>
	name : ${dto.name} <br>
	addr : ${dto.addr} <br>
	<a href="<c:url value='/jstl/ex04_all_data.jsp'/>">목록이동</a>
</body>
</html>