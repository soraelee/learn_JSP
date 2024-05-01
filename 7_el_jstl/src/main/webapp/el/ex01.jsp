<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	단순 출력 : ${"표현언어 사용" }<br> 
	<!-- javascript에서 문자형 삽입하는 문법과 같음  -->
	<!-- 해당 문법은 JSP 파일에서 사용 불가함   -->
	정수형 : ${10}<br> 
	실수형 : ${1.123}<br> 
	문자열 : ${"홍길동"}<br> 
	논리형 : ${true}<br> 
	null : ${null}<br>
	
	<% String str = null; %>
	null 비교 : ${ null == str }<br>
	<%-- JSP 문법과 el을 함께 사용하면 문법의 흐름을 방해하지 않음 --%>
	연산 : ${5 + 2 }<hr> 
	\${ 5 / 2 } : ${ 5 / 2 } => ${ 5 div 2 }<br>
	\${ 5 % 2 } : ${ 5 % 2 } => ${ 5 mod 2 }<br>
	\${ true || false } : ${ true || false } => ${ true or false }<br>
	\${ true && false } : ${ true && false } => ${ true and false }<br>
</body>
</html>