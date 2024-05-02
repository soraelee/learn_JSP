<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 파일 등록하는 form -->
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
		<input type="text" name="id" placeholder="id"><br>
		<input type="file" name="save_file"><br>
		<input type="submit" value="전송"><br>
	</form>
	<a href="download_form.jsp">파일 확인</a>
</body>
</html>