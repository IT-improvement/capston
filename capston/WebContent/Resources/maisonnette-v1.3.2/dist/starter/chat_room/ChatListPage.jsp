<%@page import="chatvisitcount.ChatVisitDAO"%>
<%@page import="chatvisitcount.ChatVisitDTO"%>
<%@ page import="java.util.*" %>
<%@ page import="chatlist.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String roomTitle = request.getParameter("roomTitle");
	String id = (String)session.getAttribute("UserId");
	ChatListDAO dao = new ChatListDAO(application);
	Map<String,Object> param = new HashMap<String, Object>();
	List<ChatListDTO> chatList = dao.selectChatList(param);
%>
<!DOCTYPE html>
<html>
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../assets/img/favicon.png">
    <title>코딩포차</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../assets/lib/stroke-7/style.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/perfect-scrollbar/css/perfect-scrollbar.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/lib/datatables/datatables.net-bs4/css/dataTables.bootstrap4.css"/>
    <link rel="stylesheet" href="../assets/css/app.css" type="text/css"/>
    <link rel="stylesheet" href="../assets/css/test2.css">
    
      <jsp:include page="../import/link.jsp"></jsp:include>
  </head>
  <body>
   
	  <jsp:include page="../menu.jsp"></jsp:include>
	
      <div class="main-content container">
        <div class="row">
          <div class="col-sm-12">
            <div class="card card-default card-table">
              <div class="card-header">음성 채팅 서버
                <button type="button" class="btn btn-success createRoomBtn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">방 생성</button>
                <!--방 생성 모달-->
                <form name="createFrm" method="post" action="CreateRoomProcess.jsp" onsubmit="return ">
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">방 생성</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        방 이름 : 
                        <input type="text" class="form-control" id="roomName" name="title">
                        언어 선택 : 
                        <select class="form-select" aria-label="Default select example" name="language">
                          <option value="">언어를 선택하세요.</option>
                          <option value="java">JAVA</option>
                          <option value="javascript">JAVAScript</option>
                          <option value="c">C</option>
                        </select>
                        <div class="form-check">                         
                          <input class="form-check-input" type="checkbox" value="" id="passCheck">
                          <label class="form-check-label" for="flexCheckChecked">
                            비밀번호 설정
                          </label>
                        </div>
                        <div class="roomPass">
                          <div class="row">
                            비밀번호 : <input type="password" class="form-control" id="roomPwd" disabled name="roomPwd">
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                        <button type="submit" class="btn btn-primary">생성하기</button>
                      </div>
                    </div>
                  </div>
                </div>
                </form>
                <div class="tools"></div>
              </div>
              <div class="card-body">
                <table class="table table-striped table-hover" id="table1">
                  <thead>
                    <tr>
                      <th>방 이름</th>
                      <th>생성자</th>
                      <th>참여 인원</th>
                      <th>개설시간</th>
                      <th>사용 언어</th>
                    </tr>
                  </thead>
                  <tbody>
<%
	if(chatList.isEmpty()){
%>
										<tr>
											<td colspan="5" align="center">
												현재 새로 생성된 방이 없습니다.
											</td>
										</tr>
<%
	}else{
%>
<% for(ChatListDTO chat : chatList){%>
                    <tr class="odd gradeX">
                      <td><a onclick="location.href='VisitRoomProcess.jsp?roomTitle=<%=URLEncoder.encode(chat.getRoomTitle(),"UTF-8") %>'" target="_blank"><%=chat.getRoomTitle() %></a></td>
                      <td>
                        	<%=chat.getId() %>
                      </td>
                      <td><%=chat.getStatusMem() %>/<%=chat.getAllowMem() %></td>
                      <td class="center"><%=chat.getCreateTime() %></td>
                      <td class="center"><%=chat.getLanguage() %></td>
                    </tr>
                    <% } %>
<% } %>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        
        
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="../assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
    <script src="../assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="../assets/js/app.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net-bs4/js/dataTables.bootstrap4.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net-buttons/js/dataTables.buttons.min.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.html5.min.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.flash.min.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.print.min.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net-buttons/js/buttons.colVis.min.js" type="text/javascript"></script>
    <script src="../assets/lib/datatables/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js" type="text/javascript"></script>
    <script src="../assets/js/app-tables-datatables.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      	App.dataTables();
      });
    </script>
    
    <script>
      var checkbox = document.getElementById("passCheck");
      var textbox = document.getElementById("roomPwd");

      checkbox.addEventListener("change", function() {
        if (checkbox.checked) {
          textbox.disabled = false;
        } else {
          textbox.disabled = true;
        }
      });
    </script>
    <script type="text/javascript">
    	function validateForm(form) {
    		if(form.title.value == ""){
    			alert("방 제목을 입력하세요.");
    			form.title.focus();
    			return false;
    		}
    		if(form.language.value == ""){
    			alert("언어를 선택하세요.");
    			form.language.focus();
    			return false;
    		}
		}
    </script>
  </body>
</html>