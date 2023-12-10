<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.swing.JOptionPane"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

      <%
    request.setCharacterEncoding("UTF-8");
    %>

     <h1>
     注册模块
     </h1>
      <table>
     <form action="reg_checkServlet" method="post">
     <tr>
     <td>UserName</td>
     <td><input type="text" name="username"></td>
     </tr>
     <tr>
     <td>PassWord</td>
     <td><input type="password" name="password"></td>
     </tr>
     <tr>
     <td>ConfirmPassword</td>
     <td><input type="password" name="confirmpassword"></td>
     </tr>
     
     <td><input type="submit" value="Submit"></td>
     <td><input type="button" value="任务分配" onclick="window.location.href='Info.jsp'"><td>
     </tr>
     </form>
     </table>
         
     
</body>
</html>