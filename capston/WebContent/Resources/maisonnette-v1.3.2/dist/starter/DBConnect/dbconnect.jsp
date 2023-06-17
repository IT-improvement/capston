<%@page import="java.sql.*"%>
<%@page import="common.DBConnPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="common.JDBConnect" %>
<% 
String driver = application.getInitParameter("mariadbDriver");;
String url = application.getInitParameter("mariadbUrl");
String id = application.getInitParameter("mariadbId");
String pwd = application.getInitParameter("mariadbPwd");
JDBConnect jdbc2 = new JDBConnect(driver,url,id,pwd);
jdbc2.close();
try{
DBConnPool pool = new DBConnPool();
pool.close();
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
Class.forName(driver);
con=DriverManager.getConnection(url, id, pwd);
String query = "select * from chatroom";

	pstmt = con.prepareStatement(query);
	rs = pstmt.executeQuery();
	while(rs.next()){
%>
<%=rs.getString("roomtitle") %>
<%=rs.getString("chat_num") %>
<%
	}
}
catch(Exception e){
	System.out.println("Exception : " + e.getMessage());
}
%>