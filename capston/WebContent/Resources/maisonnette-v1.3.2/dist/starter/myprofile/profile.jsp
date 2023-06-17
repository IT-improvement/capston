<%@page import="visit.VisitDAO"%>
<%@page import="visit.VisitDTO"%>
<%@page import="RecentMatter.RecentMatterDTO"%>
<%@page import="java.util.List"%>
<%@page import="RecentMatter.RecentMatterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="solvelang.SolvelangDTO"%>
<%@ page import="solvelang.SolvelangDAO"%>
<%@ page import="member.MemberDTO"%>
<%@ page import="member.MemberDAO"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../assets/img/favicon.png">
<title>코딩포차</title>
    <jsp:include page="../import/link.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="assets/lib/perfect-scrollbar/css/perfect-scrollbar.css" />
<link rel="stylesheet" href="assets/css/app.css" type="text/css" />
<jsp:include page="../import/link.jsp"></jsp:include>
</head>
<body>
  <%
    String UserId = (String)session.getAttribute("UserId");
    %>
<!-- 최상위메뉴버 -->
	<nav class="navbar navbar-expand navbar-dark mai-top-header">
		<div class="container">
			<a class="navbar-brand" href="">코딩포차</a>
			<ul class="nav navbar-nav mai-top-nav">
				<li class="nav-item"><a class="nav-link" href="../main/main_page.jsp">메인</a></li>
				<li class="nav-item"><a class="nav-link" href="../main/main_about.jsp">About</a></li>
			</ul>
			<ul class="navbar-nav float-lg-right mai-icons-nav">
				<li class="dropdown nav-item mai-messages"><a
					class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
					role="button" aria-expanded="false"><span
						class="icon s7-comment"></span></a>
					<ul class="dropdown-menu">
						<li>
							<div class="title">코딩포차</div>
							<div class="mai-scroller-messages">
								<div class="content">
									<ul>
										<li><a href="#">
												<div class="img">
													<img src="assets/img/avatars/img1.jpg" alt="avatar">
												</div>
												<div class="content">
													<span class="date">16 Sept</span><span class="name">Victor
														Jara</span><span class="desc">The song that has been
														brave, will always be the new song.</span>
												</div>
										</a></li>
										<li><a href="#">
												<div class="img">
													<img src="assets/img/avatars/img2.jpg" alt="Avatar">
												</div>
												<div class="content">
													<span class="date">4 Sept</span><span class="name">Gustavo
														Cerati</span><span class="desc">You will see me fly across
														the city of fury where no one knows of me.</span>
												</div>
										</a></li>
										<li><a href="#">
												<div class="img">
													<img src="assets/img/avatars/img3.jpg" alt="Avatar">
												</div>
												<div class="content">
													<span class="date">13 Aug</span><span class="name">Jaime
														Garzón</span><span class="desc">Now everything came back
														to the abnormality.</span>
												</div>
										</a></li>
										<li><a href="#">
												<div class="img">
													<img src="assets/img/avatars/img4.jpg" alt="Avatar">
												</div>
												<div class="content">
													<span class="date">13 Aug</span><span class="name">Allen
														Collins</span><span class="desc">Things just couldn't even
														be the same 'Cause I'm as free as a bird now.</span>
												</div>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="footer">
								<a href="#">View all messages</a>
							</div>
						</li>
					</ul></li>
				<li class="dropdown nav-item mai-notifications"><a
					class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
					role="button" aria-expanded="false"><span class="icon s7-bell"></span><span
						class="indicator"></span></a>
					<ul class="dropdown-menu">
						<li>
							<div class="title">Notifications</div>
							<div class="mai-scroller-notifications">
								<div class="content">
									<ul>
										<li><a href="#">
												<div class="icon">
													<span class="s7-check"></span>
												</div>
												<div class="content">
													<span class="desc">This is a new message for my dear
														friend <strong>Rob</strong>.
													</span><span class="date">10 minutes ago</span>
												</div>
										</a></li>
										<li><a href="#">
												<div class="icon">
													<span class="s7-add-user"></span>
												</div>
												<div class="content">
													<span class="desc">You have a new fiend request
														pending from <strong>John Doe</strong>.
													</span><span class="date">2 days ago</span>
												</div>
										</a></li>
										<li><a href="#">
												<div class="icon">
													<span class="s7-graph1"></span>
												</div>
												<div class="content">
													<span class="desc">Your site visits have increased <strong>15.5%</strong>
														more since the last week.
													</span><span class="date">2 hours ago</span>
												</div>
										</a></li>
										<li><a href="#">
												<div class="icon">
													<span class="s7-check"></span>
												</div>
												<div class="content">
													<span class="desc">This is a new message for my dear
														friend <strong>Rob</strong>.
													</span><span class="date">10 minutes ago</span>
												</div>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="footer">
								<a href="#">View all notifications</a>
							</div>
						</li>
					</ul></li>
				
			</ul>
			<!-- 프로필 -->
			<ul class="nav navbar-nav float-lg-right mai-user-nav">
				<li class="dropdown nav-item"><a
					class="dropdown-toggle nav-link" href="#" data-toggle="dropdown"
					role="button" aria-expanded="false"><img
						src="" alt=""><span
						class="user-name"><%=UserId %></span><span
						class="angle-down s7-angle-down"></span></a>
					<div class="dropdown-menu" role="menu">
							<a class="dropdown-item" href="../myprofile/profile.jsp"><span
							class="icon s7-user"></span>Profile</a>
							<a
							class="dropdown-item" href="../main/LogOutProcess.jsp"><span
							class="icon s7-power"></span>Log Out</a>
					</div></li>
			</ul>
		</div>
	</nav>
	
		<!-- 메뉴바 -->
	<div class="mai-wrapper">
		<nav class="navbar navbar-expand-lg mai-sub-header">
			<div class="container">
				<nav class="navbar navbar-expand-md">
					<button class="navbar-toggler hidden-md-up collapsed" type="button"
						data-toggle="collapse" data-target="#mai-navbar-collapse"
						aria-controls="mai-navbar-collapse" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"><span></span><span></span><span></span></span>
					</button>
					<div class="navbar-collapse collapse mai-nav-tabs"
						id="mai-navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="nav-item parent open"><a class="nav-link"
								href="#" role="button" aria-expanded="false"><span
									class="icon s7-home"> </span><span>메인페이지</span></a>
								<ul class="mai-nav-tabs-sub mai-sub-nav nav">
									<li class="nav-item"><a class="nav-link active"
										href="../main/main_page.jsp"><span class="icon s7-monitor"></span> <span
											class="name">메인페이지</span></a>
								</ul></li>
							<li class="nav-item parent"><a class="nav-link" href="#"
								role="button" aria-expanded="false"> <span
									class="icon s7-diamond"></span><span>코딩테스트</span></a>
								<ul class="mai-nav-tabs-sub mai-sub-nav nav">
									<li class="nav-item"><a class="nav-link" href="../question/problomSovingPage.jsp"> <span
											class="icon s7-diamond"></span> <span class="name">문제</span></a>
									</li>
									<!-- 타임어택 메뉴에 난이도선택/시간선택/언어선택 뭐 넣을지 고민 -->
									<li class="nav-item"><a class="nav-link" href="../question/past-question.jsp"> <span
											class="icon s7-diamond"></span> <span class="name">기업
												기출문제</span></a></li>
								</ul></li>
							<li class="nav-item parent"><a class="nav-link" href="#"
								role="button" aria-expanded="false"><span
									class="icon s7-rocket"></span><span>강의자료</span></a>
								                                      <ul class="mai-nav-tabs-sub mai-sub-nav nav">
                                                  <li class="nav-item dropdown parent mega-menu"><a class="nav-link" href="mega-menu.html" data-toggle="dropdown"><span class="icon s7-ribbon"></span><span class="name">강의 자료</span></a>
                                                              <div class="dropdown-menu mai-mega-menu mai-sub-nav" role="menu">
                                                                <div class="mai-mega-menu-row">
                                                                  <div class="mai-mega-menu-column">
                                                                              <div class="mai-mega-menu-section parent">
                                                                              <a class="nav-link" href="#"><span class="icon s7-note2"></span><span>코딩데코</span></a>
                                                                                <div class="mai-mega-menu-sub-items mai-sub-nav">
                                                                                <a class="dropdown-item" href="form-elements.html">HTML</a>
                                                                                <a class="dropdown-item" href="form-validation.html">CSS</a>
                                                                                <a class="dropdown-item" href="form-masks.html">JAVASCRIPT</a>
                                                                                </div>
                                                                              </div>
                                                                  </div>
                                                                 <div class="mai-mega-menu-column">
                                                                              <div class="mai-mega-menu-section parent">
                                                                              <a class="nav-link" href="#"><span class="icon s7-note2"></span><span>코딩재료</span></a>
                                                                                <div class="mai-mega-menu-sub-items mai-sub-nav">
                                                                                <a class="dropdown-item" href="form-elements.html">MYSQL</a>
                                                                                <a class="dropdown-item" href="form-validation.html">MARIADB</a>
                                                                                </div>
                                                                              </div>
                                                                  </div>
                                                                  <div class="mai-mega-menu-column">
                                                                              <div class="mai-mega-menu-section parent">
                                                                              <a class="nav-link" href="#"><span class="icon s7-note2"></span><span>코딩 맛</span></a>
                                                                                <div class="mai-mega-menu-sub-items mai-sub-nav">
                                                                                <a class="dropdown-item" href="../StudyList/JAVAStudyList.jsp">JAVA</a>
                                                                                <a class="dropdown-item" href="../StudyList/CStudyList.jsp">C</a>
                                                                                <a class="dropdown-item" href="../StudyList/C++StudyList.jsp">C++</a>
                                                                                <a class="dropdown-item" href="../StudyList/CShapStudyList.jsp">C#</a>
                                                                                </div>
                                                                              </div>
                                                                  </div>
                                                                </div>
                                                              </div>
                                                  </li>
                                                  <li class="nav-item dropdown parent mega-menu"><a class="nav-link" href="mega-menu.html" data-toggle="dropdown"><span class="icon s7-ribbon"></span><span class="name">강의 동영상</span></a>
                                                              <div class="dropdown-menu mai-mega-menu mai-sub-nav" role="menu">
                                                                <div class="mai-mega-menu-row">
                                                                  <div class="mai-mega-menu-column">
                                                                              <div class="mai-mega-menu-section parent">
                                                                              <a class="nav-link" href="#"><span class="icon s7-note2"></span><span>코딩맥주</span></a>
                                                                                <div class="mai-mega-menu-sub-items mai-sub-nav">
                                                                                <a class="dropdown-item" href="form-elements.html">HTML</a>
                                                                                <a class="dropdown-item" href="form-validation.html">CSS</a>
                                                                                <a class="dropdown-item" href="form-masks.html">JAVASCRIPT</a>
                                                                                </div>
                                                                              </div>
                                                                  </div>
                                                                 <div class="mai-mega-menu-column">
                                                                              <div class="mai-mega-menu-section parent">
                                                                              <a class="nav-link" href="#"><span class="icon s7-note2"></span><span>코딩소주</span></a>
                                                                                <div class="mai-mega-menu-sub-items mai-sub-nav">
                                                                                <a class="dropdown-item" href="form-elements.html">MYSQL</a>
                                                                                <a class="dropdown-item" href="form-validation.html">MARIADB</a>
                                                                                </div>
                                                                              </div>
                                                                  </div>
                                                                  <div class="mai-mega-menu-column">
                                                                              <div class="mai-mega-menu-section parent">
                                                                              <a class="nav-link" href="#"><span class="icon s7-note2"></span><span>코딩양주</span></a>
                                                                                <div class="mai-mega-menu-sub-items mai-sub-nav">
                                                                                <a class="dropdown-item" href="../video/JAVAVideoList.jsp">JAVA</a>
                                                                                <a class="dropdown-item" href="../video/CVideoList.jsp">C</a>
                                                                                <a class="dropdown-item" href="../video/C++AVAVideoList.jsp">C++</a>
                                                                                <a class="dropdown-item" href="../video/CshapVideoList.jsp">C#</a>
                                                                                </div>
                                                                              </div>
                                                                  </div>
                                                                </div>
                                                              </div>
                                                  </li>
                                      </ul></li>
							<li class="nav-item parent"><a class="nav-link" href="#"
								role="button" aria-expanded="false"><span
									class="icon s7-rocket"></span><span>채팅방</span></a>
								<ul class="mai-nav-tabs-sub mai-sub-nav nav">
									<li class="nav-item"><a class="nav-link" href="../chat_room/ChatListPage.jsp"> <span
											class="icon s7-diamond"></span> <span class="name">채팅방리스트</span></a>
									</li>
								</ul></li>
								<li class="nav-item parent"><a class="nav-link" href="#"
								role="button" aria-expanded="false"><span
									class="icon s7-rocket"></span><span>게시판</span></a>
								<ul class="mai-nav-tabs-sub mai-sub-nav nav">
									<li class="nav-item"><a class="nav-link" href=""> <span
											class="icon s7-diamond"></span> <span class="name">게시판</span></a>
									</li>
									<li class="nav-item"><a class="nav-link" href=""> <span
											class="icon s7-diamond"></span> <span class="name">QnA</span></a>
									</li>
								</ul></li>
						</ul>
					</div>
				</nav>
				<div class="search">
					<input type="text" placeholder="Search..." name="q"><span
						class="s7-search"></span>
				</div>
			</div>
		</nav>
		
		</div>
	<div class="main-content container">
		<div class="user-profile">
			<div class="row">
				<!-- 상단 프로필 사진 -->
				<div class="col-md-12">
					<div class="user-display">
					<%
								
