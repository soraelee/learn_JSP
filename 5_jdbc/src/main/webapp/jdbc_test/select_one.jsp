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
	<%@ include file = "driver.jsp" %>
	id : <%= request.getParameter("id") %><br><br>
	<%
		String  paramId = request.getParameter("id");
		String sql = "select * from member_jsp where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, paramId);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) { %>
			id : <%= rs.getString("id") %><br>
			name : <%= rs.getString("name") %><br>
			kor : <%= rs.getInt("kor") %><br>
			eng : <%= rs.getInt("eng") %><br>
			math : <%= rs.getInt("math") %><br>
			
		<% } %>

</body>
</html>