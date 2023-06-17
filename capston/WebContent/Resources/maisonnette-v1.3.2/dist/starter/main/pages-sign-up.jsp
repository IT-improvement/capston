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
    <link rel="stylesheet" type="text/css" href="../assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/perfect-scrollbar/css/perfect-scrollbar.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="../assets/css/app.css" type="text/css"/>
    <link rel="stylesheet" href="../assets/css/login.css" type="text/css"/>
  </head>
  <body class="mai-splash-screen">
            <form action="sign_up_process.jsp" method="post" class="sign-up-form" id="userInfo" name="userInfo">
    <div class="mai-wrapper mai-sign-up">
      <div class="main-content container">
        <div class="splash-container row">
          <div class="col-md-6 form-message"><span class="splash-description text-center mt-4 mb-4">회원가입</span>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                  <input class="form-control" name="id" id="id" type="text" placeholder="아이디" onkeydown="inputIdChk()">
                  <input type="button" class="double_id" id="" name="" value="중복확인" onclick="openIdChk()">
                  <input type="hidden" id="idDuplication" name="idDuplication" value="idUncheck">
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <div class="input-group-prepend"><i class="icon s7-mail"></i></div>
                  <input class="form-control" name="email" type="text" placeholder="이메일">
                </div>
              </div>
              <div class="form-group inline row">
                <div class="col-sm-6">
                  <div class="input-group">
                    <div class="input-group-prepend"><i class="icon s7-lock"></i></div>
                    <input class="form-control" name="pwd" type="password" placeholder="비밀번호">
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="input-group">
                    <div class="input-group-prepend"><i class="icon s7-lock"></i></div>
                    <input class="form-control" name="checkpwd" type="password" placeholder="비밀번호 확인">
                  </div>
                </div>
              </div>
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                    <input class="form-control" name="phoneNum"type="text" placeholder="핸드폰번호" autocomplete="off">
                  </div>
                </div>
              <div class="form-group sign-up-submit"><button type="button" value="회원가입" class="submit_button" onclick="checkValue()">회원가입</button></div>
              <p class="conditions">@2023 Walking For Perfection<br></p>
            <div class="out-links"><a href="#"></a></div>
          </div>
          <div class="col-md-6 user-message">
	<div class="form-group">
            <div class="input-group">
              <div class="input-group-prepend"><i class="icon s7-user"></i></div>
              <input class="form-control" name="zip_code" id="zip-code" type="text" placeholder="우편번호" readonly>
              <input type="button" class="double_id" id="" name="" value="우편번호" onclick="openZipSearch()">
            </div>
	</div>
            <div class="form-group">
              <div class="input-group">
                <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                <input class="form-control" name="address_1" id="address-1" type="text" placeholder="주소" readonly>
              </div>
            </div>
            <div class="form-group">
              <div class="input-group">
                <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                <input class="form-control" name="address_2" id="address-2" type="text" placeholder="상세주소" autocomplete="off">
              </div>
            </div>
            <div class="form-group">
              <div class="input-group">
                <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                <select name="question" id="question" class="form-control">
					<option value="------선택하세요------">------선택하세요------</option>                
					<option value="내가 아끼는 1순위는?">내가 아끼는 1순위는?</option>                
					<option value="내가 졸업한 초등학교는?">내가 졸업한 초등학교는?</option>                
                </select>
              </div>
            </div>
            <div class="form-group">
              <div class="input-group">
                <div class="input-group-prepend"><i class="icon s7-user"></i></div>
                <input class="form-control" name="answer" id="answer" type="text" placeholder="답변" autocomplete="off">
              </div>
            </div>
     <p class="contact mt-4">일행이 있으신가요?<a href="pages-login.jsp">로그인하러가기</a></p>
      </div>
    </div>
    </div>
    </div>
            </form>      
    <script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
    <script src="../assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="../assets/js/app.js" type="text/javascript"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      });
    </script>
    <script>
    function openZipSearch() {
           new daum.Postcode( {
             oncomplete: function( data ) {
               document.getElementById( 'zip-code' ).value = data.zonecode;
               document.getElementById( 'address-1' ).value = data.address;
               document.getElementById( 'address-2' ).focus();
             }
           } ).open();
         }
    
    function inputIdChk(){
        document.userInfo.idDuplication.value ="idUncheck";
    }
    
    document.getElementById("userInfo").onsubmit = function(){checkValue()};
    function checkValue(){
    	var frm = document.userInfo;
    	var id = userInfo.id.value;
    	var pwd = userInfo.pwd.value;
    	var checkpwd = userInfo.checkpwd.value;
    	var phoneNum = userInfo.phoneNum.value;
    	var email = userInfo.email.value;
    	var idDuplication = userInfo.idDuplication.value;
    	var address_1 = userInfo.address_1.value;
    	var address_2 = userInfo.address_2.value;
    	var question = userInfo.question.value;
    	var answer = userInfo.answer.value;
		if(id.length==0 ||id==""){
			alert("아이디를 입력하세요");
			frm.id.focus();
		}else if(email.length==0 ||email==""){
			alert("이메일을 입력하세요");
			frm.email.focus();
		}else if(pwd.length==0 ||pwd==""){
			alert("비밀번호를 입력하세요");
			frm.pwd.focus();
		}else if(checkpwd.length==0 ||checkpwd==""){
			alert("비밀번호 확인을 입력하세요");
			frm.checkpwd.focus();
		}else if(pwd!=checkpwd){
			alert("비밀번호가 일치하지 않습니다");
			frm.checkpwd.focus();
		}else if(phoneNum.length==0 ||phoneNum==""){
			alert("헨드폰번호를 입력하세요");
			frm.phoneNum.focus();
		}else if(address_1.length==0 ||address_1==""){
			alert("우편번호 버튼을 누르세요");
			frm.address_1.focus();
		}else if(address_2.length==0 ||address_2==""){
			alert("상세주소를 입력하세요");
			frm.address_2.focus();
		}else if(question=="------선택하세요------"){
			alert("질문을 선택하세요");
			frm.question.focus();
		}else if(answer.length==0 ||answer==""){
			alert("답변을 입력하세요");
			frm.answer.focus();
		}else if(idDuplication != "idCheck"){
			alert("아이디를 중복체크 해주세요");
			frm.phoneNum.focus();
		}else{
			frm.submit();
		}
    }
    function openIdChk(){
    	var frm = document.userInfo;
    	var id = userInfo.id.value;
    	if(id.length==0 ||id==""){
			alert("아이디를 입력하세요");
			frm.id.focus();
    	}else{
    		window.name="parentForm";
    		window.open("CheckId.jsp?id="+id,"chkForm","width=500, height=300, resizable=no, scrollbars = no");
    	}
    }
    </script>
  </body>
</html>