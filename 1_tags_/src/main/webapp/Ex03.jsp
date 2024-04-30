<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public String name = "홍길동";
		public void setName(String name) {
			this.name = name;
	}
		public String getName() {
			return name;
		}
		class Abc {
			public String test() {
				return "객체 메소드";
			}
		}
	%>
	기본 이름 : <%= name %> <br>
	<% setName("김길이"); %>
	변경 이름 : <%= getName() %><br>
	<% Abc obj = new Abc(); %>
	객체 사용 : <%= obj.test() %>
</body>
</html>