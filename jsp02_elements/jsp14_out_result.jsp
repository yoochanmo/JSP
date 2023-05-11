<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 실습 아래와 같이 출력하게  -->
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("userid");
		String pw = request.getParameter("userpw");
	
	%>
	아이디 : <%out.print(id); %>
	비밀번호 : <%out.print(pw); %>
</body>
</html>