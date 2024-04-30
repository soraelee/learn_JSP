<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/bean/index.jsp"/>
	show_list 페이지 입니다
	
	<%
		MemberDAO d = new MemberDAO(); //객체 생성
		
	%>
	<jsp:useBean id="dao" class="member.MemberDAO"/><!-- 하나의 객체 생성 -->
	<%
		ArrayList<MemberDTO> list = d.getList();
		System.out.println("size : " + list.size());
	%>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>주소</th>
		</tr>
		<%
			for(MemberDTO dto : list){%>
				<tr>
					<td><%= dto.getId() %></td>
					<td><%= dto.getName() %></td>
					<td><%= dto.getAddr() %></td>
				</tr>
			<%}
		%>
	</table>
	
</body>
</html>