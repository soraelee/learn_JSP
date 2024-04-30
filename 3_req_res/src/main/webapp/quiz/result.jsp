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
	<h3>설문 조사 결과</h3>
	이름 : <%= request.getParameter("name") %><br>
	소개 : <%= request.getParameter("introduce") %><br>
	나이 : <%= request.getParameter("age") %><br>
	취미 :
	<%
		String[] hobby = request.getParameterValues("hobby");
		for(String h : hobby) {
			out.print(h + " ");
		}
	%>
	
	<hr>
	
	<%
		Enumeration<String> formList = request.getParameterNames();
		
		while(formList.hasMoreElements()){

			String name = formList.nextElement();
			System.out.println(name + " : " +  request.getParameter(name));
			
			out.print(name + " : " +  request.getParameter(name) + "<br>");
		}
	%>

</body>
</html>