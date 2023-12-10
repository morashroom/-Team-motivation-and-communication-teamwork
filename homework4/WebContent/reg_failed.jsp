<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Register Failed!!!
<br>
It will go to login register in 3 seconds.
    <%
    response.setHeader("refresh", "3;url=register.jsp?error=true");
    %>
</body>
</html>