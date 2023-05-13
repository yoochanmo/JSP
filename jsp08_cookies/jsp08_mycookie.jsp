<%@page import="com.lec.cookie.MyCookie"%>
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
	<h1>사용자가 작성한 class로 쿠키생성하기</h1>
	<%
	  response.addCookie(MyCookie.createCookie("id", "hong"));
	  response.addCookie(MyCookie.createCookie("pw", "12345"));
	  response.addCookie(MyCookie.createCookie("name", "홍길동"));
	  response.addCookie(MyCookie.createCookie("pathxxx", "/jsp08_cookies/path1", "/jsp08_cookies", 60));
	%>
	<p>사용자기 작성한 MyCookie클래스로 cookie를 생성했습니다.</p>
</body>
</html>