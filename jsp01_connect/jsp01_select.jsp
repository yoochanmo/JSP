<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<h1>MariaDB user ID = <%= id %></h1>
		<%
			Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			String url = "jdbc:mariadb://localhost:3306/jspstudy";
			String usr = "root";
			String pwd = "12345";
			String sql = "select * from member where id = '" + id + "'";
			
			try {
				conn = DriverManager.getConnection(url, usr, pwd);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				if(rs.next()) {
		%>
					<table class="table table-hover" border="1">
						<tr>
							<td>아이디</td>
							<td><%= rs.getString("id") %></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><%= rs.getString("password") %></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><%= rs.getString("name") %></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><%= rs.getString("email") %></td>
						</tr>
					</table>	
		<%				
				} else {
		%>
					<h3 class="bg-danger text-white"><%= id %>는 찾지 못했습니다!!</h3>
		<%
				}
			} catch(Exception e) {
		%>
				에러 : <%= e.getMessage() %>
		<%			
			} finally {
				try {
					if(rs != null) rs.close();
					if(stmt != null) stmt.close();
					if(conn != null) conn.close();
				} catch(Exception e) {
					// dummy
				}
			}
		%>
	</div>	
</body>
</html>