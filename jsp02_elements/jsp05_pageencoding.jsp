<%-- <%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<!--
	JSP페이지의 인코딩과 pageEncoding속성
	
	JSP파일에서 문자셋을 잘못 지정할 경우 응답결과페이지의 문자들이 깨져서 출력된다.
	tomcat과 같은 컨테이너(웹서버)는 jsp를 분석하는 과정(~jsp.java파일생성)에서 어떤 인코딩을 이용해서
	코드를 작성했는지를 검사하고 그 결과를 선택한 문자셋을 이용해서 jsp페이지의 문자를 읽어 오게 된다.
	웹컨테이너가 jsp페이지를 읽을 때 사용할 문자셋을 결정하는 과정은 아래와 같다.
	
	1 . 파일 BOM으로 시작하지 않을 경우
	
		1) 기본 인코딩을 이용해서 파일을 처음 부터 읽고 page디렉티브의 pageEncoding속성을 검색
		2) pageEncoding값이 있을 경우 파일을 읽을 때 해당 속성값을 문자셋으로 사용
		3) pageEncoding값이 없을 경우 contentType의 charset속성값을 사용
		4) 상기 모두 해당 되지 않을 경우에는 기본문자셋인 ISO-8859-1 문자셋을 사용
		
	2 . 파일 BOM으로 시작하는 경우
		
		1) BOM을 이용해서 결정된 인코딩을 이용해서 파일을 읽고 page디렉티브의 pageEncoding속성을 검색
		2) 만약 pageEncoding속성값과 BOM을 이용해서 결정된 인코딩문자셋이 다를 경우 에러가 발생
		
	3 . 1 or 2번 과정을 통해서 결정된 문자셋을 jsp소스코드를 읽는다.
  -->
현재시간 : <%= new java.util.Date()%>