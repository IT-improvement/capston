<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("Id");
	MemberDAO dao = new MemberDAO(application);
	int result = dao.checkid(id);
	request.setAttribute("result", result);
	%>
	
