<%@page import="com.lec.board.vo.BoardBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BoardBean board = (BoardBean) request.getAttribute("board");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
		integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
		crossorigin="anonymous"> 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>글삭제하기</title>
</head>
<body>

	<div class="container" align="center">
		<div class="jumbotron">
			<h3>게시글 삭제하기</h3>
		</div>
		
		<form action="boardDelete.bo">
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-key"></i></span></div>
				<input type="password" class="form-control" name="pass" id="pass" required>
			</div>
			
			<div class="form-group input-group">
				<input type="hidden" name="bno" value="${board.getBno()}"/>
				<input type="submit" class="btn btn-danger mr-sm-3" value="삭제"/>
				<input type="button" class="btn btn-success" value="이전" onclick="javascript:history.go(-1)"/>
			</div>
		</form>
	</div> 
</body>
</html>











