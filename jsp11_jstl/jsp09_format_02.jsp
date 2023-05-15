<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<fmt:setLocale value="ko"/>
<fmt:setBundle var="message" basename="resource.message"/>
<fmt:message bundle="${message }"key="TITLE" var="title"/>


<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
     <title>${title }</title>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${title }</h1>
		
	
		<fmt:message bundle="${message }"key="GREETING" />
		<c:if test="${!empty param.id }">
		<fmt:message bundle="${message }"key="USER">
		<fmt:param value="${param.id }"/>
		<fmt:param value="${param.age }"/>
		</fmt:message>
		</c:if>
	
</body>
</html>