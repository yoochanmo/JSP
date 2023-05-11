<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- getAttributeNames() -->
	<h1>application 객체의 attributes</h1>
	<%
		Enumeration<String> app = application.getAttributeNames();
		while(app.hasMoreElements()){
			String name = app.nextElement();
			Object value = application.getAttribute(name);
	%>		
		<h4>application 객체의 속성 : <%= name %> : <%= value %></h4>
	
		<% 	
		}
	%>
	<hr />
	
	
	<h1>session 객체의 attributes</h1>
		<%
		session.setAttribute("xxx", "session..............");
		Enumeration<String> sess = session.getAttributeNames();
		while(sess.hasMoreElements()){
			String name = sess.nextElement();
			Object value = session.getAttribute(name);
	%>		
		<h4>session 객체의 속성 : <%= name %> : <%= value %></h4>
	
		<% 	
		}
	%>
	<hr />
	
	<h1>request 객체의 attributes</h1>
		<%
		request.setAttribute("yyy", "request.................");
		Enumeration<String> req = request.getAttributeNames();
		while(req.hasMoreElements()){
			String name = req.nextElement();
			Object value = request.getAttribute(name);
	%>		
		<h4>request 객체의 속성 : <%= name %> : <%= value %></h4>
	
		<% 	
		}
	%>
	<hr />
	
</body>
</html>