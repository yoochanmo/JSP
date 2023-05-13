<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
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
	<h1>쿠키수정하기~</h1>
	<%
		Cookie cookie = null;
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("name")){
					cookie = new Cookie("name",URLEncoder.encode("손흥민","utf-8"));
					response.addCookie(cookie);
				}
			}
			
		}
	%>
	<h2>name의 쿠키값(홍길동)을 손흥민으로 변경~</h2>
	<h3><%= cookie.getName() %> = <%= cookie.getValue() %></h3>
	<h3><%= cookie.getName() %> = <%= URLDecoder.decode(cookie.getValue(),"utf-8") %></h3>
</body>
</html>