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
	 <style>
       
        .change-color {
            animation: colorChange 1s infinite alternate;
        }
        
        @keyframes colorChange {
            from {
                color: blue;
            }
            to {
                color: yellow;
            }
        }
         .hover-color:hover {
            background-color: yellow;
            color : black;
        }
         .table-bordered {
            border: 2px solid black;
        }
         .table-bordered {
            border: 2px solid black;
        }
    </style>
</head>
<body>
	<div class="container" align="center">
		<h1 class="change-color">게시판목록조회</h1>
		<div class="row">
			<table class="table table-bordered table-hover">
				<tr>
					<th>BNO(수정)</th>
					<th>SUBJECT(상세)</th>
					<th>CONTENT</th>
					<th>WRITER</th>
				</tr>
				<%
					Class.forName("org.mariadb.jdbc.Driver");
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;				
					
					String url = "jdbc:mariadb://localhost:3306/jspstudy";
					String usr = "root";
					String pwd = "12345";
					String sql = "select * from board order by bno desc";
					
					try {
						conn = DriverManager.getConnection(url, usr, pwd);
						stmt = conn.createStatement();
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							String bno = rs.getString("bno");
							String subject = rs.getString("subject");
							String content = rs.getString("content");
							String writer = rs.getString("writer");
			%>
							<tr>
								<td><a href="updateBoard.jsp?bno=<%= bno %>"><%= bno %></a></td>
								<td><a href="selectBoard.jsp?bno=<%=bno%>"><%= subject %></a></td>
								<td><%= content %></td>
								<td><%= writer %></td>
								<td><a href="deleteBoard.jsp?bno=<%= bno %>" class="btn btn-danger hover-color">삭제</a></td>
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
			<a href="insertBoard.jsp" class="btn btn-primary mt-sm-2 hover-color">회원등록</a>
		</div>
		
	</div>
</body>
</html>