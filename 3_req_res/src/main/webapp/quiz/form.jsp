<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 경로 : <%= request.getContextPath() %>/quiz/result.jsp --%>
	<h3>설문 조사 폼 만들기</h3>
	<form action="<%= request.getContextPath() %>/quiz/result.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		소개 : <textarea rows="5" cols="30" name="introduce"></textarea>
		<fieldset>
			<legend>연령 조사</legend>
			10대<input type="radio" name="age" value="10대">
			20대<input type="radio" name="age" value="20대">
			30대<input type="radio" name="age" value="30대">
			40대<input type="radio" name="age" value="40대">
		</fieldset>
		<fieldset>
			<legend>취미 조사</legend>
			책읽기<input type="checkbox" name="hobby" value="책읽기">
			춤추기<input type="checkbox" name="hobby" value="춤추기">
			멍때리기<input type="checkbox" name="hobby" value="멍때리기">
		</fieldset>
		
		<input type="submit" value="전송">
		
	</form>
</body>
</html>