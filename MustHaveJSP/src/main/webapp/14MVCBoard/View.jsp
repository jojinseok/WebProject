<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<style>
	body {
			background: #ABD9D0;
	}
	.viewset {
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
<div class="viewset">
<h2>파일 첨부형 게시판 - 상세 보기(View)</h2>

<table class="tab" width="90%">
    <colgroup>
        <col width="15%"/> <col width="35%"/>
        <col width="15%"/> <col width="*"/>
    </colgroup>

    <!-- 게시글 정보 -->
    <tr>
        <th>번호</th> <td>${ dto.idx }</td>
        <th>작성자</th> <td>${ dto.name }</td>
    </tr>
    <tr>
        <th>작성일</th> <td>${ dto.postdate }</td>
        <th>조회수</th> <td>${ dto.visitcount }</td>
    </tr>
    <tr>
        <th>제목</th>
        <td colspan="3">${ dto.title }</td>
    </tr>
    <tr>
        <th>내용</th>
        <td colspan="3" height="100">${ dto.content }</td>
    </tr>

    <!-- 첨부파일 -->
    <tr>
        <th>첨부파일</th>
        <td>
            <c:if test="${ not empty dto.ofile }">
            ${ dto.ofile }
            <a href="../mvcboard/download.do?ofile=${ dto.ofile }&sfile=${ dto.sfile }&idx=${ dto.idx }">
                [다운로드]
            </a>
            </c:if>
        </td>
         <th>다운로드수</th>
        <td>${ dto.downcount }</td>
    </tr>
	</table>

    <!-- 하단 메뉴(버튼) -->
    <div class="buttonset">
        <button class="button" type="button" onclick="location.href='../mvcboard/pass.do?mode=edit&idx=${ param.idx }';">
            수정하기
        </button>
        <button class="button" type="button" onclick="location.href='../mvcboard/pass.do?mode=delete&idx=${ param.idx }';">
            삭제하기
        </button>
        <button class="button" type="button" onclick="location.href='../mvcboard/list.do';">
            목록 바로가기
        </button>
        </div>
</div>
</body>
</html>