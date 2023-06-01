<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<title>글등록</title>
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
		<div class="jumbotron">
			<h3>게시판글쓰기</h3>
			<p>게시판글쓰기 페이지 입니다. 글을 작성해 주세요</p>
		</div>
		
		<form action="boardWrite.bo" method="post" class="form-group" name="boardform" 
				enctype="multipart/form-data">
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-user"></i></span></div>
				<input type="text" class="form-control" name="writer" id="writer" value="홍길동" required placeholder="board writer...">
			</div>
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-key"></i></span></div>
				<input type="password" class="form-control" name="pass" id="pass" value="1" required placeholder="password ...">
			</div>
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-clipboard"></i></span></div>
				<input type="text" class="form-control" name="subject" id="subject" value="<%= new java.util.Date() %>" required placeholder="subject ...">
			</div>
			<div class="form-group input-group">
				<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-comment-dots"></i></span></div>
				<textarea name="content" id="content" cols="40" rows="15" class="form-control" required placeholder="content ...">글내용...</textarea>
			</div>

			<div class="form-group input-group">
				<div class="form-group input-group">
					<div class="input-group-prepend"><span class="input-group-text"><i class="fas fa-file-alt"></i></span></div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="file" id="file"/>
						<label for="board_file" class="custom-file-label" style="text-algin:left">업로드할 파일을 선택하세요!!!</label>
					</div>
				</div>
				
				<div class="form-group mt-md-5">
					<input type="reset" class="btn btn-success float-right login-btn ml-sm-2" value="새로고침"/>
					<input type="submit" class="btn btn-success float-right login-btn" value="글등록"/>
				</div>
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















