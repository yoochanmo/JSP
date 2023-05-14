
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.lec.el.StaticMethod" %>
<%
	request.setAttribute("price", 12345L);
%>

<h4>${price }</h4>
<h4>제품가격은 ${ StaticMethod.staticMethod(price, "#,##0.0")}원 입니다.</h4>