<jsp:useBean id="member" class="com.lec.member.Member" scope="request"></jsp:useBean>
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
	<div class="container">
		<h1>로그인(Java Beans 사용하기)</h1>
		<h3>id : <%= member.getId() %></h3>
		<h3>pw : <%= member.getPassword() %></h3>
		<h3>name : <%= member.getName() %></h3>
	</div>
	<hr />
	<h4>로그인성공</h4>
</body>
</html>