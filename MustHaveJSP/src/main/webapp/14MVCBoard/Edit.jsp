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
        if (form.name.value == "") {
            alert("작성자를 입력하세요.");
            form.name.focus();
            return false;
        }
        if (form.title.value == "") {
            alert("제목을 입력하세요.");
            form.title.focus();
            return false;
        }
        if (form.content.value == "") {
            alert("내용을 입력하세요.");
            form.content.focus();
            return false;
        }
    }
</script>
<style>
	body {
			background: #ABD9D0;
	}
	.editset {
		background-color: #EEEFF1;
    	width: auto;
    	height: auto;
    	border: none;
    	border-radius: 5px;
    	margin: 30px 30px auto;
    	padding: 20px;
	}
	table.tab {
		border-collapse: separate;
		border-spacing: 1px;
		text-align: left;
		line-height: 1.5;
		border-top: 1px solid #ccc;
		margin: 20px 10px;
		background: white;
	}
	table.tab th {
		width: 35px;
		padding: 10px;
		font-weight: bold;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
 		background: #E7F3F1;
 		text-align: center;
	}
	table.tab td {
		width: 350px;
		padding: 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
	}
	.button {
		background : white;
		width : 100px;
		border : none;
		border-radius : 4px;
		padding : 3px;
		margin : auto;
		margin-left : 20px;
		margin-right : 20px;
		margin-bottom : 5px;
	}
	.buttonset {
		text-align: center;
	}
</style>
</head>
<body>
<div class="editset">
	<h2>파일 첨부형 게시판 - 수정하기(Edit)</h2>
	<form name="writeFrm" method="post" enctype="multipart/form-data" action="../mvcboard/edit.do" onsubmit="return validateForm(this);">
		<input type="hidden" name="idx" value="${ dto.idx }"/>
		<input type="hidden" name="prevOfile" value="${ dto.ofile }" />
		<input type="hidden" name="prevSfile" value="${ dto.sfile }" />
    
		<table class="tab" width="90%">
    		<tr>
        		<th scope="row">작성자</th>
        		<td>
            		<input type="text" name="name" style="width:150px;" value="${ dto.name }" />
        		</td>
    		</tr>
    		<tr>
        		<th>제목</th>
        		<td>
            		<input type="text" name="title" style="width:90%;" value="${ dto.title }" />
        		</td>
    		</tr>
    		<tr>
        		<th>내용</th>
        		<td>
        		    <textarea name="content" style="width:90%;height:100px;">${ dto.content }</textarea>
    		    </td>
    		</tr>
    		<tr>
    		    <th>첨부 파일</th>
    		    <td>
    		        <input type="file" name="ofile" />
    		    </td>
    		</tr>
    	</table>
    	<div class="buttonset">
        	<button class="button" type="submit">작성 완료</button>
        	<button class="button" type="reset">RESET</button>
        	<button class="button" type="button" onclick="location.href='../mvcboard/list.do';">
        	목록 바로가기
        	</button>
        </div>
		
	</form>
</div>
</body>
</html>