<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Session</title>
	<style>
		body {
			background: #ABD9D0;
		}
		.loginset {
			background-color: #EEEFF1;
    		width: 300px;
    		height: 200px;
    		border: none;
    		border-radius: 5px;
    		margin: 100px auto;
    		padding: 20px;
		}
		.text {
			width : 250px;
			border : none;
			border-radius : 4px;
			padding : 3px;
			margin : auto;
			margin-bottom : 6px;
			display : block;
		}
		.button {
			background : white;
			width : 35%;
			border : none;
			border-radius : 4px;
			padding : 3px;
			margin-top : 20px;
			margin-left : 20px;
			margin-right : 20px;
			margin-bottom : 5px;
		}
	</style>
</head>
<body>
	<div class="loginset">
    <h2 style="text-align : center">Login</h2>
    <span class="text" style="color: red; text-align: center"> 
        <%= request.getAttribute("LoginErrMsg") == null ?
                "" : request.getAttribute("LoginErrMsg") %>
    </span>
    <%
    if (session.getAttribute("UserId") == null) {  // 로그인 상태 확인
        // 로그아웃 상태
    %>
    <script>
    function validateForm(form) {
        if (!form.user_id.value) {
            alert("아이디를 입력하세요.");
            return false;
        }
        if (form.user_pw.value == "") {
            alert("패스워드를 입력하세요.");
            return false;
        }
    }
    </script>
    <form action="LoginProcess.jsp" method="post" name="loginFrm"
        onsubmit="return validateForm(this);">
        <input class="text" type="text" name="user_id" placeholder="아이디" />
        <input class="text" type="password" name="user_pw" placeholder="비밀번호"/>
        <input style="float:left" class="button" type="submit" value="로그인하기" />
    		<%
    		} 
    		%>
      		<button style="float:right" class="button" type="button" onclick="location.href='join.jsp';">회원가입</button>
    </form>   
    </div>   
</body>
</html>