<%@page import="com.lec.cookie.MyCookie"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.addCookie(MyCookie.createCookie("ADMIN", "", "/", 0));
%>