<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    <link rel="stylesheet" href="<%=basePath %>/CSS/Mycss.css" type="text/css"></link>

  </head>
  
  <body>
  	<div id="mytop">
		<div id="myhead">
		 	<h1 style="color:white"><center>人事管理系统</center></h1>
	    </div>
    </div>
    <div id="mainbody" align=center >
    	<h3>对不起，您的操作有误！</h3>
    </div>
  </body>
</html>
