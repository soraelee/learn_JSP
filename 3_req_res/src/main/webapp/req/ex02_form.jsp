<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String path = request.getContextPath(); %>
경로 : <%=path %>/req/ex02_result.jsp<br>
	<form action = "<%=path %>/req/ex02_result.jsp" method="post">
		1<input type="checkbox" name="chk" value="일"><br>
		2<input type="checkbox" name="chk" value="이"><br>
		3<input type="checkbox" name="chk" value="삼"><br>
		<hr>
		우편번호 : <input type="text" name="addr"><br>
		주소 : <input type="text" name="addr"><br>
		상세주소 : <input type="text" name="addr"><br>
		<hr>
		우편번호 : <input type="text" name="a1"><br>
		주소 : <input type="text" name="a2"><br>
		상세주소 : <input type="text" name="a3"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>