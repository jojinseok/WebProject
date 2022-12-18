<%@ page import="java.util.Collection"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 응답 헤더에 추가할 값 준비 
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm"); //년-월-일 시-분 날짜 포멧 생성
long add_date = s.parse(request.getParameter("add_date")).getTime();  //getParameter() 메소드로 add_date라는 이름을 가진 클라이언트의 요청 매개변수를 반환하며 해당 반환 값은 년-월-일 String형식이기 때문에 long타입으로 변경 후 add_date에 저장 (전송되는 값이 하나일 경우 사용)
java.sql.Date date2 = new java.sql.Date(add_date); //SimpleDateFormat을 SQL Date 형식으로 변경 , SQL Date는 년, 월, 일 정보만 갖고 있고, 시, 분, 초 의 정보는 갖고 있지 않음
System.out.println(date2);
int add_int = Integer.parseInt(request.getParameter("add_int")); //getParameter() 메소드로 add_int라는 이름을 가진 클라이언트의 요청 매개변수를 String형에서 int형으로 변경 후 add_int에 저장 (전송되는 값이 하나일 경우 사용)
String add_str = request.getParameter("add_str"); //getParameter() 메소드로 add_str라는 이름을 가진 클라이언트의 요청 매개변수를 add_str에 저장 (전송되는 값이 하나일 경우 사용)
// 응답 헤더에 값 추가
response.addDateHeader("myBirthday", add_date);//Mon, 25 Oct 2021 00:00:00 GMT가 세팅됨
response.addIntHeader("myNumber", add_int);//8282가 세팅됨
response.addIntHeader("myNumber", 1004); //1004가 추가
response.addHeader("myName", add_str); //홍길동으로 세팅됨
response.setHeader("myName", "안중근");  //안중근으로 수정됨
%>
<html>
<head><title>내장 객체 - response</title></head>
<body>	
    <h2>응답 헤더 정보 출력하기</h2>
    <%
    Collection<String> headerNames = response.getHeaderNames();
    for (String hName : headerNames) { //headerNames의 크기만큼 반복
        String hValue = response.getHeader(hName); //headerNames의 키-값들을 전부 출력 
    %>
        <li><%= hName %> : <%= hValue %></li>
    <%
    }   
    %>
    
    <h2>myNumber만 출력하기</h2>
    <%
	Collection<String> myNumber = response.getHeaders("myNumber"); //myNumber라는 이름의 값만 반환
	for (String myNum : myNumber) { //myNumber의 크기만큼 반복
	%>
		<li>myNumber : <%= myNum %></li>
	<%
	}
	%>
</body>
</html>