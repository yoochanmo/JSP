

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jsp:useBean의 이미는 Member member = new Member(); -->
<jsp:useBean id="member" class="com.lec.member.Member" scope="request"></jsp:useBean>
<!-- 
	jsp:useBean 액션태그를 이용한 자바객체를 사용하기
	
	jsp페이지의 주된 기능은 데이터를 보여주는 것이다. 게시판의 글목록보기, 글읽기,회원정보등의 정보를
	보여줄 때 jsp에서는 이런 종류의 데이터를 Java Beans(DTO or VO와 같은 의미)와 같은 클래스에 정보를 저장해서
	보여주는 것이 일반적이다.
	
	이런 기능을 제공하기 위해서는 jsp규약은 jsp에서 빈번하게 사용되는 자바빈 객체를 위한 액션태그를
	제공하는데 이와 같은 액션태그를 사용하면 자바빈객체를 생성하거나 Bean의 필드(프로퍼티)를 출력
	또는 변경할 수가 있다.
	
	jsp에서는 Java Bean객체를 생성하도록 jsp:useBean액션태그 및 jsp:setProperty, jsp:getProperty
	액션태그를 제공한다.
	
	1 . jsp:useBean문법
		
		jsp:useBean id = "자바빈이름" class= "자바빈의 클래스명" scope="사용범위"
		
		a . id 	  : jsp페이지에서 Java Bean객체에 접근할 때 사용하는 이름 즉, 변수명
		b . class : 패키지명을 포함한 Java class(Bean)를 지정(VO,DTO,model...다양한이름)
		c . scope : Java Bean객체를 지정할 영역을 정의. page, request, session, application중
					하나의 영역을 지정, 기본값은 page 
 -->
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">   
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		/* Member member = new Member(); */
		member.setId("scott");
		member.setPassword("12345");
		member.setName("홍길동");
	%>

	<jsp:forward page="jsp02_member.jsp"></jsp:forward>
</body>
</html>