<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - application</title></head>
<body>
    <h2>web.xml에 설정한 내용 읽어오기</h2>
    초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %> <!-- 메소드를 이용해서 web.xml에 설정한 초기화 매개변수 읽기 -->
	  <h2>서버의 물리적 경로 얻어오기</h2>
    application 내장 객체 : <%= application.getRealPath("/02ImplicitObject") %> <!-- 메소드로 현재 폴더의 물리적 경로 출력 -->
	  <h2>선언부에서 application 내장 객체 사용하기</h2>
    <%!
    public String useImplicitObject() {
        return this.getServletContext().getRealPath("/02ImplicitObject"); //자기자신의 물리적 경로 출력
    }
    public String useImplicitObject(ServletContext app) {
        return app.getRealPath("/02ImplicitObject"); //app은 웹 애플리케이션을 구성하는 모든 JSP에서 접근 가능한 객체로 웹 애플리케이션의 물리적 경로 출력
    }
    %>
    <ul>
        <li>this 사용 : <%= useImplicitObject() %></li> <!-- 위의 java 함수 사용 -->
        <li>내장 객체를 인수로 전달 : <%= useImplicitObject(application) %></li> <!-- 위의 java 함수 사용 -->
    </ul>
</body>
</html>