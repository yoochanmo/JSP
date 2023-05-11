<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
		JSP파일의 기본 문자셋은 현재 UTF-8로 설정되어 있지만 응답되는 문자셋은 기본적으로 ISO-8859-1로 설정되어 있기 때문에 웹브라우저에서는
		한글이 깨져서 출력된다. 한글이 깨지는 것을 방지하기 위해서는 문자셋을 일치시켜야 한다.
  -->
  	<h2>현재시간은 <%= new java.util.Date() %></h2>
</body>
</html>