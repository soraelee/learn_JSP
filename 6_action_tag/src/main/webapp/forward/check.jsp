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
	String DB_id ="aaa", DB_pwd="aaa";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	if(DB_id.equals(id) && DB_pwd.equals(pwd)) {%>
		<!-- 해당 페이지 에서도 request를 사용할 수 있게끔 설정 -->
		<jsp:forward page="main.jsp">
			<jsp:param value="로그인 성공!!" name="msg"/>
		</jsp:forward>
	<% }else {
		request.setAttribute("msg", "로그인 실패 !!");
		//response.sendRedirect("login.jsp"); 
		//사용자에게 페이지를 연결 - 사용자에게 해당 페이지를 보낸 후 다시 서버에 요청
		//해당하는 값이 유지 되지 않음 - forward 사용이 필요
		request.getRequestDispatcher("login.jsp").forward(request, response);
		//서버 내부에서 경로를 이동(사용자를 거치지 않음 -- 해당하는 값이 유지가 됨)
	}%>

</body>
</html>