<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="util.*"%>
    <%@ page import="util.*"%> 
    <%@ page import="Javabean.*"%> 
    <%@ page import="Controller.reg_checkServlet"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<p>
		登出成功！3秒后转到登录界面...
<%
    DBUtil.getInstance().userSub();
	response.setHeader("refresh","3;url=login.jsp");
%>
  

</body>
</html>