<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String xxx = (String) request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<h1>Simple View MVC패턴 Model 1</h1>
		응답결과 : ${ result } = <%= xxx %><br>
		현재시간 : ${ now }<br>
		사용자ID : ${ user }<br>
	    사용자PW : ${ pass }<br>
	</div>
	
</body>
</html>