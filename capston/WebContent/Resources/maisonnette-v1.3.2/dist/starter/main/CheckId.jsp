<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="idcheckprocess.jsp"></jsp:include>
<%
	String id1 = request.getParameter("id");
	MemberDAO dao = new MemberDAO(application);
	int result = dao.checkid(id1);
	int result1 = (int)request.getAttribute("result");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복 확인</title>
</head>
<body onload="pValue()">
	<br>
	<b><font size="4" color="gray">아이디 중복체크</font></b>
	<hr size="1" width="460">
	<br>
	<div id="chk">
		<form id="checkForm" action="idcheckprocess.jsp" name="checkForm">
		<input type="text" name="userId" id="userId"> 
		<!-- 
		 <input type="button" value="중복확인" onclick="idCheck()">		
		 -->
		</form>
		<div id="msg"></div>
		<br>
		<input id="cancelBtn" type="button" value="취소" onclick="window.close()">
		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
	</div>
</body>
<script>
function pValue(){
    document.getElementById("userId").value = opener.document.userInfo.id.value;
    if(<%=result%> ==0){
		document.getElementById("cancelBtn").style.visibility='hidden';
        document.getElementById("useBtn").style.visibility='visible';
        document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
	}else{
		alert("사용할수없는 아이디입니다.");
        document.getElementById("cancelBtn").style.visibility='visible';
        document.getElementById("useBtn").style.visibility='hidden';
        document.getElementById("msg").innerHTML ="";
	}
}

// 아이디 중복체크
function idCheck(){

    var id = document.getElementById("id").value;
    var checkForm = document.checkForm;
    if (!id) {
        alert("아이디를 입력하지 않았습니다.");
        return false;
    } 
    else
    {
    }
} 

//사용하기 클릭 시 부모창으로 값 전달
function sendCheckValue(){
            // 중복체크 결과인 idCheck 값을 전달한다.
            opener.document.userInfo.idDuplication.value ="idCheck";
            // 회원가입 화면의 ID입력란에 값을 전달
            //opener.document.userInfo.id.value = document.getElementById("userId").value;
            
            if (opener != null) {
                opener.chkForm = null;
                self.close();
            }    
        }   
</script>
</html>

