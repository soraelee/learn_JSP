<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp" method="post">
		<input type="text" name="id" placeholder="register id"><br>
		<input type="text" name="pwd" placeholder="register pwd"><br>
		<input type="text" name="name" placeholder="register name"><br>
		남 : <input type="radio" name="gender" value="남"><br>
		여 : <input type="radio" name="gender" value="여"><br>
		<input type="submit" value="저장">
	</form>
</body>
</html>