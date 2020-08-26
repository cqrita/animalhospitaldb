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
		String loginid = (String) session.getAttribute("loginid");
		if (loginid == null) {
			out.println("<a href = 'login.jsp'> 로그인</a> 부터 하세요.");
		} else {
			out.println(loginid + "회원님의 페이지입니다.");
		}
	%>

</body>
</html>