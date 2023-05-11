<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
	request 기본객체(HttpServeltRequest)
	
	request 기본객체는 jsp페이지에서 가장많이 사용되는 객체로서 웹브라우저의 요청과 관련이 있는 객체이다. 웹브라우저에서
	웹사이트주소를 입력하면 웹브라우저는 해당 주소의 웹서버에 연결한 후 요청정보를 전송하는데 이 요청 정보를 웹서버에 전달하는 객체가
	request객체이다.
	
	A . request객체가 제공하는 기능
	
		1 . 클라이언트(웹브라우저)와 관련된 정보
		2 . 서버와 관련된 정보
		3 . 클라이언트가 전송한 요청파라미터정보(http://localhost:8088/login?id=honng&pw=12345)
		4 . 클라이언트가 전송한 요청헤더정보(http규약에 따른 정보등..)
		5 . 클라이언트가 전송한 쿠키정보
		6 . 속성처리정보
		
	B . request객체의 요청파라미터 관련 메서드
		
		1 . getParameter(String name) : name인 파라미터의 값을 리턴, 없으면 null
		2 . getParameterValues(String name) : name인 파라미터의 값을 배열로 리턴, 없으면 null
		3 . getParameterNames() : 웹브라우저가 전송한 파라미터의 이름목록을 배열로 리턴, 없으면 null
		4 . getParameterMap() : 웹브라우저가 전송한 파라미터이름과 값을 Map타입으로 리턴
		
	C . request객체의 요청헤더정보 관련 메서드
	
		1 . getHeader(String name) : 지정한 name의 헤더값을 리턴
		2 . getHeaders(String name) : 지정한 name의 헤더목록을 리턴
		3 . getHeaderNames(String name) : 모든 헤더이름을 리턴
		4 . getIntHeader(String name) : 지정한 헤더의 값을 정수값으로 리턴
		5 . getDateHeader(String name) : 지정한 헤더의 값을 일시값으로 리턴
		
	D . request객체의 메서드
	
		1 . getRemoteAddr() : 웹서버에 연결한 클라이언트의 IP 주소
		2 . getContentLength() : 클라이언트가 요청한 정보의 총 길이
		3 . getCharacterEncoding() : 클라이언트가 요청정보를 전송할 때 사용한 문자셋
		4 . getContentType() : 클라이언트가 요청정보를 전송할 때 사용한 컨텐츠(문서)타입정보
		5 . getProtocol() : 클라이언트가 요청한 protocol(http, ftp...)
		6 . getMethod()  : 웹브라우저가 정보를 전송할 때의 방식(get, post....)
		7 . getRequestURI() : 웹브라우저가 요청한 URL정보
		8 . getContextPath() : jsp페이지가 소속된 웹애플리케이션의 ContextPath정보
		9 . getSeverName() : 연결할 때 사용한 웹서버의 이름
		10 . getSeverPort() : 연결할 때 사용한 웹서버의 port번호
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request객체의 메서드</h1>
	<h3>1 . 클라이언트의 IP 주소	 : <%=request.getRemoteAddr() %></h3>
	<h3>2 . 요청정보의 길이 		 : <%=request.getContentLength() %></h3>
	<h3>3 . 요청정보의 인코딩	 	 : <%=request.getCharacterEncoding() %></h3>
	<h3>4 . 요청정보의 컨텐츠타입	 : <%=request.getContentType() %></h3>
	<h3>5 . 요청정보의 프로토콜		 : <%=request.getProtocol() %></h3>
	<h3>6 . 요청정보의 전송방식 	 : <%=request.getMethod() %></h3>
	<h3>7 . 요청정보의 URI  		 : <%=request.getRequestURI() %></h3>
	<h3>8 . 요청정보의 URL 			 : <%=request.getRequestURL() %></h3>
	<h3>8 . 요청정보의 컨텍스트경로	 : <%=request.getRequestURL() %></h3>
	<h3>9 . 요청정보의 서버이름	     : <%=request.getServerName() %></h3>
	<h3>10 . 요청정보의 서버포트번호 : <%=request.getServerPort() %></h3>

	
</body>
</html>