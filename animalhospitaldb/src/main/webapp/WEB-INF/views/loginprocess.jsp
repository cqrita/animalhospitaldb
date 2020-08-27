<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
  background: body;
  font-family: 'Inter UI', sans-serif;
  margin: 0;
  padding: 20px;
}

</style>
</head>
<body>
	<%
		String loginid = (String) session.getAttribute("loginid");
		if (loginid == null) {
			out.println("<p><a href = 'aniamlhospital/login.jsp'> 로그인</a> 부터 하세요.</p>");
		} else {
			out.println(loginid + "회원님의 페이지입니다.");
		}
	%>

</body>
</html>