<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<h3>jstl에서 제공하는 el 함수들!!!</h3>
	<c:set var="str1" value="JSTL의 functions 태그를 사용하는 방법"/>
	<c:set var="str2" value="사용"/>
	<c:set var="nums" value="1,2,3,4,5,6,7,8,9,10"/>
	
	<h5>
	<ul>
	<li>문자열의 길이 = ${fn:length(str1) }</li>
	<li>대문자  = ${fn:toUpperCase(str1) }</li>
	<li>소문자  = ${fn:toLowerCase(str1) }</li>
	<li>문자열추출(1)  = ${fn:substring(str1,3,7) }</li>
	<li>문자열추출(2)  = ${fn:substringAfter(str1,str2) }</li>
	<li>문자열추출(3)  = ${fn:substringBefore(str1,str2) }</li>
	<li>공백자르기  = ${fn:trim(str1) }</li>
	<li>문자열대체  = ${fn:replace(str1," ","%") }</li>
	<li>문자열위치  = ${fn:indexOf(str1,str2) }</li>
	<li>문자열시작여부  = ${fn:startsWith(str1,str2) }</li>
	<li>문자열시작여부  = ${fn:startsWith(str1,"JSTL") }</li>
	<li>문자열종료여부  = ${fn:endsWith(str1,"JSTL") }</li>
	<li>문자열포함여부  = ${fn:contains(str1,str2) }</li>
	<li>문자열포함여부  = ${fn:contains(str1,"JSTL") }</li>
	<li>문자열포함여부  = ${fn:contains(str1,"jstl") }</li>
	<li>문자열포함여부  = ${fn:containsIgnoreCase(str1,"jstl") }</li>
	<c:set var="num" value='${fn:split(nums, ",") }'/>
	${num }<br>
	<c:forEach var="n" items="${num }">
	${n },
	</c:forEach>
	<li>특수문자처리   = ${fn:escapeXml(str1) }</li>

	</ul>
	</h5>
</body>
</html>