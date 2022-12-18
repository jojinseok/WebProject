<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pw");
	String name = request.getParameter("name");
	
	// 1.변수선언
	String url = "jdbc:mysql://localhost:3306/test";
	String uid = "root";
	String upw = "whwlstjr1!";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into member (id,pass,name) values(?, ?, ?)";
	
	try{
		// 1. 드라이버 로드
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2. conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// 3. pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			
	
		    request.getRequestDispatcher("LoginForm.jsp?Err=1").forward(request, response);
		} else{ // 실패
			request.getRequestDispatcher("join.jsp?JoinErr=1").forward(request, response);
		}
		
	} catch(Exception e){
		request.getRequestDispatcher("join.jsp?JoinErr=1").forward(request, response);
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>