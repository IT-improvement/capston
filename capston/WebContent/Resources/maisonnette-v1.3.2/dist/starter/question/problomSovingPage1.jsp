<%@page import="java.util.List"%>
<%@page import="question.QuestionDTO"%>
<%@page import="question.QuestionDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/img/favicon.png">
    <title>코딩포차</title>
    <link rel="stylesheet" type="text/css" href="assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/lib/perfect-scrollbar/css/perfect-scrollbar.css"/>
    <link rel="stylesheet" type="text/css" href="assets/lib/datatables/datatables.net-bs4/css/dataTables.bootstrap4.css"/>
    <link rel="stylesheet" href="assets/css/app.css" type="text/css"/>
    <link rel="stylesheet" href= "assets/css/list.css"/>
<jsp:include page="../import/link.jsp"></jsp:include>
</head>
<body>
  <jsp:include page="../menu.jsp"></jsp:include>
      <!-- 자료 리스트 -->
      <div class="main-content container">
        <form name="moveform">
      <div class="movePage1">
		<div class="title">페이지 이동하기 </div>
		  
     <div class="left">
		 <input type="checkbox" name="languageChecked" value="JAVA"> JAVA<br>
		 <input type="checkbox" name="languageChecked" value="C++"> C++<br>
		 <input type="checkbox" name="languageChecked" value="MySql"> MySql<br>
		 
	</div>
	<div class="right">
		<input type="checkbox" name="languageChecked" value="C"> C<br>
		<input type="checkbox" name="languageChecked" value="Cshap"> C#<br>
	</div>
	<button type="button" class="movebtn" onclick="moveQuestionPage()">선택 언어 보기(선택X : 모든문제)</button>
<span id="result"></span>
</div>
</form>
          <div class="col-sm-12">
            <div class="card card-default card-table">
              <div class="card-header">문제 리스트
           
              </div>
              <div class="card-body">
                <table class="table table-striped table-hover" id="table1">
                  <thead>
                    <tr>
        <th width = "10%"> 문제 번호 </th>
          <th width = "45%"> 문제 제목 </th>
           <th width = "15%"> 언어 </th>
          <th width = "15%"> 난이도 </th>
          <%
          String array[] = request.getParameterValues("languageChecked");
          QuestionDAO dao = new QuestionDAO(application);
			List<QuestionDTO> list = null;										
			int i = array.length;
			if(i==1){
				list = dao.getQuestionList(array[0]);
			}else if(i==2){
				list = dao.getQuestionList(array[0], array[1]);
			}else if(i==3){
				list = dao.getQuestionList(array[0], array[1], array[2]);
			}else if(i==4){
				list = dao.getQuestionList(array[0], array[1], array[2],array[3]);
			}else if(i==5){
				list = dao.getQuestionList(array[0], array[1], array[2],array[3],array[4]);
			}
          for(QuestionDTO dto : list){
        	  %>
        	  
                </tr>
                  </thead>
                  <tbody>
                    <tr class="">
                      <td class="center"><%= dto.getQ_num() %></td>
                     <td class="center"><a href="PlayCodingpg.jsp?q_num=<%= dto.getQ_num() %>"><%= dto.getQ_title() %></a></td>
                                           <td class="center"><%= dto.getQ_language() %></td>
                      
                      <td class="center"><%= dto.getQ_level() %></td>
                   </tr>
                      <% }
                      %>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
 
     

    
    <script src="assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
    <script src="assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="assets/js/app.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net-bs4/js/dataTables.bootstrap4.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net-buttons/js/dataTables.buttons.min.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net-buttons/js/buttons.html5.min.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net-buttons/js/buttons.flash.min.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net-buttons/js/buttons.print.min.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net-buttons/js/buttons.colVis.min.js" type="text/javascript"></script>
    <script src="assets/lib/datatables/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js" type="text/javascript"></script>
    <script src="assets/js/app-tables-datatables.js" type="text/javascript"></script>
    <script src="assets/js/movepage.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(document).ready(function(){
         //-initialize the javascript
         App.init();
         App.dataTables();
      });
    </script>
  </body>
</html>