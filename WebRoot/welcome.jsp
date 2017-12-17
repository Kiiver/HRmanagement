<%@ page language="java" import="java.util.*,com.opensymphony.xwork2.ActionContext" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>人事管理系统主页</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Mycss.css" type="text/css"></link>

  </head>
  
<body>
	<div id="mytop">
		<div id="myhead">
			<span style="float:left;">
		      欢迎：<br>
		      <!--
		      <s:label name="usr.name" /><br>
		      <s:label name="usr.age"  key="年龄"/><br>
		      <s:label name="usr.sex" key="性别"/><br>      
		      <s:label name="usr.birth" key="生日"/>  
		       -->
		    </span>
		    <span style="float:right;"><a href="<%=basePath %>index.jsp" target="_top">注	销</a></span>
		 	<table style="float: left;">
		 		<tr>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp" title="员工基本信息">员工基本信息</a></td>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp" title="部门信息">部门信息</a></td>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp" title="奖惩情况">奖惩情况</a></td>
		 		</tr>
		 	</table>
		 	
	    </div>
    </div>
<div id="mainbody">
<table align=center cellpadding="10" cellspacing="10" color="burlywood">
  <tr >
    <td>
    	<div>
    	<a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp" title="员工基本信息">
    	<img src="<%=path %>/images/YGJBXX.png" width="240" height="180" />
    	</a>
    	<center>员工基本信息</center>
    	</div>
    </td>
    
    <td>
    	<div>
    	<a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp" title="部门信息">
    	<img src="<%=path %>/images/BMXX.png" width="240" height="180" />
    	</a>
    	<center >部门信息</center>
    	</div>
    </td>
    
    <td>
    	<div>
    	<a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp" title="奖惩情况">
    	<img src="<%=path %>/images/JCQK.png" width="240" height="180" />
    	</a>
    	<center >奖惩情况</center>
    	</div>
    </td>
  </tr>
</table>
</div>
  </body>
</html>
