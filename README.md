# ⚡⚡ JSP JSP 핵심개념 정리⚡⚡
<br>

## 👾 스크립트 요소
    JSP 파일에서 Java코드를 삽입하기 위해 '<% %>' 태그를 사용한다. 이를 통해 변수선언, 조건문, 반복문 등을 사용할 수 있다.
    ex) <% String name = "John"; 
           int age = 25; %>
    
## 👻 표현 언어(EL, EXpression Language)
    JSP에서 EL은 '${}' 태그를 사용하여 Java 변수의 값을 출력하거나 연산을 수행하는데 사용된다.
    ex) <p>Name: ${name}</p>
        <p>Age: ${age}</p>
        
## 🐳 JSP 지시자
     JSP파일의 전체 속성을 설정하기 위해 '<%@ %>' 태그를 사용한다. 예를 들어, 페이지 지시자를 사용하여 JSP 페이지의 인코딩, 세션설정, import문 등을 정의할수 있다.
     ex) <%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" %>
     
## 🧟 액션 태그
     JSP에서 액션태그는 서버 측 로직을 실행하고, 데이터베이스와의 상호작용, 페이지 포워딩 및 포함 등을 수행하는데 사용된다. 주요 액션태그에는
     '<jsp:include>', '<jsp:forward>', '<jsp:useBean>' 등이 있다.
     ex) <jsp:include page="header.jsp" />
         <jsp:forward page="error.jsp" />
         <jsp:useBean id="user" class="com.example.User" scope="request" />
         
 ## 일단 간단히 정리한건 여기까지 더 생각나거나 필요로 하다는것이 생기면 정리.

     


