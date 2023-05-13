<%@page import="java.net.URLDecoder"%>
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
	<h1>쿠키목록보기</h1>
	<%
		Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length>0){
		for(int i=0; i<cookies.length;i++){
			
		
	%>
		<%=cookies[i].getName()%> = <%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %><br>
	<% 
		}
	}else{
	%>
		<p class="danger">쿠키가 존재하지 않아요.</p>
	<%
	}
	%>
</body>
</html>