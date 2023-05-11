<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 선언부  -->
<%!
	// add(), sub(), mul(), div() */
	public int add(int a, int b) {return a + b;}
	public int sub(int a, int b) {return a - b;}
	public int mul(int a, int b) {return a * b;}
	public double div(int a, int b) {return a / b;}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	20 더하기 10 = <%= add(20, 10) %> 입니다<br />
	20 빼기 10 = <%= sub(20, 10) %> 입니다<br />
	20 곱하기 10 = <%= mul(20, 10) %> 입니다<br />
	20 나누기 10 = <%= div(20, 10) %> 입니다<br />
	<hr />
	<%
		int x = 20;
		int y = 10;
		int result1 = add(x,y);
		int result2 = sub(x,y);
		int result3 = mul(x,y);
		double result4 = div(x,y);
	
	%>
	<%= x %> + <%= y %> = <%=result1%> <br>
	<%= x %> - <%= y %> = <%=result2%> <br>
	<%= x %> * <%= y %> = <%=result3%> <br>
	<%= x %> / <%= y %> = <%=result4%> <br>

</body>
</html>