<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<h1 align = "center">회원</h1>
<table border="1" bordercolor="blue" align = "center">
<tr bgcolor="skyblue" >
<td>아이디</td>
<td>비밀번호</td>
<td>연락처</td>
<td>성별</td>
<td>취미</td>
<td>가입인사</td>

</tr>
<tr>
<td><%= request.getParameter("userid") %></td>
<td><%= request.getParameter("userpw") %></td>
<td><%= request.getParameter("phone") %></td>
<td><%= request.getParameter("gender") %></td>
<td>
<%
	String[] hobbies = request.getParameterValues("hobbies");
	if(hobbies != null){
		for(String hobby:hobbies){
			%>
		<%= hobby %>
			<%
		}
	}
	%></td>
<td><%= request.getParameter("hello") %></td>
</tr>
</table>
</head>
<body>




</body>
</html>