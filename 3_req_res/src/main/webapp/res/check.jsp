<%@page import="java.io.PrintWriter"%>
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
		request.setCharacterEncoding("utf-8"); 
		String DB_id = "1", DB_pwd = "1";
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		//스크립트 전달하여 메세지 띄우기
		String msg = null;
		
		if(DB_id.equals(userId) && DB_pwd.equals(userPwd)){
			/* response.sendRedirect("main.jsp"); */
			msg = "<script>alert('로그인 성공');";
			msg += "location.href = 'main.jsp';</script>";
		} else {
			/* response.sendRedirect("login.jsp"); */
			msg = "<script>alert('로그인 실패');";
			msg += "location.href = 'login.jsp';</script>";
		}
		PrintWriter pr = response.getWriter(); //해당 메소드를 통해 응답하고, msg 전달
		pr.print(msg);
	%>
	
</body>
</html>