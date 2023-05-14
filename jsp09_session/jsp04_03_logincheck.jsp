<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String admin_id = (String)session.getAttribute("admin");
	boolean login_sucess = admin_id == null ? false : true;
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
	<h3><%= admin_id %></h3>
	<h3><%= login_sucess %></h3>
	<%
		if(login_sucess){
	%>
			<h4 class="bg-primary text-white"> 아이디 <%= admin_id %>로 로그인중입니다. </h4>
	<% 		
		}else{
	%>
		<h4 class="bg-primary text-white">로그인을 하지 않았잖니. </h4>
	<% 
		}
	%>
</body>
</html>