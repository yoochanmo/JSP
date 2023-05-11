<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<!--
	2 . pageContext 기본객체
	
	1) jsp파일 하나당 한 개씩 존재하는 기본객체로서
	
		a . 기본객체구하기
		b . 속성처리하기
		c . 페이지흐름제어하기
		d . 에러데이터처리하기
		
	2) 관련메서드
	
		a . getRequest()   		: request객체 구하기
		b . getResponse() 		: response객체 구하기
		c . getSession()   		: session객체 구하기
		d . getServletContext 	: application객체 구하기
		e . getServletConfig()  : config객체 구하기
		f . getOut()            : out객체구하기
		g . getPage()           : page객체 구하기
		h . getException()      : exception객체 구하기 
			-- exception객체를 사용하려면 jsp페이지가 error page라고 선언해야 한다.
			-- 선언방법은 페이지디렉티브로 isErrorPage = "true"로 선언한다.
			-- 만약, exception객체가 null일 경우 예외가 발생한다.
  -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	request :<%= request %> = <%= request.toString() %> = <%= pageContext.getRequest() %> <br>
	response : <%= response %> = <%= response.toString() %> = <%= pageContext.getResponse() %> <br>
	session :  <%= session %> = <%= session.toString() %> = <%= pageContext.getSession() %> <br>
	application :  <%= application %> = <%= application.toString() %> = <%= pageContext.getServletContext() %> <br>
	config :  <%= config %> = <%= config.toString() %> = <%= pageContext.getServletConfig( )%> <br>
	out :  <%= out %> = <%= out.toString() %> = <%= pageContext.getOut() %> <br>
	<%--
		 exception :  <%= exception %> = <%= exception.toString() %> = <%= pageContext.getException() %> <br>
	 --%>
</body>
</html>