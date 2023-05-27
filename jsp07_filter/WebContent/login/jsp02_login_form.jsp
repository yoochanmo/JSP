<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
		integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
		crossorigin="anonymous">  
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	<style>
  		.login-btn {
  			clear: black;
  			background-color: #FFC312;
  			width: 100px;
  		}
  		.login-btn:hover {
  			clear: white;
  			background-color: black;  		
  		}
  		.input-group-prepend span {
  			color: black;
  			border-left-color: #FFC312;
  			width: 40px;
  			border: 0 !important;
  		}
  	</style>
</head>
<body>
	<div class="container" align="center">
	
		<h3 class="mt-md-5 mb-md-5">로그인</h3>
		<form action="<%= request.getContextPath()%>/login/jsp03_login_check.jsp" method="post">
			<div class="input-group form-group">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fas fa-user"></i></span>
				</div>
				<input type="text" class="form-control" placeholder="user id ...">
			</div>
			<div class="input-group form-group">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fas fa-key"></i></span>
				</div>
				<input type="password" class="form-control" placeholder="password ...">
			</div>
			
			<div class="row align-items-center remember">
				<input type="checkbox" class="ml-lg-5 mr-sm-3" > Remember Me
			</div>
			
			<div class="form-group">
				<input type="submit" class="btn btn-primary float-right login-btn" value="login">
			</div>
		</form>
	</div>
</body>
</html>



























