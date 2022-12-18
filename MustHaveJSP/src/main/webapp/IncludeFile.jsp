<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    String today="수요일";
    String tomorrow="목요일";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include File</title>
</head>
<body>
<%
out.println(today+tomorrow);
%>
<br>
<hr>
</body>
</html>