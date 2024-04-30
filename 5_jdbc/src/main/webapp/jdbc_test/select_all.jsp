<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="driver.jsp" %>
	
	con : <%= con %><hr>
	
	<% 
		String sql = "select * from member_jsp";
		PreparedStatement ps = con.prepareStatement(sql);//실행 객체 얻어옴
		ResultSet rs = ps.executeQuery(); //실행 객체를 토대로 값을 받아옴 -> iterator 형태
		while(rs.next()) {%>
			id : <%= rs.getString("id") %><br>
			name : <a href="select_one.jsp?id=<%= rs.getString("id") %>"> 
					<%= rs.getString("name") %><br>
				</a>
			kor : <%= rs.getInt("kor") %><br>
			eng : <%= rs.getInt("eng") %><br>
			math : <%= rs.getInt("math") %><br>
		<% } %>
	
</body>
</html>