String userId = (String)session.getAttribute("UserId");

//회원 테이블 DAO를 통해 회원 정보 DTO 획득
MemberDAO dao = new MemberDAO(application);



MemberDTO dto = dao.getSolveNum(userId);
MemberDTO dto1 = dao.getComfile(userId);

SolvelangDAO sdao = new SolvelangDAO(application);
SolvelangDTO sdto = sdao.getLanguage(userId);
SolvelangDTO cdto = sdao.getLanguageC(userId);
SolvelangDTO pdto = sdao.getLanguageP(userId);



dao.close();
sdao.close();


%>
						<div class="user-display-cover">
							<img src="../assets/img/cover.jpg" alt="cover">
						</div>
						<div class="user-display-bottom">
								<form action="uploadProfilePhoto.jsp" method="post" enctype="multipart/form-data">
    <input type="file" name="profilePhoto" accept="image/*">
    <input type="submit" value="프로필 사진 변경">
</form>

							<div class="user-display-id">
								<img class="user-display-avatar" src="" alt="프로필사진">
								<div class="user-display-name">이름</div>
							</div>
							
							
							<div class="user-display-stats">
								<div class="user-display-stat">
									<span class="user-display-stat-counter">--</span><span
										class="user-display-stat-title">출석률</span>
								</div>
																<% double result = 0;
