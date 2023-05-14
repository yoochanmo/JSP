<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>session 종료하기</h1>
	<%
		session.invalidate(); // 즉시
		//session.setMaxInactiveInterval(1); // 1분
	%>
	<p>session이 60초에 종료가 됩니다.</p>
	<h4>session id 	: <%= session.getId() %></h4>
	<h4>아이디 		: <%= session.getAttribute("id") %></h4>
	<h4>비밀번호 	: <%= session.getAttribute("pw") %></h4>
	<h4>이름 		: <%= session.getAttribute("name") %></h4>
	
</body>
</html>