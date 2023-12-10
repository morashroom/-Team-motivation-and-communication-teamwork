<%@page import="Controller.login_checkServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
    <%@ page import="util.*"%> 
    <%@page import="com.alibaba.fastjson.JSON"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.crypto.Data"%>
    <%@ page import="Javabean.*"%> 
    <%@ page import="Controller.reg_checkServlet"%>
    <script src="js/echarts.min.js"></script>  
    
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
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
    Welcome gurutest User!!!You have logged in.
    <%
    //获取IP的字符串
    out.print("<br>");
    String ip=request.getParameter("ip");
    String username=request.getParameter("username");
    String target_ip=DBUtil.getInstance().get_ip(username);
    DBUtil.getInstance().insert_ip(username,ip);
    if(target_ip!=null) {
    	out.println("该用户上一次登录的ip地址是"+target_ip);
    	out.print("<br>");
    }
    
    out.println("实时在线的用户人数是："+DBUtil.getInstance().getCurr_log());
    
    
  //时间的集合
  		if((List)application.getAttribute("timeList")==null){
  			List<String> timeList=new ArrayList<>();
  			application.setAttribute("timeList", timeList);
  		}
  		
  		//人数的集合
  		if((List)application.getAttribute("valueList")==null){
  			List<Integer> valueList=new ArrayList<Integer>();
  			application.setAttribute("valueList", valueList);
  		}
  		
  		//
  		
  		//获取时间和人数的集合
  		List timeList=(List)application.getAttribute("timeList");
  		List valueList=(List)application.getAttribute("valueList");

       
       
          Date date=new Date();
          SimpleDateFormat sdf=new SimpleDateFormat("HH:mm");
          String time=sdf.format(date);
          if(timeList.indexOf(time)==-1){
          	timeList.add(time);
          	valueList.add(DBUtil.getInstance().getCurr_log());
          	application.setAttribute("timeList", timeList);
          	application.setAttribute("valueList", valueList);
          }else {
          	int index=timeList.indexOf(time);
          	//int value=(int)valueList.get(index);
          	//valueList.set(index, value+1);
          	valueList.set(index,DBUtil.getInstance().getCurr_log());
          	application.setAttribute("valueList", valueList);
          	
          }

          Map result = new HashMap();
  		result.put("timeList", timeList);
  		result.put("valueList", valueList);
  		String json = JSON.toJSONString(result);
          application.setAttribute("json", json);
    
    
    %>
    
         
        <div id="main" margin="auto" style="width: 600px; height: 400px;"></div>
    	<script type="text/javascript">
    	                var timeList = '<%=JSON.toJSON(application.getAttribute("timeList"))%>' ; 
    	                var valueList = '<%=(List)application.getAttribute("valueList")%>' ; 
    	                
    	                //将数据json化以便实现数据的可视化
    	                var json =JSON.parse(timeList);
    	                var json2=JSON.parse(valueList);
    	                console.log(json);
    	                
    					// 基于准备好的dom，初始化echarts实例
    					var myChart = echarts.init(document.getElementById('main'));

    					// 指定图表的配置项和数据
     					var option = {
    						title : {
    							text : '实时在线用户量'
    						},
    						tooltip : {
    							type : 'time'
    						},
    						legend : {
    							data : [ '用户量' ]
    						},
    						xAxis : {
    							type : 'category',
    							data : json
    						},
    						yAxis : {
    						    type: 'value'
    						},
    						series : [ {
    							name : '用户量',
    							type : 'bar',
    							data : json2
    						} ]
    					}; 
        
    					

    					// 使用刚指定的配置项和数据显示图表。
    					myChart.setOption(option);
    				
    		
    		            window.setInterval("showChart()",1000);
    	
    	</script>
    
    
    
    
    
    <br>
    <a href="logout.jsp">
      Logout
     </a>
     
     
     
     
</body>
</html>