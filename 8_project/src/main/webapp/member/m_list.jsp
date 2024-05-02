<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/common/header.jsp" %>
	<jsp:useBean id="dao" class="member.MemberDAO">
		<h3>모든 목록 확인</h3>
		<table border="1">
			<tr>
				<th>이름</th>
				<th>주소</th>
				<th>전화번호</th>
			</tr>
			<c:set var="rsMap" value="${dao.getList( param.page ) }"/>
			<c:forEach var = "dto" items="${rsMap.get('list') }">
			<!-- map 형식이 돌아옴 -->
			
			<tr>
				<td> 
					<c:choose>
						<c:when test="${loginId ne null }">
							<c:set var="result" value="/m_info.jsp?id=${dto.id}" />
						</c:when>
					</c:choose>
				
				
					<a href="${path }member${result }" >${dto.name}</a>
				</td>
				<td> ${dto.addr }</td>
				<td> ${dto.tel}</td>
			</tr>
			</c:forEach>
			<tr>
				<td align="center" colspan="3">
					<c:forEach var="cnt" begin="1" end="${rsMap.get('endPage') }">
						<a href="m_list.jsp?page=${cnt }">${cnt }</a> &nbsp;
					</c:forEach>
				</td>
			</tr>
		</table>
	</jsp:useBean>

</body>
</html>