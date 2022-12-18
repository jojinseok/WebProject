<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
<%
request.setCharacterEncoding("UTF-8"); //POST 방식으로 전송된 값 중 한국어가 깨질 경우 다국어를 지원하는 UTF-8로 인코딩  
%>
    <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
    <ul>
        <li>데이터 전송 방식 : <%= request.getMethod() %></li> <!--getMethod() 메소드는 GET과 POST 의 전송 방식을 반환함, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>URL : <%= request.getRequestURL() %></li> <!--getRequestURL() 메소드는 요청 주소를 반환함, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>URI : <%= request.getRequestURI() %></li> <!--getRequestURI() 메소드는 요청 주소를 반환함, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>프로토콜 : <%= request.getProtocol() %></li> <!--getProtocol() 메소드는 프로토콜 반환, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>서버명 : <%= request.getServerName() %></li> <!--getServerName() 메소드는 서버명을 반환함, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>서버 포트 : <%= request.getServerPort() %></li> <!--getServerPort() 메소드는 서버가 사용하는 포트번호를 반환함, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>클라이언트 IP 주소 : <%= request.getRemoteAddr() %></li> <!--getRemoteAddr() 메소드는 클라이언트의 IP 주소 반환, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>쿼리스트링 : <%= request.getQueryString() %></li> <!--getQueryString() 메소드는 요청 주소 뒷부분의 매개변수 전달을 위한 쿼리스트링 전체를 반환, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>전송된 값 1 : <%= request.getParameter("eng") %></li> <!--getParameter() 메소드로 eng라는 이름을 가진 클라이언트의 요청 매개변수 반환 , <%= %>로 선언했기 때문에 해당 값 바로 출력-->
        <li>전송된 값 2 : <%= request.getParameter("han") %></li> <!--getParameter() 메소드로 han라는 이름을 가진 클라이언트의 요청 매개변수 반환, <%= %>로 선언했기 때문에 해당 값 바로 출력-->
    </ul>
</body>
</html>