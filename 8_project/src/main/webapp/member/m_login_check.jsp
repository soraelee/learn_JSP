<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="member.MemberDAO" />
	
	<c:set var="dto" value="${ dao.getOneMember( param.id ) }"/>
	dto : ${ dto }<br>
	<c:choose>
		<c:when test="${dto == null }">
			<c:set var = "result" value="존재하지 않는 id입니다!!"/>
		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when test="${dto.pwd == param.pwd }">
					<c:set var = "result" value="인증 성공!!"/>
					<c:set var="loginId" value="${dto.id }" scope="session"></c:set>
					<c:set var="loginName" value="${dto.name }" scope="session"></c:set>
				</c:when>
				<c:otherwise>
					<c:set var = "result" value="비밀번호가 틀렸습니다!"/>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
	<c:redirect url="/member/m_login.jsp">
		<!-- param 값을 redirect로 전달함 -->
		<c:param name="result" value="${result}"></c:param>
	</c:redirect>
</body>
</html>