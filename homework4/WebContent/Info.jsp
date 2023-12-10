<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- 样式的设置 -->
    <style>
    #main{
	width: 800px;
	height: 450px;
	border: 1px solid green;
	position:absolute;
    top:50%;
    left:50%;
    margin:-225px 0 0 -400px;
    }
    </style>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <div id="main">
         小组分工情况：
         <br>
         特别说明：本小组为了提高与其他小组的区分度，利用开源框架实现了用户数据的数据可视化作了相关的拓展
         <br>
         <br>
         (组长)谭佳熙：完成了DBUtil类模拟数据库功能(增查删改,相当于MVC中的M),并统筹了处理个分工模块的接口。利用开源框架拓展了数据图标可视化的功能   
         <br>
         工作占比:45%+30%(拓展的功能约占原本工作总量的百分之30%)
         <br>
         <br>
         
         刘书含：完成了servlet和javabean的功能。相当于MVC中的C
         <br>
         工作占比:25%
         <br>
         <br>
         
         符镇侃：和周颂轶一起完成了MVC模块中的V部分。
         <br>
         工作占比：15%
         <br>
         <br>
         
         周颂轶：和符镇侃一起完成了MVC模块中的V部分。
         <br>
         工作占比：15%
         <br>
         <br>
             
     </div>
</body>
</html>