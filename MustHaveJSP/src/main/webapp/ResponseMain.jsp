
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - response</title></head>
<body>
    <h2>1. 로그인 폼</h2>
    <% 
    String loginErr = request.getParameter("loginErr"); //getParameter() 메소드로 loginErr라는 이름을 가진 클라이언트의 요청 매개변수를 loginErr에 저장 (전송되는 값이 하나일 경우 사용)
    if (loginErr != null) out.print("로그인 실패"); //loginErr가 null이 아닐경우 로그인 실패 메시지 출력
    %>
    <form action="./ResponseLogin.jsp" method="post"> <!--POST 방식으로 요청 및 ResponseLogin.jsp 에 값 넘김 -->
        아이디 : <input type="text" name="user_id" /><br /> <!--<input> 태그로 텍스트 입력-->
        패스워드 : <input type="text" name="user_pwd" /><br /> <!--<input> 태그로 텍스트 입력-->
        <input type="submit" value="로그인" /> <!--<input> 태그의 submit을 사용해 form에 입력한 값을 서버로 넘김-->
    </form>

    <h2>2. HTTP 응답 헤더 설정하기</h2>
    <form action="./ResponseHeader.jsp" method="get"> <!--GET 방식으로 요청 및 ResponseHeader.jsp 에 값 넘김 -->
        날짜 형식 : <input type="text" name="add_date" value="2021-10-25 09:00" /><br /> <!--<input> 태그로 텍스트 입력 (기본 값=2021-10-25 09:00)--> 
        숫자 형식 : <input type="text" name="add_int" value="8282" /><br /> <!--<input> 태그로 텍스트 입력 (기본 값=8282)-->
        문자 형식 : <input type="text" name="add_str" value="홍길동" /><br /> <!--<input> 태그로 텍스트 입력 (기본 값=홍길동)-->
        <input type="submit" value="응답 헤더 설정 & 출력" /> <!--<input> 태그의 submit을 사용해 form에 입력한 값을 서버로 넘김-->
    </form>
</body>
</html>