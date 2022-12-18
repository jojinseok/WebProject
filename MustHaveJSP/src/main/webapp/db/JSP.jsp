<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
</head>
<body>
MEMBER Tatble Contents
<table width="100%" border="1">
<tr>
<td>ID</td><td>PWD</td><td>NAME</td>
</tr>
<% 
//MySQL JDBC Driver Loading
Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
try{
	String jdbcDriver="jdbc:mysql://localhost:3306/test";
	String dbUser="root";
	String dbPass="whwlstjr1!";
	String query="select idx,name,postdate from mvcboard";
	
	//Create DB Connection
	conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	stmt=conn.createStatement();
	rs=stmt.executeQuery(query);
	
	while(rs.next()){
		%>
		<tr>
		<td><%= rs.getString("idx") %></td>
		<td><%= rs.getString("name") %></td>
		<td><%= rs.getString("postdate") %></td>
	<% 
	}
}catch(SQLException ex){
	out.println(ex.getMessage());
	ex.printStackTrace();
}finally{
	if(rs!=null) try {rs.close();} catch(SQLException ex){}
	if(stmt!=null) try {stmt.close();} catch(SQLException ex){}
	if(conn!=null) try {conn.close();} catch(SQLException ex){}
	
}
%>

</table>
</body>
</html>