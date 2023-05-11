<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- html 주석  -->
<%-- jsp 주석 --%>
<!--
	response 기본객체(HttpServletResponse)
	
	response객체는 request객체와 반대기능을 가지고 있다. request객체가 웹브라우저로 전송한 요청정보를 저장하고 있다면 response객체는 웹서버가
	웹브라우저로 전송한 응답정보를 저장하고 있다.
	
	A . response 객체의 응답관련 메서드
	
		1 . addDateHeader(String name, long date)	: name이라는 헤더에 long타입의 date값을 추가
		2 . addHeader(String name, String value)	: name이라는 헤더에 String타입의 값을 추가
		3 . addIntHeader(String name, int value)	: name이라는 헤더에 int 타입의 값을 추가
		4 . setHeader(String name, String value)	: name이라는 헤더에 String타입의 값을 설정(수정)
		5 . setIntHeader(String name, int value)	: name이라는 헤더에 int타입의 값을 지정
		6 . setDateHeader(String name, long value)	: name이라는 헤더에 long타입의 date값을 지정
		
		
	B . 웹브라우저에 Cache제어 관련 응답헤더
	
		jsp를 비롯한 웹애플리케이션을 개발할 경우 새로운 내용을 DB에 추가했음에도 웹브라우저에 출력되는 내용이 변경되지 않는 경우가 있는데 그 이유중 하나가 웹브라우저가
		서버에서 생성된 결과를 출력하지 않고 캐시에 저장된 데이터를 출력하기 때문이다.
		
		캐시(cache)란? 웹브라우저가 WAS(Wem Application Sever)에 jsp실행을 요청하고 잠시 뒤에 동일한 jsp를 요청하는 경우에 첫 번째 요청과 두 번째 요청사이에 결과값이 동일할 경우에
		불필요한 응답결과를 반복해서 요청하는 셈이 된다. 캐시는 이렇게 동일한 데이터를 중복해서 로딩하지 않도록 할 경우에 사용한다, 웹브라우저는 첫 번재 요청시에 응답결과를
		로컬PC의 임시저장 소인 캐시에 저장한다.
		
		이후 동일한 URL에 대한 요청이 있을 경우에 WAS에 접근하지 않고 로컬PC에 저장된 응답결과를 사용한다. 캐시에 보관된 데이터를 사용할 경우 서버에 접근하지 않기 때문에
		훨신 빠른 결과를 웹브라우저에 출력할 수 있게 된다.
		
		따라서 , 변경사항이 발생하지 않았을 경우 jsp의 응답결과나 이미지, 정적인 html등은 캐시에 보관함으로써 웹브라우저의 응답속도를 향상 시킬 수가 있다.
		
	C . response객체가 제공하는 헤더추가 메서드
		
		1 . Cash-Control : 이 헤더의 값을 "no-cache"로 지정하더라도 응답정보를 캣에 저장할 수 있다.
						   캐시에 저장하지 않도록 하려면 헤더의 값에 "no-store"를 추가한다.
		2 . Pragma       : 이 헤더값을 "no-cache"로 지정하면 웹브라우저는 캐시를 사용하지 않는다. 
		3 . Expires      : 응답결과의 완료시간을 지정한다.
		
		
	D . 리다이렉트(redirect)
	
		response객체가 가장 많이 사용하는 기능중 하나이다. 리다이렉트는 웹서버가 웹브라우저에게 다른 페이지로 이동하라고 응답하는 기능이다.
		response객체는 sendRedirect(String location)메서드를 이용해서 웹브라우저가 다른 페이지로 이동하도록 지시를 할 수 있다.
  -->
  
  <%
  	String id = request.getParameter("id");
  	if(id != null && id.equals("hong")){
  		response.sendRedirect("jsp09_parameters.jsp");
  	}else{
  		%>
  <!DOCTYPE>
  <html>
  <head>
  	<meta charset="UTF-8" />
  	<title>Document</title>
  </head>
  <body>
  	<h1 style="background-color:red; color:white"> 잘못된 아이디 입니다.</h1>
  </body>
  </html>
  		
<%   		
  	}
  %>
