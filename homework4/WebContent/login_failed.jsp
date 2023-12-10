<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    Login Failed!!!
    <br>
    It will go to login page in 3 seconds.
    <%
    request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
    response.setHeader("refresh", "3;url=login.jsp?error=true&username=" + username + "&password=" + password);
    %>
</body>
</html>