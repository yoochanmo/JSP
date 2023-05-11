<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	JSP에서 사용하는 기본객체의 영역(scope)
	
	A . 기본객체
	
	1 . request(javax.servlet.http.HttpServletRequest) : 클라이언트의 요청정보를 저장
	2 . response(javax.servlet.http.HttpServletResponse) : 웹서버의 응답정보를 저장
	3 . out(javax.servlet.jsp.JspWriter) : jsp페이지의 생성결과를 출력할 때 사용하는 출력문자스트림
	4 . pageContext(java.servlet.jsp.PageContext) : jsp페이지에 대한 정보를 저장
	5 . session(javax.servlet.http.HttpSession) : HTTP세션정보를 저장
	6 . application(javax.servlet.jsp.ServletContext) : 웹애플리케이션에 대한 정보를 저장
	7 . page(java.lang.Object) : jsp페이지를 구현한 자바클래스의 인스턴스(객체)
	8 . config(javax.servlet.ServletConfig) : jsp페이지에 대한 설정정보를 저장
	9 . exception(java.lang.Throwable) : Exception객체, 애레페이지라고 정의된 페이지에서만 사용가능
  -->
  <!--
  	1 . out 기본객체
  	
  	out객체는 웹브라우저에 데이터를 전송하는 출력스트림으로서 jsp가 생성한 데이터를 웹페이지에 출력한다.
  	
  	1) out객체의 출력메서드
  		
  		a . print() 	: 데이터를 출력(줄바꿈을 하지 않음)
  		b . println()   : 데이터를 출력후에 줄바꿈
  		c . newLine()   : 줄바꿈
  		d . write()     : dom태그를 html로 출력
  		
  	2) out객체의 buffer관련메서드
  		
  		a . getBufferSize()  : 버퍼크기를 리턴
  		b . getRemaining()   : 버퍼의 잔량을 리턴
  		c . clear()          : 버퍼전체를 비움, 이미 flush가 되어 있다면 Exception발생
  		d . clearBuffer()    : 버퍼전체를 비움, 이미 flush가 되어 있다면 Exception발생하지 않음
  		e . flush()          : 버퍼를 flush 처리
  		f . isAutoFlush()    : 자동 flush여부를 boolean으로 리턴
  		
  	
  	
    -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% out.print("<h1>안녕하세요? out 기본객체입니다.</h1>"); %>
	<% out.print("안녕하세요"); %>
	<% out.print("반갑"); %>
	
	<h3>out 기본객체의 buffer 관련 메서드</h3>
	<h4>buffer의 크기 : <%= out.getBufferSize() %></h4>
	<h4>buffer의 잔량 : <%= out.getRemaining() %></h4>
	<h4>AutoFlush 여부 : <%= out.isAutoFlush() %></h4>
	
</body>
</html>