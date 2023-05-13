<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<!-- 
		실제 도메인이 없기 때문에 localhost로는 테스트를 할 수가 없다.
		도메인과 관련된 테스트를 하려면 실제 웹서버가 있어야 하지만 
		가상의 도메인을 설정하기 위해 windows/system
	  -->
	<h1>쿠키생성(domain)</h1>
	<%
		Cookie cookie1 = new Cookie("id", "sonny");
		cookie1.setDomain("anonymous.com");
		response.addCookie(cookie1);
		
		
		Cookie cookie2 = new Cookie("xx", "쿠키만 사용");
		response.addCookie(cookie2);
		
		Cookie cookie3 = new Cookie("invalid", "유효하지 않은 쿠키");
		cookie1.setDomain("www.daum.net");
		response.addCookie(cookie3);
		
	%>
	
	<%= cookie1.getName() %> = <%= cookie1.getValue() %>[<%= cookie1.getDomain() %>]
	<%= cookie2.getName() %> = <%= cookie2.getValue() %>[<%= cookie2.getDomain() %>]
	<%= cookie3.getName() %> = <%= cookie3.getValue() %>[<%= cookie3.getDomain() %>]
</body>
</html>