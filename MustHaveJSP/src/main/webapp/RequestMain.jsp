<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
    <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
    <a href="./RequestWebInfo.jsp?eng=Hello&han=안녕">  <!--GET 방식으로 요청 및 클릭 시 RequsetWebInfo.jsp 실행-->
      GET 방식 전송
    </a>
    <br />
    <form action="RequestWebInfo.jsp" method="post">  <!--POST 방식으로 요청 및 RequestWebInfo.jsp 에 값 넘김 -->
        영어 : <input type="text" name="eng" value="Bye" /><br /> <!--<input> 태그로 텍스트 입력(기본 값 : Bye)-->  
        한글 : <input type="text" name="han" value="잘 가" /><br /> <!--<input> 태그로 텍스트 입력(기본 값 : 잘 가)-->
        <input type="submit" value="POST 방식 전송" /> <!--<input> 태그의 submit을 사용해 form에 입력한 값을 서버로 넘김-->
    </form>

    <h2>2. 클라이언트의 요청 매개변수 읽기</h2>
    <form method="post" action="RequestParameter.jsp">  <!--다양한 <input> 태그 사용, POST방식으로 RequestParameter.jsp 에 값 넘김-->
        아이디 : <input type="text" name="id" value="" /><br /> <!--<input> 태그로 텍스트 입력(기본 값 : "")-->
        성별 :
        <input type="radio" name="sex" value="man" />남자 <!--<input> 태그로 라디오 버튼 구현 (하나만 선택 가능, 값=man)-->
        <input type="radio" name="sex" value="woman" checked="checked" />여자 <!--<input> 태그로 라디오 버튼 구현 (하나만 선택 가능, 값=woman)-->
        <br />
        관심사항 :
        <input type="checkbox" name="favo" value="eco" />경제 <!--<input> 태그로 체크박스 구현 (여러개 선택 가능, 값=eco)-->
        <input type="checkbox" name="favo" value="pol" checked="checked" />정치 <!--<input> 태그로 체크박스 구현 (여러개 선택 가능, 값=pol)-->
        <input type="checkbox" name="favo" value="ent" />연예<br /> <!--<input> 태그로 체크박스 구현 (여러개 선택 가능, 값=ent)-->
        자기소개:
        <textarea name="intro" cols="30" rows="4"></textarea> <!--<input> 태그로 여러줄의 텍스트 입력 가능한 폼 구현 (1줄당 30개씩 4줄)-->
        <br />
        <input type="submit" value="전송하기" /> <!--<input> 태그의 submit을 사용해 form에 입력한 값을 서버로 넘김-->
    </form>

    <h2>3. HTTP 요청 헤더 정보 읽기</h2>
    <a href="RequestHeader.jsp">  <!--HTTP 요청 헤더 읽기 및 클릭 시 링크 (RequestHeader.jsp 실행)-->
        요청 헤더 정보 읽기
    </a>    
</body>
</html>