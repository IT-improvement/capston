<%@page import="java.sql.Timestamp"%>

<%@page import="visit.VisitDTO"%>
<%@page import="visit.VisitDAO"%>
<%@page import="question.QuestionDAO"%>
<%@page import="question.QuestionDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
	<link rel="stylesheet" href= "../assets/css/list.css"/>
	<link rel="stylesheet" href= "../assets/css/playCodingPage.css"/>
    <script src="assets/js/sidebar.js" type="text/javascript"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, inital-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
	<head>
	    <title>메모장</title>
	  </head>
	  <body>
	  
	  	   
	    <%
	    
	    String userId = (String)session.getAttribute("UserId");
	    
    // 쿼리 매개변수에서 q_num 값을 읽음
  String qNum = request.getParameter("q_num");
int qNumInt = Integer.parseInt(qNum);


Timestamp date = new Timestamp(System.currentTimeMillis());

QuestionDAO dao = new QuestionDAO(application);
VisitDAO visitDao = new VisitDAO(application);
// qNum을 사용하여 문제 정보를 가져오는 로직 수행




QuestionDTO dto = dao.getCodingQuestionList(qNumInt);
dao.insertVisitCount(qNumInt);




int v = visitDao.insertVisitDate(userId, qNumInt, date);


	    // 예시로 DAO의 getQuestionInfo 메서드 사용

dao.close();
    // 가져온 문제 정보를 사용하여 페이지를 동적으로 생성하거나 초기화
    

    
%>


	  
	   <h2 style="text-align: center; font-size: 50px;"> - 코딩 테스트 - </h2>
	   <h2 class= moved-h2><%= dto.getQ_title() %>	</h2>
 	
	
	    <form>

    
		 <div  style="display: inline-block; width: 3.5%;"></div>
	 	 <div  style="display: inline-block; width: 45%;"><textarea id="memo" name="memo"> </textarea><button class="btn"  >컴파일</button></div>
	 	 
		 <div  style="display: inline-block; width: 45%;"><textarea id="compile" name="compile">실행 결과 : </textarea> <button class="btn">방만들기</button></div>
		
	    </form>
	    
	    

	  </body>

	</html>