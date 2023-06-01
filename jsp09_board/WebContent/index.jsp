<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">	
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<title>답변형게시판</title>
</head>
<body>
	<div class="container" align="center">
		<div class="jumbotron">
			<h3>답변형게시판</h3>
			<p>게시판관리페이지 입니다!! 글쓰기를 하려면 <strong class="text-danger">게시판글쓰기버튼</strong>을
			클릭하세요</p>
		</div>
		<a href="boardWriteForm.bo" class="btn btn-success mr-sm-2">게시판글쓰기</a>
		<a href="boardList.bo?p=1&f=writer&q=" class="btn btn-success mr-sm-2">게시판글 목록보기</a>
		<a href="index1.jsp" class="btn btn-success mr-sm-2">회원관리</a>
	</div>
</body>
</html>