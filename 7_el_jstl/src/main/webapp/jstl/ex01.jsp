<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 사용 방법 -->
	ex01.jsp<br>
	<h3>변수 및 출력</h3>
	<c:out value="안녕하세요" /><br>
	<c:set var="num" value="12345" /> <!-- 변수명과 변수 값을 설정 -->
	c:out : <c:out value="${num }"/><br> <!-- print 하여 페이지에서 출력 -->
	\${num } : ${num }<br>
	
	
	<h3>c:if</h3>
	<c:set var="num1" value="안녕" />
	<c:if test="${ num1 == num }">
		<!-- test값이 참일 경우 실행 -->
		<b>두 값은 같다</b> <!-- HTML 코드를 혼용해서 사용하기 수월함 -->
	</c:if>
	<c:if test="${ num1 ne num }"> <!-- != -->
		<!-- test값이 참일 경우 실행 -->
		<b>두 값은 같지 않다</b> <!-- HTML 코드를 혼용해서 사용하기 수월함 -->
	</c:if>
	<hr>
	<!-- if / elseif / else -->
	
	<c:set var="number" value="100" />
	<c:choose>
		<c:when test="${ number > 90 }">
			90보다 크다
		</c:when>
		<c:when test="${ number > 70 }">
			70보다 크다
		</c:when>
		<c:otherwise>
			그 외의 값 실행
		</c:otherwise>
	</c:choose>
	
	
	<h3>반복문 forEach</h3>
	<c:forEach var="i" begin="1" end="5" step="1">
	<!-- i라는 변수를 1부터 5 까지 1만큼 증가 시키겠다 -->
		i : ${ i }<br>
	</c:forEach>

	
	<c:set value="0" var="sum" />
	<c:set value="10" var="n" />
	<c:forEach var="i" begin="1" end="${n }">
		<c:set value="${ sum + i }" var="sum" />
	</c:forEach>
	sum : ${sum}<hr>
	
	
	<h3>배열 활용하기</h3>
	
	<c:set var="arr" value="홍길동, 김개똥, 고길똥"/>
	<c:forEach var="item" items="${ arr }"> <!-- items라는 곳에 배열 명을 넣으면 forEach 문 실행 -->
		${ item }<br>
	</c:forEach>
	
	<h3>forTokens</h3>
	<c:set var="str" value="안녕/하세/요" />
	
	<c:forTokens var="item" items="${ str }" delims="/">
		${ item } <br>
	</c:forTokens>
	
	<h3>예외 처리</h3>
	<c:catch var = "result">
		<%= 10 / 0 %>
	</c:catch>
	<!-- 해당 값이 에러가 나지 않는다면 result라는 변수명에 표현 -->
	result : ${result }<br>
	<c:if test="${result != null}">
		<b>문제 발생</b>
	
	</c:if>
	
	<h3>각 변수를 scope로 설정하기</h3>
	<c:set var="name" value="홍길동" scope="session"/>
	<hr>
	<a href="ex02_session.jsp">session확인</a>
	
</body>
</html>