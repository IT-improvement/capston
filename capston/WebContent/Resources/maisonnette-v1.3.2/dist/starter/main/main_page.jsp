<%@page import="member.MemberDTO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="member.MemberDAO"%>
<%@page import="question.QuestionDTO"%>
<%@page import="question.QuestionDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>코딩포차</title>
<jsp:include page="../import/link.jsp"></jsp:include>
</head>
<body>
  <jsp:include page="../menu.jsp"></jsp:include>
		<!-- 현황 -->
		<div class="main-content container">
			<!--광구-->
			<div class="row">
				<div class="imgclass">
					<img class="slide1" src="../assets/img/ad2.jpg" >
					<img class="slide1" src="../assets/img/ad1.jpg" >
					<img class="slide1" src="../assets/img/ad3.jpg" >
				</div>
			</div>
			<div class="row">
			
         <div class="col-md-6">
         <div class="project-list-title">언어 선호도</div>
         <div class="widget widget-fullwidth">
              <div class="widget-head">
        <canvas id="myChart"></canvas>
        </div>
      </div>
      </div>
          <%
          MemberDAO dao = new MemberDAO(application);
          int result = dao.alluser();
          %>
          <!-- 총 접속자수 표 -->
				 <div class="col-md-6">
					<div class="widget-indicators">
						<div class="indicator-item">
							<div class="indicator-item-icon">
								<div class="icon">
									<span class="s7-graph1"></span>
								</div>
							</div>
							<div class="indicator-item-value">
								<span class="indicator-value-counter" data-toggle="counter"
									data-end="36"><%=result %></span>
								<div class="indicator-value-title">유저 수</div>
							</div>
						</div>
						<div class="indicator-item">
							<div class="indicator-item-icon">
								<div class="icon">
									<span class="s7-graph"></span>
								</div>
							</div>
							<%
							int totaluser = dao.totaluser();
							%>
							<div class="indicator-item-value">
								<span class="indicator-value-counter" data-toggle="counter"
									data-end="157"><%=totaluser %></span>
								<div class="indicator-value-title">현재 접속자 수</div>
							</div>
						</div>
						<div class="indicator-item">
							<div class="indicator-item-icon">
								<div class="icon">
									<span class="s7-graph3"></span>
								</div>
							</div>
							<%
							QuestionDAO dao1 = new QuestionDAO(application);
							int totalquestion = dao1.totalquestion();
							String id= (String)session.getAttribute("UserId");

							MemberDAO dao2 = new MemberDAO(application);
							MemberDTO dto2 = dao2.getSolveNum(id);
							%>
							<div class="indicator-item-value">
								<span class="indicator-value-counter" data-toggle="counter"
									data-decimals="1" data-end="17.9"><%=totalquestion %></span>
								<div class="indicator-value-title">문제 수</div>
							</div>
						</div>
						<div class="indicator-item">
							<div class="indicator-item-icon">
								<div class="icon">
									<span class="s7-cart"></span>
								</div>
							</div>
							<div class="indicator-item-value">
								<span class="indicator-value-counter" data-toggle="counter"
									data-decimals="1" data-end="17.9"><%=dto2.getSolveNum() %></span>
								<div class="indicator-value-title">내가 푼 문제수</div>
							</div>
						</div>
					</div>
				</div>
