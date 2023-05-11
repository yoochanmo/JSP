<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 포스트방식으로 할때는 리퀘스트 setCharacterEncoding 설정해줘야함  -->
	<form action="jsp09_parameters_view.jsp" method="post">
			이름 : <input type = "text" name = "name" size = "10" value="홍길동"/><br>
			주소 : <input type = "text" name = "addr" size = "50" value="조선 한양 피맛골"/><br>
			취미 : <input type = "checkbox" name = "hobbies"  value="독서"/>독서
					<input type = "checkbox" name = "hobbies"  value="음악"/> 음악
					<input type = "checkbox" name = "hobbies"  value="운동"/> 운동
					<input type = "checkbox" name = "hobbies"  value="등산"/>등산<br /> 
					<input type="submit"  value="전송"/>
	</form>
</body>
</html>