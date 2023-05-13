<%@page import="com.lec.cookie.MyCookie"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MyCookie cookies = new MyCookie(request);
%>
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
		<h3>로그인여부 확인</h3>
		<%
			if(cookies.exists("ADMIN")){
		%>
				<h4 class="bg-danger text-white">아이디 <%= cookies.getValue("ADMIN")%>로 로그인중입니다. </h4>
		<% 		
			}else{
		%>
				<h4>로그인을 하지 않은 상태입니다. 로그인을 해주세요.</h4>
		<%
			}
		%>
	</div>
</body>
</html>