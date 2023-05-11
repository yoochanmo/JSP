<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
	실습. 회원관리
	
	jsp_member_register.jsp
	
		회원가입폼 : submit 클릭 ->  jsp_member_process.jsp 포워딩
		1. 아이디
		2. 비밀번호
		3. 연락처
		4. 성별
		5. 취미(checkbox)
		6. 가입인사(textarea)
		7. 가입하기(submit button), 새로고침(reset button)
		
	jsp_member_process.jsp
	
		table태그
		
		아이디 아이디입력값
		...
		가입인사
	
	jsp_member_failed.jsp
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<h3>회원가입</h3>
			<form action="jsp_member_process.jsp" method="post">
			아이디 : <input type="text" name = "userid" placeholder = "id를 입력하세요"/><br />
			<br />
			비밀번호 : <input type="password" name = "userpw" placeholder = "pw를 입력하세요"/><br />
			<br />
			연락처 : <input type="text" name = "phone" placeholder = "전화번호를 입력하세요"/><br />
			<br />
			성별 : <input type="radio" name ="gender" value = "남성"/> 남성
					<input type="radio" name ="gender" value = "여성"/> 여성<br />
			<br />
			취미 : <input type = "checkbox" name = "hobbies"  value="헬스"/>헬스
					<input type = "checkbox" name = "hobbies"  value="음악"/> 음악
					<input type = "checkbox" name = "hobbies"  value="독서"/> 독서
					<input type = "checkbox" name = "hobbies"  value="등산"/>등산<br />
			<br />
			<h4>가입인사</h4>
			  <textarea name="hello" id="Hello" cols="30" rows="10" placeholder = "가입인사 길게 부탁드립니다 ^^"></textarea><br />
			  <br />
			  <input type="submit" value="가입하기" />
			  <input type="reset" />
			
			</form>
</body>
</html>