<%@page import="question.QuestionDTO"%>
<%@page import="java.util.List"%>
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
    <title>기출문제 페이지</title>
    <link rel="stylesheet" type="text/css" href="assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/lib/perfect-scrollbar/css/perfect-scrollbar.css"/>
    <link rel="stylesheet" type="text/css" href="assets/lib/datatables/datatables.net-bs4/css/dataTables.bootstrap4.css"/>
    <link rel="stylesheet" href="assets/css/app.css" type="text/css"/>
    <link rel="stylesheet" href= "list.css"/>
 <jsp:include page="../import/link.jsp"></jsp:include>
</head>
<body>
  <jsp:include page="../menu.jsp"></jsp:include>
   
      
      <form name="form" action="questionLiust.html" method="post">
      <!-- 자료 리스트 -->
      <div class="main-content container">
       
          <div class="col-sm-12">
            <div class="card card-default card-table">
              <div class="card-header">기업 코딩 테스트 출제 문제
           
              </div>
              <div class="card-body">
                <table class="table table-striped table-hover" id="table1">
                  <thead>
                    <tr>
                    
          <th width = "35%"> 기출 문제 </th>
          <%
          QuestionDAO dao = new QuestionDAO(application);
       			List<QuestionDTO> list = dao.getPastQuestionList();
       												
                 for(QuestionDTO dto : list){
          %>
                </tr>
                  </thead>
                  <tbody>
                    <tr class="">
                      <td class="center"><a href="questionList.jsp?past_num=<%= dto.getPast_num()%>"><%= dto.getPast_title() %></a></td>
                    </tr>
                    <%} %>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        </form>
        
     
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
    <script type="text/javascript">
      $(document).ready(function(){
         //-initialize the javascript
         App.init();
         App.dataTables();
      });
    </script>
  </body>
</html>