try{
	
	
	if(dto.getSolveNum() <= dto1.getComfile()){
		result = (100 * dto.getSolveNum()) / dto1.getComfile();
		
		}
	else{
		System.out.println("0%");
	}

	

}catch(Exception e) {
	System.out.println("Exception[계산 오류]:" + e.getMessage());
}

%>
								<div class="user-display-stat">

									<span class="user-display-stat-counter"><%=dto.getSolveNum()%></span><span
										class="user-display-stat-title">푼 문제수</span>
										
								</div>
								<div class="user-display-stat">
									<span class="user-display-stat-counter"><%=result + "%"%></span><span
										class="user-display-stat-title">정답률</span>
								</div>

<% 
String imagePath = ""; // 이미지 경로를 저장할 변수

try{
	

	

// 문제 개수에 따라 이미지 경로s 설정
if (dto.getSolveNum() == 0) {
    
	imagePath = "../assets/img/bronze-medal.png"; // 기본 이미지 경로
} else if (dto.getSolveNum() >= 10 && dto.getSolveNum() < 30) {
	imagePath = "../assets/img/silver-medal.png";
}
else if (dto.getSolveNum() >= 30 && dto.getSolveNum() < 70) {
	imagePath = "../assets/img/gold-medal.png";
}
else if (dto.getSolveNum() >= 70 && dto.getSolveNum() < 200) {
	imagePath = "../assets/img/platinum-medal.png";
}
else if (dto.getSolveNum() >= 200) {
	imagePath = "../assets/img/diamond-medal.png";
}


}catch(Exception e) {
	System.out.println("Exception[MemberDAO]:" + e.getMessage());
}    	
%>  
<div class="user-display-stat" onclick="openIconSelection()">
    <img src="<%=imagePath %>" alt="뱃지 이미지" style="width: 50px; height: 50px;">
