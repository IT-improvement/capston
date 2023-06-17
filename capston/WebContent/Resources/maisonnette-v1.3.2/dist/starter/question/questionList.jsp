<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="question.QuestionDTO"%>
<%@page import="question.QuestionDAO"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="assets/img/favicon.png">
<title>기출 문제 리스트 페이지</title>
<link rel="stylesheet" type="text/css"
	href="assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="assets/lib/perfect-scrollbar/css/perfect-scrollbar.css" />
<link rel="stylesheet" type="text/css"
	href="assets/lib/datatables/datatables.net-bs4/css/dataTables.bootstrap4.css" />
<link rel="stylesheet" href="assets/css/app.css" type="text/css" />
<link rel="stylesheet" href="list.css" />
<jsp:include page="../import/link.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<!-- 자료 리스트 -->
	<form name="form" action="playCodingpg.jsp" method="post">
		<div class="main-content container">
			<div class="col-sm-12">
				<div class="card card-default card-table">
					<% 
            QuestionDAO dao = new QuestionDAO(application);
            String past_num = request.getParameter("past_num");
            		int past_numint = Integer.parseInt(past_num);
			QuestionDTO dtoQ = dao.getPastQuestionList(past_numint);     
            %>
					<div class="card-header"><%= dtoQ.getPast_title() %>
					</div>
					<div class="card-body">
						<table class="table table-striped table-hover" id="table1">
							<thead>
								<tr>
									<th width="7%">문제 번호</th>
									<th width="35%">기출 문제</th>
								</tr>
							</thead>
							<tbody>
								<%
			List<QuestionDTO> list = dao.getKakaoQuestionList();
                           dao.close();				
          for(QuestionDTO dto : list){
        	  %>

								<tr class="">

									<td class="center"><%= dto.getQ_num() %></td>

									<td class="center"><a
										href="PlayCodingpg.jsp?q_num=<%= dto.getQ_num() %>"><%= dto.getQ_title() %></a></td>



								</tr>
								<%} %>



							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script src="assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script src="assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js"
		type="text/javascript"></script>
	<script src="assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js"
		type="text/javascript"></script>
	<script src="assets/js/app.js" type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net/js/jquery.dataTables.js"
		type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net-bs4/js/dataTables.bootstrap4.js"
		type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net-buttons/js/dataTables.buttons.min.js"
		type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net-buttons/js/buttons.html5.min.js"
		type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net-buttons/js/buttons.flash.min.js"
		type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net-buttons/js/buttons.print.min.js"
		type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net-buttons/js/buttons.colVis.min.js"
		type="text/javascript"></script>
	<script
		src="assets/lib/datatables/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"
		type="text/javascript"></script>
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