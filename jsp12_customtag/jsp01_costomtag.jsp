<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
		커스텀태그(Coustom Tag)
		
		프로그램을 개발하다 보면 JSP액션태그나 JSTL태그만으로 부족할 때가 있는데 이를 지원하기 위해
		JSP는 새로운 Tag를 만들어서 사용할 수 있도록 하는 기능을 제공한다. 사용자가 원하는 목적에 맞게 작성한 태그를 
		커스텀태그라고 한다.
		
		1 . 커스텀태그의 장점
		
			a . 재사용 : 한번 작성한 커스텀태그는 어떤 JSP컨테이너에서도 사용이 가능하다.
			b . 쉽고 간단한 JSP코드를 작성할 수 있다. 자바코드에 익숙하지 않은 개발자들도 커스텀태그를
				사용하면 보다 쉽게, JSP페이지를 작성할 수 있다.
			c . 코드의 가독성 향상, 커스텀태그를 사용하면 스크립트코드를 줄일 수가 있기 때문에 JSP페이지의 가독성을 향상 시킬 수가 있다.
			
			
		2 . 태그파일에서 사용가능한 디렉티브
		
			a . tag       : jsp페이지의 page디렉티브와 동일
			b . taglib    : tag파일에서 사용할 tag library를 정의
			c . include   : tag파일에 외부파일을 포함시킬 때 사용
			d . attribute : tag파일을 커스텀태그로 사용할 때 입력받을 속성을 정의
			e . variable  : EL변수로 사용할 변수에 대한 정보를 정의
			
		3 . 태그디렉티브의 속성
		
			a . display-name                  : tag파일이 사용될 이름을 정의, 기본값은 확장자(~.tag)을 제외한 나머지 파일이름
			b . body-content                  : body내용의 종류를 정의 empty, tagdependant, scriptless의 세가지 값을 사용할 수 있다.
											    기본값은 scriptless이다.
											    
											    1) empty          : body가 비어 있어야 한다.
											    2) tagdependant   : tag자체의 구현에 종속되어 있다.
											    3) scriptless     : 스크립트요소를 정의할 수 없다.
											  
											    
			c . dynamic-attribute          	  : 동적으로 속정을 정의, 속성<key, value>를 저장하는 Map객체를 page범위의 속성에 저장할 때 사용할 이름을 정의
			d . description                   : tag에 대한 설명
			e . import                        : page디렉티브의 import와 동일
			f . pageEncoding                  : page디렉티브의 pageEncoding와 동일
			g . isELignored                   : page디렉티브의 isELignored와 동일, EL을 사용하지 않겠다는 의미
			h . defferedSyntaxAllowedLiteral  : page디렉티브의 속성과 동일, 이 속성값이 true일 경우
				${}, #{} 형식의 값을 문자열로 처리할 것인지 여부
				
			i . trimDiretiveWhiteSpace        : page디렉티브의 속성과 동일, 공백문자를 제거여부
			
		4 . 태그파일에서 사용가능한 기본(내장)개체
		
			a . jspContext    : jsp페이지의 pageContext가 제공하는 메서드 그대로 사용가능, 각 속성과 관련된 작업처리가능
			b . request       : jsp페이지의 request와 동일
			c . response      : jsp페이지의 response와 동일
			d . session       : jsp페이지의 session객체와 동일
			e . application   : jsp페이지의 application객체와 도일
			f . out           : jsp페이지의 out객체와 동일
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

</body>
</html>