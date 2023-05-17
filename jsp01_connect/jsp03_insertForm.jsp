
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Class.forName("org.mariadb.jdbc.Driver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;	

String url = "jdbc:mariadb://localhost:3306/jspstudy";
String usr = "root";
String pwd = "12345";
String sql = "INSERT INTO member (id, password, name, email) VALUES (?, ?, ?, ?)" ;
%>
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
		<h1>회원등록하기</h1>
		
		<form action="jsp03_insertMember.jsp" method="post">
			<table class="table table-bordered table-dark table-hover">
					<td width="20%">아이디</td>
					<td><input type="text" name="id" class="form-control" size="30" value=""></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw" class="form-control" size="30" value=""></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" class="form-control" size="30" value=""></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" class="form-control" size="30" value=""></td>
				</tr>			
			</table>
			<input type="submit" class="btn btn-info mt-sm-2" value="회원등록하기"/>
			<input type="reset" class="btn btn-info mt-sm-2" />
		</form>
	</div>
</body>
</html>