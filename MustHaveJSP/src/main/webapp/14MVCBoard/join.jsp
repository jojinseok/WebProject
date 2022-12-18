<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		body {
			background: #ABD9D0;
		}
		.loginset {
			background-color: #EEEFF1;
    		width: 300px;
    		height: 230px;
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
			width : 50%;
			border : none;
			border-radius : 4px;
			padding : 3px;
			margin : auto;
			margin-top : 20px;
			margin-left : 20px;
			margin-right : 20px;
			margin-bottom : 5px;
		}
	</style>
</head>
<body>
	<div class="loginset">
	<h2 style="text-align : center">Sign Up</h2>
	<%
    String JoinErr=request.getParameter("JoinErr");
    if(JoinErr!=null) {
    	%>
    	<p class="text" style="color: red; text-align: center">아이디가 중복되었습니다.</p>
    	<%
    }
    %>
	<form action="join_ok.jsp" method="post">
		<input class="text" type="text" name="id" placeholder="아이디" >
		<input class="text" type="password" name="pw" placeholder="비밀번호" >
		<input class="text" type="text" name="name" placeholder="이름" >
		<div style="text-align: center;">
			<input class="button" type="submit" value="가입">
		</div>
		
	</form>
	</div>
</body>
</html>