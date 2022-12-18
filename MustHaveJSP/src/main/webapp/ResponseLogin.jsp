<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - Response</title></head>
<body>
<%
String id = request.getParameter("user_id"); //getParameter() 메소드로 loginErr라는 이름을 가진 클라이언트의 요청 매개변수를 loginErr에 저장 (전송되는 값이 하나일 경우 사용)
String pwd = request.getParameter("user_pwd"); //getParameter() 메소드로 loginErr라는 이름을 가진 클라이언트의 요청 매개변수를 loginErr에 저장 (전송되는 값이 하나일 경우 사용)
if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) { //아이디가 must 이며 (and) 비밀번호가 1234 일 경우
    response.sendRedirect("ResponseWelcome.jsp"); //해당 if 문이 맞을 경우 sendRedirect() 메소드로 ResponseWelcome.jsp 페이지로 이동
}
else {
    request.getRequestDispatcher("ResponseMain.jsp?loginErr=1") //if문이 틀릴경우 매개변수 loginErr가 null이 아닌 1의 값을 가진 채로 전달되고 로그인 실패
       .forward(request, response); //request내장 객체를 통해 로그인 페이지인 responseMain.jsp로 포워드
}
%>
</body>
</html>