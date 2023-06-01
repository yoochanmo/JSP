<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<title>글상세보기</title>
  	<style> 
  		.login-btn {
  			clear: black;
  			/* background-color: #FFC312; */
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
		<div class="jumbotron">
			<h3>글 상세내용 보기</h3>
		</div>
		
		<div class="form-group input-group">
			<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
			<input type="text" class="form-control" name="writer" id="writer" value="${board.getWriter()}" readonly>
		</div>
		
		<div class="form-group input-group">
			<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-clipboard"></i></span></div>
			<input type="text" class="form-control" name="subject" id="subject" value="${board.getSubject()}" readonly>
		</div>
		
		<div class="form-group input-group">
			<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-comment-dots"></i></span></div>
			<textarea class="form-control" name="content" id="content" rows="15" cols="40" readonly>${board.getContent()}</textarea>
		</div>
		
		<c:if test="${board.getFile() != null}">
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-file-alt"></i></span></div>
				<input type="text" class="form-control" name="file" id="file" value="${board.getFile()}" readonly>
			</div>			
		</c:if>
		<br />
		
		<div class="form-group input-group">
			<a href="boardModifyForm.bo?bno=${param.bno}" class="btn btn-success mr-sm-3">수정</a>
			<a href="boardDeleteForm.bo?bno=${param.bno}" class="btn btn-success mr-sm-3">삭제</a>
			<a href="boardReplyForm.bo?bno=${param.bno}" class="btn btn-success mr-sm-3">답변</a>
			<a href="boardList.bo" class="btn btn-success mr-sm-3">글목록</a>
		</div>
	</div>
</body>
</html>












