<%@page import="java.net.URL"%>
<%@page import="java.io.InputStreamReader"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>application객체의 url정보를 이용해서 파일 읽기</h1>
	<h2>url.openStream() 메서드를 이용</h2>
	<%
	char[] cbuf = new char[128];
	int len = -1;
	String path = "/jsp04_object/jsp01_out.jsp";
	URL url = application.getResource(path);
	
	try(InputStreamReader isr = new InputStreamReader(url.openStream(),"utf-8")){
		while((len=isr.read(cbuf)) != -1){
			out.println(new String(cbuf,0,len));
		}
	}catch(Exception e){
		out.println("에러 : " + e.getLocalizedMessage());
	}
%>
</body>
</html>