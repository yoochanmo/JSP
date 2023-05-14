<%@page import="com.lec.el.Thermometer"%>
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
	<%
		Thermometer thermometer = new Thermometer();
		request.setAttribute("t", thermometer);
	%>
	
	<h1>온도변환기(v1.0)</h1>
	${t.getInfo()}<br>
	${t.getXxx() }<br>
	${t.setCelsius("서울",25.6) }<br>
	<h1>서울은 현재 섭씨 ${t.getCelsius("서울")}도 존나 뜨겁습니다.<br></h1>
	서울은 현재 화씨 ${t.getFahrenheit("서울")}도 존나 뜨겁습니다.<br>
</body>
</html>