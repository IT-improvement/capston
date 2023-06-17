<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../assets/img/favicon.png">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" type="text/css" href="../assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/perfect-scrollbar/css/perfect-scrollbar.css"/>
    <link rel="stylesheet" href="../assets/css/app.css" type="text/css"/>
    <link rel="stylesheet" href="../assets/css/login.css" type="text/css"/>
  </head>
  <body class="mai-splash-screen">
    <div class="mai-wrapper mai-forgot-password">
      <div class="main-content container">
        <div class="splash-container row">
          <div class="col-md-6 user-message"><span class="splash-message text-right">코딩포차<br>비밀번호 찾기<br></span><span class="alternative-message text-right"><b>일행이 있으신가요?<a href="pages-login.jsp">로그인하러가기</a></b></span></div>
          <div class="col-md-6 form-message"><span class="splash-description text-center mt-5 mb-5">등록된 회원 이메일을 입력해주세요</span>
            <form class="form-forgot-password" id="forgotpwd" name="forgotpwd" method="post">
              <div class="form-group">
                               <div class="input-group">
                  <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                  <input class="form-control" id="username" type="text" placeholder="아이디" autocomplete="off" name="id">
                </div>
                  <div class="input-group">
                    <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                    <select name="question" id="question" class="form-control">
              <option value="------선택하세요------">------선택하세요------</option>                
              <option value="내가 아끼는 1순위는?">내가 아끼는 1순위는?</option>                
              <option value="내가 졸업한 초등학교는?">내가 졸업한 초등학교는?</option>                
                    </select>
                </div>
                <div class="input-group">
                  <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                  <input class="form-control" name="answer" id="answer" type="text" placeholder="답변" autocomplete="off">
                </div>
              </div>
              <p class="contact mt-4">일행이 없으신가요?<a href="pages-sign-up.jsp">회원가입하러가기</a></p>
              <div class="form-group login-submit"><a class="btn btn-lg btn-primary btn-block" onclick="fund()" data-dismiss="modal">비밀번호 찾기</a></div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
    <script src="../assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="../assets/js/app.js" type="text/javascript"></script>
    <script type="text/javascript">
document.getElementById("loginFrm").onsubmit = function(){fund()};
    	function fund(){
    	var forgotpwd = document.forgotpwd;
    	var id = forgotpwd.id.value;
    	var question = forgotpwd.question.value;
    	var answer = forgotpwd.answer.value;
    	if(question=="------선택하세요------"){
			alert("질문을 선택하세요");
			frm.question.focus();
		}else if(answer.length==0 ||answer==""){
			alert("답변을 입력하세요");
			frm.answer.focus();
		}else{
			window.name="parentForm";
    		window.open("forgotpwd.jsp?id="+id+"&question="+question+"&answer="+answer,"chkForm","width=500, height=300, resizable=no, scrollbars = no");
    	}
    	}

      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      });
      
    </script>
  </body>
</html>