<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 
	JSPF(JSP Fragment)
	
	include 디렉티브를 통해 다른 jsp파일에서 데이터를 전달받을 수 있다. 이 경우 jsp파일의 경우
	일반 jsp파일과 구분하기 위해서 통상적으로 확장자를 jspf로 사용한다.
	
	파일확장자를 jsp로도 사용할 수 있지만 JSP Fragment 즉, jsp파일의 소스코드조각파일을 의미한다.
	
	페이지 디렉티브에서 컨텐츠타입을 지정하고 있는데 이 것을 포함하는 파일일지라도 컨텐츠타입에 알맞게
	지정해야 올바른 결과를 얻을 수 있다.
 -->
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int number = 1000; %>
	<%@include file = "jsp06_include.jspf" %>
	<h3>jsp05_jspf.jsp의 변수 number의 값 = <%= number %></h3>
	<h3>jsp06_include.jspf의 변수 user_name의 값 = <%=user_name %></h3>
</body>
</html>