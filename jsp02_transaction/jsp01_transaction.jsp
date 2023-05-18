<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
	실습테이블
	
	create table item_master(
		id int(10) primary key,
		name varchar(30)
	);
	create table item_detail(
		id int(10) primary key,
		desciption varchar(100)
	);
 -->
 <%
 	// 정상 http://localhost:8088/jsp02_database/jsp02_transaction/jsp01_transaction.jsp?id=10
 	// 에러 http://localhost:8088/jsp02_database/jsp02_transaction/jsp01_transaction.jsp?id=10&err=????
 		int id = Integer.parseInt(request.getParameter("id"));
 		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = null;
		PreparedStatement stmt_master = null;
		PreparedStatement stmt_detail = null;
		ResultSet rs = null;	
		
		String url = "jdbc:mariadb://localhost:3306/jspstudy";
		String usr = "root";
		String pwd = "12345";
		
		Throwable force_exception = null;
		
		try{
			conn = DriverManager.getConnection(url, usr, pwd);
			conn.setAutoCommit(false);
			
			stmt_master = conn.prepareStatement("insert into item_master values(?,?)");
			stmt_master.setInt(1, id);
			stmt_master.setString(2, "품목코드_" + id);
			stmt_master.executeUpdate();
			
			// 강제로 exception 발생
			if(request.getParameter("err") != null){
				throw new Exception("사용자가 강제로 발생시킨 예외입니다.");
			}
			
			stmt_detail = conn.prepareStatement("insert into item_detail values(?,?)");
			stmt_detail.setInt(1, id);
			stmt_detail.setString(2, "품목상세설명_" + id);
			stmt_detail.executeUpdate();
			
			conn.commit();
		}catch(Throwable e){
			if(conn != null){
				try{conn.rollback();} catch(Exception e1) { out.println(e1.getMessage() + "<br>");}
				
			}
			force_exception = e;
			out.println(e.getMessage());
		}finally {
			try {
				if(rs != null) rs.close();
				if(stmt_master != null) stmt_master.close();
				if(stmt_detail != null) stmt_detail.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				// dummy
			}
		}
		
 %>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>