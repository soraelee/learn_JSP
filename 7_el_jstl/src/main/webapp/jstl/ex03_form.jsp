<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	form.ejs<br>
	<form action="ex03_result.jsp">
		<input type="text" name="name"><br>
		좋아하는 계절<br>
		<input type="checkbox" name="season" value="spring">봄
		<input type="checkbox" name="season" value="summer">여름
		<input type="checkbox" name="season" value="fall">가을
		<input type="checkbox" name="season" value="winter">겨울
		<br><input type="submit" value="전송">
	</form>
</body>
</html>