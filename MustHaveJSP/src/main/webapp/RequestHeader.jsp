<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
    <h2>3. 요청 헤더 정보 출력하기</h2>
    <%
    Enumeration headers = request.getHeaderNames();  //모든 요청 헤더의 이름을 반환하며 반환 타입은 Enumeration임
    while (headers.hasMoreElements()) {  //반복(출력할 요청 헤더명이 더이상 없을때 까지 반복)
        String headerName = (String)headers.nextElement(); //해당 헤더 요소의 이름 반환 및 String 타입으로 변환  
        String headerValue = request.getHeader(headerName); //해당 이름을 가진 헤더의 값 반환 
        out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br/>");
    }
    %>
    <p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p> <!-- referer 이란 리퍼라는 웹을 서핑하면서 링크를 통해 다른 사이트로 방문시 남는 흔적을 의미함 -->
</body>
</html>