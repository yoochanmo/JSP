<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<h1>회원목록조회</h1>
		<div class="row">
			<table class="table table-bordered table-hover">
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>삭제</th>
				</tr>
				<%
					Class.forName("org.mariadb.jdbc.Driver");
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;				
					
					String url = "jdbc:mariadb://localhost:3306/jspstudy";
					String usr = "root";
					String pwd = "12345";
					String sql = "select * from member order by id desc";
					
					try {
						conn = DriverManager.getConnection(url, usr, pwd);
						stmt = conn.createStatement();
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							String id = rs.getString("id");
							String pw = rs.getString("password");
							String name = rs.getString("name");
							String email = rs.getString("email");
			%>
							<tr>
								<td><a href="jsp02_updateForm.jsp?id=<%= id %>"><%= id %></a></td>
								<td><%= pw %></td>
								<td><%= name %></td>
								<td><%= email %></td>
								<td><a href="jsp04_deleteForm.jsp?id=<%= id %>" class="btn btn-danger">삭제</a></td>
							</tr>
			<%		
						}
					} catch(Exception e) {
						out.println("<h3 class='bg-danger text-white'>DB접속실패!!</h3><br>" 
								+ e.getMessage());		

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
			</table>
			<a href="jsp03_insertForm.jsp" class="btn btn-primary mt-sm-2">회원등록</a>
		</div>
		
	</div>
</body>
</html>