<%@page import="member.MemberDTO"%>
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
		MemberDTO dto = new MemberDTO();
		dto.setId("1111111");
		dto.setName("홍길동");
		
	%>
	id : <%= dto.getId() %><br>
	name : <%= dto.getName() %><br>
	
	<hr>
	<jsp:useBean id="memDto" class="member.MemberDTO"/>
	<!-- id : 객체 명 class : 객체를 만들기 위한 타입 -->
	<jsp:setProperty property="id" name="memDto"value="bbbb"/> <!-- ==setter -->
	<jsp:setProperty property="name" name="memDto" value="김개똥"/> <!-- ==setter -->


	id : <jsp:getProperty property="id" name="memDto"/><br>	
	name: <jsp:getProperty property="name" name="memDto"/><br>
	id : <%=memDto.getId() %>
	name : <%=memDto.getName() %>
		
</body>
</html>