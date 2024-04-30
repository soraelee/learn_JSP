<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>method get</h3>
	<form action="get.jsp" method="get">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="submit"><br>
	</form>
	
	<h3>method post</h3>
	<form action="/2_get_post/get_post/post.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="submit"><br>
	</form>
</body>
</html>