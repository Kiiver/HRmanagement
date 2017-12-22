<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>人事管理系统登陆页面</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Mycss.css" type="text/css"></link>
  </head>
  
  <body>
  	<div id="mytop">
		<div id="myhead">
		 	<h1 style="color:white"><center>人事管理系统</center></h1>
	    </div>
    </div>
  <div id="mainbody" class="page-container"  align="center" style="height: 400px;padding-top: 5px;">
	<h2>管理员登录</h2>
	
	<form action="login.action" method="post">
		<input type="text" name="usr.name" placeholder="用户名"/><br/>
		<input type="password" name="usr.password" placeholder="密码"/><br/>
	    <input type="submit"  value="登录"  />
	</form>
	</div>
 
  </body>
</html>
