<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="xxx" tagdir="/WEB-INF/tags"%>
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
	<h1>Tag파일로 제목태그를 출력하기</h1>
	<hr />
	<xxx:header title="제목속성이다" />
	<xxx:header title="제목속성이다" level="1"/>
	<xxx:header title="제목속성이다" level="2"/>
	<xxx:header title="제목속성이다" level="3"/>
</body>
</html>