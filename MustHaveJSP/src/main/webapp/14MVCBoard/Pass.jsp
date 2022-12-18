<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<script type="text/javascript">
    function validateForm(form) {
        if (form.pass.value == "") {
            alert("비밀번호를 입력하세요.");
            form.pass.focus();
            return false;
        }
    }
</script>
<style>
		body {
			background: #ABD9D0;
		}
		.passSet {
			background-color: #EEEFF1;
    		width: 300px;
    		height: 150px;
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
			width : 31%;
			border : none;
			border-radius : 4px;
			padding : 3px;
			margin : auto;
			margin-bottom : 5px;
		}
		.buttonset {
			margin-top: 30px;
			text-align: center;
		}
	</style>
</head>
<body>
<div class="passSet"> 
<h2>비밀번호 검증(Pass)</h2>
<form name="writeFrm" method="post" action="../mvcboard/pass.do" onsubmit="return validateForm(this);">
<input type="hidden" name="idx" value="${ param.idx }" />
<input type="hidden" name="mode" value="${ param.mode }" />
    <input class="text" type="password" name="pass" placeholder="비밀번호" />
        <div class="buttonset">
            <button class="button" type="submit">검증하기</button>
            <button class="button" type="reset">초기화</button>
            <button class="button" type="button" onclick="location.href='../mvcboard/list.do';">
                목록가기
            </button>    
        </div>
</form>
</div>
</body>
</html>