<%@page import="member.MemberDAO"%>
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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id); dto.setPwd(pwd);
		dto.setName(name); dto.setAddr(addr);
		dto.setTel(tel);
		//모든 값 저장 후 dto를 dao로 넘겨주고 DB 저장 하는 코드
	%>
	id : <%= dto.getId() %><br>
	pwd : <%= dto.getPwd() %><br>
	name : <%= dto.getName()  %><br>
	addr : <%= dto.getAddr()  %><br>
	tel : <%= dto.getTel()  %>
	
	<hr>
	
	<h3>useBean</h3>
	
	<jsp:useBean id="mDto" class="member.MemberDTO" />
	<jsp:setProperty property="*" name="mDto"/>
	<!-- dto가 있어야 해당 기능 사용 가능 -->
	
	id : <%= mDto.getId() %><br>
	pwd : <%= mDto.getPwd() %><br>
	name : <%= mDto.getName()  %><br>
	addr : <%= mDto.getAddr()  %><br>
	tel : <%= mDto.getTel()  %>
	
	<%
		MemberDAO dao = new MemberDAO();
		dao.register(mDto);
		response.sendRedirect("show_list.jsp");
	%>
</body>
</html>





