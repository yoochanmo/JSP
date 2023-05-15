<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
	url 관련태그는 url생성기능과 redirect처리기능을 제공한다.
 -->
 
 <!-- https://search.daum.net/search?w=news&q=%EA%B9%80%EB%AF%BC%EC%9E%AC -->
 
 <c:url var="search" value=" https://search.daum.net/search">
 <c:param name="w" value="news"></c:param>
 <c:param name="q" value="김민재"></c:param>
 </c:url>
 
 <ul>
 	<li><a href="${search }">다음뉴스에서 김민재 검색</a></li>
 	<li><c:url value="jsp02_if.jsp"/></li>
 	<li><c:url value="./jsp02_if.jsp"/></li>
 
 </ul>
 
 <c:redirect url="http://www.google.com"/>