
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - out</title></head>
<body>
    <%
    // 버퍼 내용 삭제하기
    out.print("출력되지 않는 텍스트");  // 버퍼에 저장  
    out.clearBuffer();  // 버퍼를 비움(윗 줄의 출력 결과 사라짐) , 버퍼 안의 내용을 삭제하는 메소드
    out.print("<h2>out 내장 객체</h2>");
    // 버퍼 크기 정보 확인
    out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>"); //out은 변수 등의 값을 웹 브라우저에 출력할때 주로 사용되며 여기서는 getBufferSize()는 현재 페이지에 설정된 버퍼의 크기를 가져오며 기본값은 8KB임
    out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>"); //메소드를 사용하고 남은 버퍼의 크기를 출력
    out.flush();  // 버퍼 내용 출력 
    out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");//버퍼가 flush 된 후의 남은 버퍼의 크기 출력
    // 다양한 타입의 값 출력
    out.print(1);
    out.print(false);
    out.print('가');
    %>
</body>
</html>