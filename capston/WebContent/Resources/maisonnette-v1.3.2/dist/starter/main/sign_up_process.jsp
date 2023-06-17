<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	String phoneNum = request.getParameter("phoneNum");
	String zip_code = request.getParameter("zip_code");
	String address_1 = request.getParameter("address_1");
	String address_2 = request.getParameter("address_2");
	String question = request.getParameter("question");
	String answer = request.getParameter("answer");
	String address = address_1 + " " + address_2;
	
	MemberDAO dao = new MemberDAO(application);
	int insertuser = dao.insertUser(id, pwd, email, phoneNum,zip_code,address,question,answer);
%>
<script>
alert('회원가입 성공');
location.href="pages-login.jsp";
</script>