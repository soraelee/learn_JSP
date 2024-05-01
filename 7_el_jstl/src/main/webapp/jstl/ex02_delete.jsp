<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:remove var="name"/><!-- 해당 값을 삭제 -- 세션 삭제 -->
	<c:redirect url="/jstl/ex02_session.jsp" />
</body>
</html>