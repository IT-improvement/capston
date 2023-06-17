<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>코딩포차</title>
    <jsp:include page="../import/link.jsp"></jsp:include>
    <link rel="stylesheet" href= "../assets/css/login.css"/>
  </head>
  <body class="mai-splash-screen">
    <div class="mai-wrapper mai-login">
      <div class="main-content container">
        <div class="splash-container row">
          <div class="col-md-6 user-message"><span class="splash-message text-right">코딩포차에<br>오신걸<br>환영합니다</span><span class="alternative-message text-right highlighted"><b>계정이 없으신가요?<br><a href="pages-sign-up.jsp">회원가입</a></b></span></div>
          <div class="col-md-6 form-message"><span class="splash-description text-center mt-5 mb-5">사용자계정으로 로그인하세요</span>
            <form action="LoginProcess.jsp" method="post" name="loginFrm" id="loginFrm">
              <div cl	ass="form-group">
                <div class="input-group">
                  <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                  <input class="form-control" id="username" type="text" placeholder="Username" autocomplete="off" name="id">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-prepend"><i class="icon s7-lock"></i></div>
                  <input class="form-control" id="password" type="password" placeholder="Password" name="pwd">
                </div>
              </div>
              <div class="form-group row login-tools">
                <p class="contact mt-4">비밀번호를 잊어버리셨나요?<a href="pages-forgot-password.jsp">비밀번호찾기</a></p>
              </div>
              <div class="form-group login-submit"><button type="button" value="로그인" class="submit_button" onclick="fund()">로그인</button></div>
            </form>
            <div class="out-links"><a href="#">@2023 Walking For Perfection</a></div>
          </div>
        </div>
      </div>
    </div>
    <script>
    	document.getElementById("loginFrm").onsubmit = function(){fund()};
    	function fund(){
    	var logform = document.loginFrm;
    	var id = logform.id.value;
    	var pwd = logform.pwd.value;
    	if(id.length==0 || id==""){
    		alert("아이디를 입력하세요");
    		logform.id.focus();
    	}else if(pwd.length==0 || pwd==""){
    		alert("비밀번호를 입력하세요")
    		logform.pwd.focus();
    	}else{
    		logform.submit();
    	}
    	}
    </script>
    <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      });
      
    </script>
  </body>
</html>