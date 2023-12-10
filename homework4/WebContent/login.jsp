<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <table>
     <form action="login_checkServlet" method="post">
     <tr>
     <td>UserName</td>
     <td><input type="text" name="username1"></td>
     </tr>
     <tr>
     <td>PassWord</td>
     <td><input type="password" name="password1"></td>
     </tr>
     <tr>
     <td>
     <input type="submit" value="Login">
     </a>
     </td>
     <td>
     <input type="submit" formaction="register.jsp" value="Register">
     </td>
     </tr>
     <td><input type="button" value="任务分配" onclick="window.location.href='Info.jsp'"><td>
     </form>
     </table>
     
     <%
     request.setCharacterEncoding("UTF-8");
     if(request.getParameter("error")!=null){
    	 String username=request.getParameter("username");
    	 String password=request.getParameter("password");
    	 out.print("很遗憾，您的登录密码或者用户名有错误，请重新登录");
    	 out.print("<br>");
    	 out.print("用户的原有的信息：");
    	 out.println(" 用户名： "+username);
    	 out.println(" 密码： "+password);
     }
     %>
</body>
</html>