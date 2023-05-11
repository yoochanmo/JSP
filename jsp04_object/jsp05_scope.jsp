<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	A . JSP의 영역(scope)
	
		1 . page
		
			하나의 jsp페이지마다 사용되는 영역이다. page영역은 한번의 클라이언트 요청에 대해서
			하나의 jsp페이지를 메모리영역으로 한다. 웹부라우저의 요청이 들어오묜 jsp페이지를 
			실행하는데 이때 jsp페이지를 실행하는 범위가 page영역이다. 이 영역은 pageContext객체의 영역이다.
			
			
		2 . request
		
			하나의 http요청을 처리할 때 사용되는 영익이다. request영역은 웹브라우저의 요청과 관련이 있다.
			웹브라우저의 주소창에 url을 입력하거나 링크를 클릭해서 페이지를 이동할 때 웹브라우저가 웹서버에
			전송하는 요청이 하나의 request영역이다.
			
			이 영역은 웹브랑우저가 요청할 때마다 새로운 request영역이 생성된다. page영역은 jsp한 개의 페이지영역만 포함되는데에
			비해 request 영역은 하나의 요청을 처리하는 데 사용되는 모든 jsp페이지를 포함한다. 이 영역은 request영역이다.
			
			
		3 . session
		
			하나의 웹브라우저와 관련된 영역으로서 session영역은 웹브라우저와 관련된 영역이다.
			session이 생성되면 하나의 웹브라우저와 관련된 모든 요청은 하나의 session영역에 포함되며
			이 영역은 session객체의 영역이다.
			
			
		4 . application
		
			하나의 웹애플리케이션과 관련된 영역으로 application영역은 웹애플리케이션과
			관련된 전체 영역을 의미하고 application객체가 사용하는 영역이다.
			
	
	B . JSP기본객체의 속성(attribute)
	
		4개의 기본객체는 각각의 속성을 갖는데 각 기본객체가 존재하는동안 기본객체의 속성을
		사용할 수 있다. jsp기본객체 속성은 jsp사이에서 정보를 교환하거나 공유하기 위한 목적으로 사용한다.
		속성은 key와 value의 형태를 갖는데 4개의 기본객체는 서로 다른 이름을 갖는 속성을 여러개 저장할 수 있다.
		
		JSP기본객체의 속성관련 메서드
		
		a . setAttribute(String name, Object value) : 각각의 영역에 해당하는 속성과 값을 지정
		b . getAttribute(String name)               : 각각의 영역에 저장되어있는 속성을 이용 값을 읽기
													  없으면 null을 리턴
		c . removeAttribute(String name)			: 각각의 영역에 저장되어 있는 속성을 삭제
		d . getAttbuteNames() 						: 각 영역의 모든 속성목록을 Enumeration타입으로 리턴
													  (pageContext객체는 제외)
  -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.print("<h3> request 영역 아이디 = " + id + "</h3>");
		out.print("<h3>request 영역 비밀번호 = " + pw + "</h3>");
		out.print("<hr>");
		
		request.setAttribute("id", "scott");
		request.setAttribute("pw", "tiger");
		
		out.print("<h3> request 영역 아이디 = " + request.getAttribute("id") + "</h3>");
		out.print("<h3>request 영역 비밀번호 = " + request.getAttribute("pw") + "</h3>");
		out.print("<hr>");
		
		out.print("<h3> application 영역의 아이디 = " + application.getAttribute("id") + "</h3>");
		out.print("<h3> application 영역의 비밀번호 = " + application.getAttribute("pw") + "</h3>");
		out.print("<hr>");
		
		application.setAttribute("id", "hong");
		application.setAttribute("pw", "12345");
		
		out.print("<h3> application 영역의 아이디 = " + application.getAttribute("id") + "</h3>");
		out.print("<h3> application 영역의 비밀번호 = " + application.getAttribute("pw") + "</h3>");
		out.print("<hr>");
		
		//application.removeAttribute("id");
	%>
</body>
</html>