</div>
		
				</div>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- 내정보 -->
				<div class="col-md-4">
					<div class="user-info-list card card-default">
						<div class="card-header card-header-divider">내정보</div>
						<div class="card-body">
							<table class="no-border no-strip skills">
								<tbody class="no-border-x no-border-y">
									<tr>
										<td class="icon"><span class="icon s7-portfolio"></span></td>
										<td class="item">아이디</td>
										<td><a href="#"><%=dto.getId() %></a></td>
									</tr>
									<tr>
										<td class="icon"><span class="icon s7-gift"></span></td>
										<td class="item">이메일</td>
										<td><a href="#"><%=dto.getEmail() %></a></td>
									</tr>
									<tr>
										<td class="icon"><span class="icon s7-phone"></span></td>
										<td class="item">유저레벨</td>
										<td><a href="#">(999) 999-9999</a></td>
									</tr>
									<tr>
										<td class="icon"><span class="icon s7-global"></span></td>
										<td class="item">전화번호</td>
										<td><a href="#"><%=dto.getPhoneNum() %></a></td>
									</tr>
									<tr>
										<td class="icon"><span class="icon s7-map-marker"></span></td>
										<td class="item">비밀번호 변경</td>
										<td><input type="button" onclick="openButtonClick()" value="변경"> </td>
									</tr>
									</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- 차트 -->
				<div class="col-md-6">

					<div id="container" style="height: 100%; width: 134%"></div>
				</div>
			</div>
		</div>


	</div>
	</div>
	
