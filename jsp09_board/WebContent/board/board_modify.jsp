<%@page import="com.lec.board.vo.BoardBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>글수정하기</title>
</head>
<body>

	<div class="container" align="center">
		<div class="jumbotron">
			<h3>게시글 수정하기</h3>
			<p>본인이 작성한 게시글을 수정하는 서비스입니다!</p>
		</div>

		<form action="boardModify.bo" method="post" enctype="multipart/form-data">
			<input type="hidden" name="bno" value="${board.getBno()}"/>

			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
				<input type="text" class="form-control" name="writer" id="writer" value="${board.getWriter()}" readonly>
			</div>
			
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-key"></i></span></div>
				<input type="password" class="form-control" name="pass" id="pass" required>
			</div>

			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-clipboard"></i></span></div>
				<input type="text" class="form-control" name="subject" id="subject" value="${board.getSubject()}">
			</div>
	
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-comment-dots"></i></span></div>
				<textarea class="form-control" name="content" id="content" rows="15" cols="40">${board.getContent()}</textarea>
			</div>
			
			<div class="form-group input-group">
				<c:choose>
					<c:when test="${!empty board.getFile()}">
						<c:set var="choose_file" value="${board.getFile()}"></c:set>
					</c:when>
					<c:otherwise>
						<c:set var="choose_file" value="업로드할 파일을 선택하세요!!!"></c:set>
					</c:otherwise>	
				</c:choose>
				<div class="form-group input-group">
					<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-file-alt"></i></span></div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="file" id="file"/>
						<label for="file" class="custom-file-label" style="text-algin:left">${choose_file}</label>
					</div>
				</div>
			</div>	
			
			<div class="form-group input-group">
				<input type="submit" class="btn btn-success float-right mr-sm-3" value="수정"/>
				<a href="javascript:history.go(-1)" class="btn btn-success float-right">이전</a>
			</div>	
		</form>
	</div>
	<script>
		$(".custom-file-input").on("change", function() {
			// var fileName = $(this).val();   // 전체파일명
			var fileName = $(this).val().split("\\").pop(); // only 파일명
			$(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		})
	</script>
</body>
</html>














