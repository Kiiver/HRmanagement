<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_YGGZ,com.oper.T_HR_YGGZOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工工资</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
	<script src="JavaScript/Myscript.js"></script>
	<style>
   		form input {}
	</style>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  	<div id="mainbody" align="center">
		<form enctype="multipart/form-data" action="T_HR_YGGZ/addResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table >
  			<tr>
  				<td style="color:red">姓名编号：</td>
  				<td><input type="text" id="RID" name="RID" /></td>
  			</tr>
  			<tr>
  				<td>基本工资：</td>
  				<td><input type="text" id="JBGZ" name="JBGZ" /></td>
  				<td>职务工资：</td>
  				<td><input type="text" id="ZWGZ" name="ZWGZ" /></td>
  			</tr>
  			<tr>
  				<td>有效标识：</td>
  				<td><input type="text" id="YXBS" name="YXBS" /></td>
  				<td style="color:red">更新人编号：</td>
  				<td><input type="text" id="GXRID" name="GXRID" /></td>
  				<td  style="color:red">更新人姓名：</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" /></td>
  			</tr>
  			<tr>
  				<td>更新类型：</td>
  				<td><input type="text" id="GXLX" name="GXLX" /></td>
  				<td>更新原因：</td>
  				<td><input type="text" id="GXYY" name="GXYY" /></td>
  				<td>更新时间：</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" /></td>
  		</table>
  		</div>
  		<div class="formsubmit">
			<input type="submit"  value="添加"  onclick="return checkYGJBXXform(this.form)"/>
			<input type="reset"  value="重置"  />
  		</div>
  		</form>
   	</div>
    
  </body>
</html>
