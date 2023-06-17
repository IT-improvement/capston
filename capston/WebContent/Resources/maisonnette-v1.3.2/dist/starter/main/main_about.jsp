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
</head>
<body>
    <%
    String UserId = (String)session.getAttribute("UserId");
    %>
 <jsp:include page="../menu.jsp"></jsp:include>
      
      <div class="main-content container">
        <h1 class="text-left">코딩포차에 대해서</h1>
        <h3 class="text-left">
        코딩을 직접 쳐볼 수 있는 기휘<br>
       여러사람과 소통하면서 공부 할 수 있는 기회<br>
       실시간 채팅 및 음성채팅을 활용하여 공부 할 수 있는 기회<br>
        </h3>
        <h5 class="text-center">@ Walking For Perfection</h5>
        
      </div>

    <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      });
      
    </script>
  </body>
</html>