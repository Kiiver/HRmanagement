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
	
	<form action="login" method="post">
		<input type="text" name="usr.name" placeholder="用户名"/><br/>
		<input type="password" name="usr.password" placeholder="密码"/><br/>
	    <input type="submit"  value="登录"  />
	</form>
	</div>
	
	<!-- 
	<s:form action="login" method="post">
		<s:textfield name="usr.name" key="用户名"/>
		
		<s:textfield name="usr.age" key="年龄"/>
		<s:select name="usr.sex" key="性别" labelposition="left" multiple="false" list="{'男','女'}"/>
		<s:textfield name="usr.birth" key="生日"/>
		
		<s:password name="usr.password" key="密码"/>
		<s:submit key="Login"/>
	</s:form>
	 
	<form action="login" method="post" >
		用户名：<input type="text" name="usr.name" /><br/>
		
		年龄：<input type="text" name="usr.age" /><br/>
		生日：<input type="text" name="usr.birth" /><br/>
		性别:<label><input name="usr.sex" type="radio" checked="checked" value="1"/>男 </label> 
			<label><input name="usr.sex" type="radio" value="0" />女 </label> <br/>
		
		密码：<input type="password" name="usr.password" /><br/>
		<input type="submit" value="登录"/>
	</form>
	-->
 
  </body>
</html>