<%
  // DAO 객체 생성
  RecentMatterDAO recentMatterDAO = new RecentMatterDAO(application);

  // 최근 데이터 리스트 가져오기
  List<RecentMatterDTO> recentDataList = recentMatterDAO.getRecentDataList();
%>
	<!-- 최근에 푼 문제 리스트 -->
<div class="main-content container">
  <div class="col-sm-12">
    <div class="card-header">
      최근에 푼 문제 리스트
    </div>
    <% int count = 1; %>
    <% for (RecentMatterDTO dto2 : recentDataList) { %>
    <div class="project-item">
      <div class="project-item-title">
        <span class="name" id = "num"><strong>번호</strong></span>
        <span class="position-description" id = "num_content"><%= count++ %></span>
      </div>
      <div class="project-item-user">
        <div class="user-info">
          <span class="name" id = "title"><strong>제목</strong></span>
          <span class="position-description" id = "title_content"><%= dto2.getTitle() %></span>
        </div>
      </div>
      <div class="project-item-state">
        <span class="name" id = "language"><strong>사용언어</strong></span>
        <span class="position-description" id = "language_content"><%= dto2.getLanguage() %></span> 	
      </div>
      <div class="project-item-date">
     <span class="date" id = "createtime"><strong>문제를 풀었던 날짜</strong></span>
        <span class="position-description" id = "createtime_content"><%= dto2.getCreateTime() %></span>
      </div>
      <div class="project-item-go">
        <span>
          <button class="btn btn-rounded btn-space btn-secondary" id="btnGoMatter" onclick="goToProblem(<%= dto2.getNum() %>)">
            해당 문제 보기
          </button>
        </span>
      </div>
    </div>
    <% } %>
  </div>