</div>
			<!-- 채팅방리스트 	 -->
			<% 
	BoardDAO b_dao = new BoardDAO(application);
	BoardDTO b_dto1 = b_dao.firstChatrRoom();
	BoardDTO b_dto2 = b_dao.secondChatrRoom();
	BoardDTO b_dto3 = b_dao.thirdChatrRoom();
	BoardDTO b_dto4 = b_dao.fourthChatrRoom();
	BoardDTO b_dto5 = b_dao.fifthChatrRoom();
	b_dao.close();
	%>
			<div class="row">
				<div class="col-12">
					<div class="project-list">
						<div class="project-list-title">채팅방
							<button class="btn btn-space btn-outline-primary btn-space btn-location" onclick="location.href='../chat_room/ChatListPage.jsp'">더보기</button>
						</div>
						<!-- 1번째 채팅방 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=b_dto1.getRoomTitle() %></b></span>
							</div>
							<div class="project-item-user">

								<div class="user-info">
									<span class="name">현재 인원 수 : <%=b_dto1.getStatusMem() %></span>
									<span class="position description">총 인원수 : <%=b_dto1.getAllowMem() %> </span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=b_dto1.getLanguage() %></span>
								<span class="position description">방장 : <%=b_dto1.getId() %> </span>
							</div>
							<div class="project-item-date">
								<span class="date">개설시간 : <%=b_dto1.getCreateTime() %></span></div>
							<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary">입장하기</button>
								 <p class="animation_best">추천!!!👍</p>
							</div>
						</div>
						<!-- 2번째 채팅방 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=b_dto2.getRoomTitle() %></b></span>
							</div>
							<div class="project-item-user">

								<div class="user-info">
									<span class="name">현재 인원 수 : <%=b_dto2.getStatusMem() %></span>
									<span class="position description">총 인원수 : <%=b_dto2.getAllowMem() %> </span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=b_dto2.getLanguage() %></span>
								<span class="position description">방장 : <%=b_dto2.getId() %> </span>
							</div>
							<div class="project-item-date">
								<span class="date">개설시간 : <%=b_dto2.getCreateTime() %></span></div>
						<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary">입장하기</button>
							</div>
						</div>
						<!-- 2번째 채팅방 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=b_dto3.getRoomTitle() %></b></span>
							</div>
							<div class="project-item-user">

								<div class="user-info">
									<span class="name">현재 인원 수 : <%=b_dto3.getStatusMem() %></span>
									<span class="position description">총 인원수 : <%=b_dto3.getAllowMem() %> </span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=b_dto3.getLanguage() %></span>
								<span class="position description">방장 : <%=b_dto3.getId() %> </span>
							</div>
							<div class="project-item-date">
								<span class="date">개설시간 : <%=b_dto3.getCreateTime() %></span></div>
						<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary">입장하기</button>
							</div>
						</div><!-- 2번째 채팅방 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=b_dto4.getRoomTitle() %></b></span>
							</div>
							<div class="project-item-user">

								<div class="user-info">
									<span class="name">현재 인원 수 : <%=b_dto4.getStatusMem() %></span>
									<span class="position description">총 인원수 : <%=b_dto4.getAllowMem() %> </span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=b_dto4.getLanguage() %></span>
								<span class="position description">방장 : <%=b_dto4.getId() %> </span>
							</div>
							<div class="project-item-date">
								<span class="date">개설시간 : <%=b_dto4.getCreateTime() %></span></div>
						<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary">입장하기</button>
							</div>
						</div>
						
						<!-- 5번째 채팅방 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=b_dto5.getRoomTitle() %></b></span>
							</div>
							<div class="project-item-user">

								<div class="user-info">
									<span class="name">현재 인원 수 : <%=b_dto5.getStatusMem() %></span>
									<span class="position description">총 인원수 : <%=b_dto5.getAllowMem() %> </span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=b_dto5.getLanguage() %></span>
								<span class="position description">방장 : <%=b_dto5.getId() %> </span>
							</div>
							<div class="project-item-date">
								<span class="date">개설시간 : <%=b_dto5.getCreateTime() %></span></div>
						<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary">입장하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			<!-- 문제 풀이 -->
			<% 
			QuestionDAO q_dao = new QuestionDAO(application);
			QuestionDTO q_dto1 = q_dao.firstQuestion();
			QuestionDTO q_dto2 = q_dao.secondQuestion();
			QuestionDTO q_dto3 = q_dao.thirdQuestion();
			QuestionDTO q_dto4 = q_dao.fourthQuestion();
			QuestionDTO q_dto5 = q_dao.fifthQuestion();
			String pass1 = q_dao.solveCheck(q_dto1.getQ_answer());
			String pass2 = q_dao.solveCheck(q_dto2.getQ_answer());
			String pass3 = q_dao.solveCheck(q_dto3.getQ_answer());
			String pass4 = q_dao.solveCheck(q_dto4.getQ_answer());
			String pass5 = q_dao.solveCheck(q_dto5.getQ_answer());
			
			%>
			
			<div class="row">
				<div class="col-12">
					<div class="project-list">
						<div class="project-list-title">문제리스트
							<button class="btn btn-space btn-outline-primary btn-space btn-location" onclick="location.href='../question/problomSovingPage.jsp'">더보기</button>
						</div>
						<!-- 1번문제 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=q_dto1.getQ_title() %></b></span>
							</div>
							<div class="project-item-user">
								<div class="user-info">
									<span class="name">정답률 : <%=q_dto1.getQ_anwserpercent() %>%</span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=q_dto1.getQ_language() %></span>
							</div>
							<div class="project-item-date">
								<span class="name">문제 푼 여부 :<p class="<%=pass1 %>"><%=pass1 %></p></span>
							</div>
							<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary" onclick="location.href='../question/PlayCodingpg.jsp?q_num=<%= q_dto1.getQ_num() %>'">입장하기</button>
							</div>
						</div>
						<!-- 2번문제 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=q_dto2.getQ_title() %></b></span>
							</div>
							<div class="project-item-user">
								<div class="user-info">
									<span class="name">정답률 : <%=q_dto2.getQ_anwserpercent() %>%</span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=q_dto2.getQ_language() %></span>
							</div>
							<div class="project-item-date">
								<span class="name">문제 푼 여부 :<p class="<%=pass2 %>"><%=pass2 %></span>
							</div>
							<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary" onclick="location.href='../question/PlayCodingpg.jsp?q_num=<%= q_dto2.getQ_num() %>'">입장하기</button>
							</div>
						</div>
						<!-- 3번문제 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=q_dto3.getQ_title() %></b></span>
							</div>
							<div class="project-item-user">
								<div class="user-info">
									<span class="name">정답률 : <%=q_dto3.getQ_anwserpercent() %>%</span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=q_dto3.getQ_language() %></span>
							</div>
							<div class="project-item-date">
								<span class="name">문제 푼 여부 :<p class="<%=pass3 %>"><%=pass3 %></span>
							</div>
							<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary" onclick="location.href='../question/PlayCodingpg.jsp?q_num=<%= q_dto3.getQ_num() %>'">입장하기</button>
							</div>
						</div>
						<!-- 4번문제 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=q_dto4.getQ_title() %></b></span>
							</div>
							<div class="project-item-user">
								<div class="user-info">
									<span class="name">정답률 : <%=q_dto4.getQ_anwserpercent() %>%</span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=q_dto4.getQ_language() %></span>
							</div>
							<div class="project-item-date">
								<span class="name">문제 푼 여부 :<p class="<%=pass4 %>"><%=pass4 %></span>
							</div>
							<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary" onclick="location.href='../question/PlayCodingpg.jsp?q_num=<%= q_dto4.getQ_num() %>'">입장하기</button>
							</div>
						</div>
						<!-- 5번문제 -->
						<div class="project-item">
							<div class="project-item-title">
								<span class="name"><b><%=q_dto5.getQ_title() %></b></span>
							</div>
							<div class="project-item-user">
								<div class="user-info">
									<span class="name">정답률 : <%=q_dto5.getQ_anwserpercent() %>%</span>
								</div>
							</div>
							<div class="project-item-state">
								<span class="name">언어 : <%=q_dto5.getQ_language() %></span>
							</div>
							<div class="project-item-date">
								<span class="name">문제 푼 여부 :<p class="<%=pass5 %>"><%=pass5 %></span>
							</div>
							<div class="mt-2 mb-1">
								<button class="btn btn-rounded btn-space btn-secondary" onclick="location.href='../question/PlayCodingpg.jsp?q_num=<%= q_dto5.getQ_num() %>'">입장하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
    <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      	App.charts();
      });
    </script>
    <script type="text/javascript">
    var context = document
    .getElementById('myChart')
    .getContext('2d');
