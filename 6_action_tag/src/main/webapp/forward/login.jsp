<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String msg = (String)request.getAttribute("msg");
		if(msg != null) {
			out.print("msg : " + msg + "<br>");
			out.print(request.getParameter("id") + " : 존재하지 않는 id<br>");
		}
	%>
	
	<form action="check.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="로그인"><br>
	</form>
	
</body>
</html>