<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Timestamp date = new Timestamp(System.currentTimeMillis());
	String id = (String)session.getAttribute("UserId");
	
	MemberDAO dao = new MemberDAO(application);
	MemberDTO dto = new MemberDTO();
	dto.setLogOutDate(date);
	dto.setId(id);
	int result = dao.insertLogout(dto);
	response.sendRedirect("pages-login.jsp");
%>