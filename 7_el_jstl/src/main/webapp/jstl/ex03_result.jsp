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
		String seasonArr[] = request.getParameterValues("season");
		out.print("이름 : " +request.getParameter("name")+"님<br>");
		out.print("좋아하는 계절");
		for(String s : seasonArr) {
			out.print(s+" ");
		}
	%>
	<hr>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	${param.name }님<br>
	좋아하는 계절 : 
	<c:forEach items="${paramValues.season }" var="season">
		${season }
	</c:forEach>
	<!-- 여러개의 값이 배열로 들어왔기 때문에 해당 값을 돌려서 빼냄 -->
</body>
</html>