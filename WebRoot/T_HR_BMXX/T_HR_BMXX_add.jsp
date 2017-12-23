<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_BMXX,com.oper.T_HR_BMXXOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>部门信息表</title>    	
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
	<script src="JavaScript/Myscript.js"></script>

  </head>
  
   <body>
	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <div id="mainbody" align="center">
		<form action="T_HR_BMXX/addResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;" class="showTB" align="center" cellpadding="10" cellspacing="0">
  			<caption align="top"><h3>部门信息表</h3></caption>  
  			<tr>
  				<td style="color:red">部门ID</td>
  				<td><input type="text" id="ID" name="ID" placeholder="必填"/></td>
  				<td>部门编码</td>
  				<td><input type="text" id="BM" name="BM" /></td>
  				<td>名称</td>
  				<td><input type="text" id="MC" name="MC" /></td>
  			</tr>
  			<tr>
  				<td>创建日期</td>
  				<td><input type="text" id="RQ" name="RQ" /></td>
  				<td>职责描述</td>
  				<td><input type="text" id="MS" name="MS" /></td>
  				<td>负责人</td>
  				<td><input type="text" id="FZR" name="FZR" /></td>
  			</tr>
  			<tr>
  				<td>联系人</td>
  				<td><input type="text" id="LXR" name="LXR" /></td>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" /></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" /></td>
  			</tr>
  			<tr>
  				<td>更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX" /></td>
  				<td>更新原因</td>
  				<td><input type="text" id="GXYY" name="GXYY" /></td>
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" /></td>
  			</tr>
  		</table>
  		<div class="formsubmit">
  		<input type="submit"  value="添加"  onclick="return checkBMXXform(this.form)"/>
  		<input type="reset"  value="重置"  />
  		</div>
  		</div>
  		</form>
   	</div>
  </body>
</html>
