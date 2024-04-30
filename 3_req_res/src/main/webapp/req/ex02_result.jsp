<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	chk : <%= request.getParameter("chk") %><br><br>
	
	<%
		String[] chks = request.getParameterValues("chk");

		if(chks != null){
			for(String s : chks) {
				out.print(s+"<br>");
			}
		}
	%>
	<hr>
	<h3>주소</h3>
	<%for(String addr : request.getParameterValues("addr")){ 
		out.print(addr+"<br>");
	}
	%>
	<%= request.getParameter("a1") %><br>
	<%= request.getParameter("a2") %><br>
	<%= request.getParameter("a3") %><br>
	
	<%
		Enumeration<String> e = request.getParameterNames();
		//순차적인 값으로 내보냄 -> iterator 형태로 진행 (마지막이 eof)
		
		while(e.hasMoreElements()){ //다음 수에 값이 있는 지를 확인 (eof인지)
			String name = e.nextElement();
			out.print(name + " : "  + request.getParameter(name)+ "<br>");
		}
	%>
	
	
	
	<hr>
	<a href="ex02_form.jsp">form</a>
</body>
</html>