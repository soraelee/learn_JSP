<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/header.jsp" %>
	${param.result }
	<form action="${path }member/m_register.jsp" method="post">
		<input type="text" name="id" placeholder="아이디"><br>
		<input type="text" name="pwd" placeholder="비밀번호"><br>
		<input type="text" name="name" placeholder="이름"><br>
		<input type="text" name="addr" placeholder="주소"><br>
		<input type="text" name="tel" placeholder="전화번호"><br>
		<input type="submit" value="회원가입">
	</form>

</body>
</html>