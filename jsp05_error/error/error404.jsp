<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!--
	 isErrorPage="true"로 지정된 페이지는 exception 내장객체를 사용할 수 있다.
	 
	 서버에서 응답되는 상태코드(http status)
	 
	 200 : 요청이 정상적으로 성공
	 307 : 임시로 페이지를 리다이렉트로 처리
	 400 : 클라이언트가 잘못된 요청을 했을 경우
	 401 : 접근이 허용되지 않은 페이지에 접근했다는 코드
	 404 : 요청한 페이지가 없을 경우
	 405 : 요청한 메서드(get, post, head등 전송방식)을 허용하지 않을 경우
	 500 : 서버 내부에서 에러가 발생한 경우
	 503 : 서버가 서비스를 제공하지 못할 경우
	 
	 http status 코드 : 디벨로퍼 모질라 홈페이지 참고
  -->
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class = "bg-danger text-white">요청하신 페이지를 찾지 못했슴.</div>
</body>
</html>