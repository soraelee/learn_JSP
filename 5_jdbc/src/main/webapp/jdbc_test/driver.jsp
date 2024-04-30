<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		String driver = "oracle.jdbc.driver.OracleDriver";
		Class.forName(driver); //콘솔 창에 에러가 드지 않으면 잘 실행 된 것
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "java", pwd="1234";
		Connection con = DriverManager.getConnection(url, id, pwd);
		System.out.println("---연결 성공---");
		//데이터베이스에 명령어를 전송 가능
	%>
</body>
</html>