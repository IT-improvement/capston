<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			</div>
		</nav>
		
		</div>