</div>

<% 
	VisitDAO vdao= new VisitDAO(application);
	List<VisitDTO> vlist = vdao.getVlist();
	
	
	
%>








	<!-- 최근에 본 문제 리스트 -->
<div class="main-content container">
  <div class="col-sm-12">
    <div class="card-header">
      최근에 확인한 문제
    </div>
   
    <% for (VisitDTO dto2 : vlist) { %>
    <div class="project-item">
      <div class="project-item-title">
        <div class="user-info">
          <span class="name" id = "title"><strong><%= dto2.getQ_title() %></strong></span>
        </div>
      </div>
   <div class="project-item-state">
     <span class="date" id = "createtime"><strong>사용언어</strong></span>
        <span class="position-description" id = "createtime_content"><%= dto2.getQ_language() %></span>
      </div>
   
      
          <div class="project-item-state">
     <span class="date" id = "createtime"><strong>난이도</strong></span>
        <span class="position-description" id = "createtime_content"><%= dto2.getQ_level() %></span>
      </div>
      
         <div class="project-item-date">
     <span class="date" id = "createtime"><strong>최근본 날짜</strong></span>
        <span class="position-description" id = "createtime_content"><%= dto2.getVisitTime() %></span>
      </div>
      
      
      
      <div class="project-item-go">
        <span>
          <button class="btn btn-rounded btn-space btn-secondary" id="btnGoMatter" onclick="location.href = '../question/PlayCodingpg.jsp?q_num=<%= dto2.getQ_num() %>'">
            해당 문제 보기
          </button>
        </span>
      </div>
    </div>
    <% } %>
  </div>
</div>






 <div class="main-content container">
       
          <div class="col-sm-12">
            <div class="card card-default card-table">
              <div class="card-header">언어별 문제 리스트
           
              </div>
              <div class="card-body">
                <table class="table table-striped table-hover" id="table1">
                  <thead>
                    <tr>
          <th width = "10%"> 언어</th>
          <th width = "10%"> 맞은 문제 </th>
          <th width = "10%"> 틀린 문제 </th>
           <th width = "10%"> 시간초과</th>
            <th width = "10%"> 컴파일 에러 </th>
             <th width = "10%"> 정답 비율 </th>
       
                </tr>
                  </thead>
                  <tbody>
                     <tr class="">
                      <td class="center">Java</td>
                      <td class="center"><%=sdto.getCorrect_problems()%></td>
                      <td class="center"><%=sdto.getWrong_problems1() %></td>
                       <td class="center"><%=sdto.getTime_exceeded() %></td>
                        <td class="center"><%=sdto.getCompile_errors() %></td>
                         <td class="center">30%</td>
                    
                    </tr>
                    
                    <tr class="">
                      <td class="center">C#</td>
                       <td class="center"><%=cdto.getCorrect_problems()%></td>
                      <td class="center"><%=cdto.getWrong_problems1() %></td>
                       <td class="center"><%=cdto.getTime_exceeded() %></td>
                        <td class="center"><%=cdto.getCompile_errors() %></td>
                         <td class="center">50%</td>
                    
                    </tr>   <tr class="">
                      <td class="center">Python</td>
      <td class="center"><%=pdto.getCorrect_problems()%></td>
                      <td class="center"><%=pdto.getWrong_problems1() %></td>
                       <td class="center"><%=pdto.getTime_exceeded() %></td>
                        <td class="center"><%=pdto.getCompile_errors() %></td>
                         <td class="center">30%</td>
                    
                    </tr>  
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>



	<script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script src="../assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js"
		type="text/javascript"></script>
	<script src="../assets/js/app.js" type="text/javascript"></script>
	<script src="../assets/lib/moment.js/min/moment.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery-ui/jquery-ui.min.js"
		type="text/javascript"></script>
	<script src="../assets/lib/jquery.fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<script src="../assets/js/app-pages-calendar.js" type="text/javascript"></script>
	<script src="../assets/js/echarts.min.js"></script>
		<script src="../assets/js/profile.js"></script>
	

</body>
</html>