var myChart = new Chart(context, {
    type: 'bar', // 차트의 형태
    data: { // 차트에 들어갈 데이터
        labels: [
            //x 축
            'JAVA','C','C++','C#','PYTHON'
        ],
        datasets: [
            { //데이터
                label: '언어 선호도', //차트 제목
                fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                data: [
                    43,19,23,25,32 //x축 label에 대응되는 데이터 값
                ],
                backgroundColor: [
                    //색상
                	'rgba(44, 193, 133, 1)',
                	'rgba(44, 193, 133, 1)',
                	'rgba(44, 193, 133, 1)',
                	'rgba(44, 193, 133, 1)',
                	'rgba(44, 193, 133, 1)'
                    ],
                borderColor: [
                    //경계선 색상
                	'rgba(75, 192, 192, 0.8)',
                	'rgba(75, 192, 192, 0.8)',
                	'rgba(75, 192, 192, 0.8)',
                	'rgba(75, 192, 192, 0.8)',
                	'rgba(75, 192, 192, 0.8)',
                	'rgba(75, 192, 192, 0.8)'
                ],
                borderWidth: 1 //경계선 굵기
            }/* ,
            {
                label: 'test2',
                fill: false,
                data: [
                    8, 34, 12, 24
                ],
                backgroundColor: 'rgb(157, 109, 12)',
                borderColor: 'rgb(157, 109, 12)'
            } */
        ]
    },
    options: {
        scales: {
            yAxes: [
                {
                    ticks: {
                        beginAtZero: true
                    }
                }
            ]
        }
    }
});
    </script>
</body>
</html>