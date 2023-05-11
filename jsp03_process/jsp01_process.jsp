<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page buffer="none" autoFlush="true" %>
<!DOCTYPE html>
<!-- 
	A . jsp 처리과정
	
	1 . jsp에 서블릿이 없는 경우
		
		a . index.jsp파일로 부터 자바코드파일(servlet)을 생성(index_jsp.java)
		b . index_jsp.java파일을 컴파일해서 서블릿클래스파일을 생성(index_jsp.class)
		c . 서블릿에 웹브라우저의 요청을 전달(클라이언트의 request(파라미터값 포함)을 전송
		d . 서블릿처리결과를 웹서버에서 클라이언트로 응답결과를 생성
		e . response객체를 클라이언트(웹브라우저)에 전달.
		
	2 . jsp에 서블릿이 있는 경우
	
		a . 서블릿에 웹브라우저의 요청을 전송(클라이언트의 request(파라미터값 포함)를 전송
		b . 서블릿처리결과를 웹서버에서 클라이언트로 응답결과를 생성
		c .  response객체를 클라이언트(웹브라우저)에 전달.
	
	B . 출력buffer와 응답
	
		jsp페이지에는 응답결과를 곧 바로 웹브라우저에 전송하는 것이 아니라 버퍼(buffer)에
		임시로 저장을 했다가 buffer가 꽉차면 한번에 웹브라우저에 전송한다. 이렇게 버퍼를
		이용하는 장점은
		
		a . 데이터 전송 성능의 향상
		b . jsp실행도중에 buffer를 비우고 새로운 내용을 저장
		c . buffer가 다 차기 전에 응답헤더 정보변경이 가능
		
	C . 플러쉬(Flush)
		
		버퍼가 다 차 있을 때 버퍼에 쌓인 데이터를 실제로 전송해야 하는데 flush란 buffer에 데이터가 다 차지 않았을 경우 데이터를 전송한 후에
		버퍼를 비우는 것을 말한다.
		
		jsp에서 page디렉티브에 autoFlush속성이 있다. 이 속성이 true일 경우 버퍼가 다 차있을 경우 버퍼의 데이터를 전송, flush를 하고 버퍼가 다 찼을 경우
		exception을 발생시키고 작업을 중단시킨다.
		
		autoFlush속성 이외에 buffer속성에는 buffer크기를 지정할 수 있다. 만약, 속성을 none로 지정한다면 jsp가 출력하는 내용을 즉시 웹브라우저에 전송하기 때문에
		제약사항이 있다.
		
		제약사항
		a . < jsp:forward> 기능을 사용할 수 없다.
		b . 즉시 전송하기 때문에 출력한 내용을 취소할 수가 없다.
 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for(int i=0; i<1000; i++){
	%>
			1234567890
		<%	
		}
	%>
</body>
</html>