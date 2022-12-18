
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
<%
request.setCharacterEncoding("UTF-8");  
String id = request.getParameter("id"); //getParameter() 메소드로 id라는 이름을 가진 클라이언트의 요청 매개변수를 id에 저장 (전송되는 값이 하나일 경우 사용)
String sex = request.getParameter("sex"); //getParameter() 메소드로 sex라는 이름을 가진 클라이언트의 요청 매개변수를 sex에 저장 (전송되는 값이 하나일 경우 사용)
String[] favo = request.getParameterValues("favo"); //여러개 선택에 사용되는 checkbox는 getParameter() 메소드가 아닌 getParameterValues()로 요청 매개변수 저장  
String favoStr = "";
if (favo != null) { // favo 배열의 값 반복문으로 출력  
    for (int i = 0; i < favo.length; i++) {
        favoStr += favo[i] + " ";
    }
}
String intro = request.getParameter("intro").replace("\r\n", "<br/>");  //getParameter() 메소드로 intro 라는 이름을 가진 클라이언트 요청 매개변수를 intro에 저장함 (이때 "/r/n"처리 되있는 부분을 "<br/>"로 변경 후 저장)
%>	
<ul> <!--번호 없는 목록으로 값 출력-->
    <li>아이디 : <%= id %></li>
    <li>성별 : <%= sex %></li>
    <li>관심사항 : <%= favoStr %></li>
    <li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>