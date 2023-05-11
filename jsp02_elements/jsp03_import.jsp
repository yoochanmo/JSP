<%@page import="java.util.Calendar"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% // 스크립트릿 - 자바코드작성부분 %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Calendar Cal = Calendar.getInstance(); %>
오늘은
<!-- 표현식(10 + 10) or 자바소스에서 선언된 변수.... -->
<%= Cal.get(Calendar.YEAR) %> 년
<%= Cal.get(Calendar.MONTH) + 1 %> 월
<%= Cal.get(Calendar.DATE) %> 일
<!-- import속성을 사용하지 않을 경우에는 클래스이름은 풀네임으로 지정해야 한다.  -->
<br />
<% java.util.Date now = new java.util.Date(); %>
오늘은 <%= now %> 입니당.
</body>
</html>