<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	<h3>1 . formatNumber</h3>
	<c:set var="price" value="12345"/>
	<fmt:formatNumber value="${price }"  type="number"/><br>
	number: <fmt:formatNumber value="${price }"  type="number"/><br>
	currency: <fmt:formatNumber value="${price }"  type="currency"/><br>
	currency: <fmt:formatNumber value="${price }"  type="currency" currencySymbol="$"/><br>
	groupingUsed: <fmt:formatNumber value="${price }"  type="currency" currencySymbol="$" groupingUsed="false"/><br>
	pattern: <fmt:formatNumber value="${price }"  type="currency" currencySymbol="$" pattern="000000.00"/><br>
	<hr />
	
	<h3>2 . formatDate</h3>
	<c:set var="now" value="<%=new Date() %>"/>
	${now }<br>
	default : <fmt:formatDate value="${now }" type="date"/><br>
	full : <fmt:formatDate value="${now }" type="date" dateStyle="full"/><br>
	short : <fmt:formatDate value="${now }" type="date" dateStyle="short"/><br>
	time : <fmt:formatDate value="${now }" type="time" /><br>
	both : <fmt:formatDate value="${now }" type="both" /><br>
	both-full : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br>
	pattern : <fmt:formatDate value="${now }" pattern="hh:mm" /><br>
	pattern-a : <fmt:formatDate value="${now }" pattern="a hh:mm:ss" /><br>
	pattern-z : <fmt:formatDate value="${now }" pattern="z a hh:mm:ss" /><br>
	<hr />
	
	<h3>3 . timeZone</h3>
	<fmt:timeZone value="America/Dominica">
	<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br>
	<fmt:formatDate value="${now }" pattern="z a hh:mm:ss" /><br>
	</fmt:timeZone>
	<hr />
	
	<h3>4 . timeZone 목록</h3>
	<ul>
		<c:forEach var="tz" items="<%= java.util.TimeZone.getAvailableIDs() %>">
		<li>${tz }</li>
		</c:forEach>
	</ul>
</body>
</html>