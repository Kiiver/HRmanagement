<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_XXLL,com.oper.T_HR_XXLLOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学习履历</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
	<script src="JavaScript/Myscript.js"></script>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  	<div id="mainbody" align="center">
		<form action="T_HR_XXLL/addResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table >
  		<caption align="top"><h3>学习培训履历表</h3></caption>
  			<tr>
  				<td style="color:red">履历ID</td>
  				<td><input type="text" id="XXLLID" name="XXLLID" /></td>
  				<td style="color:red">人ID</td>
  				<td><input type="text" id="RID" name="RID" /></td>
  			</tr>
  			<tr>
  				<td>起止日期</td>
  				<td><input type="text" id="QSRQ" name="QSRQ" /></td>
  				<td>截止日期</td>
  				<td><input type="text" id="JZRQ" name="JZRQ" /></td>
  				<td>就读学校</td>
  				<td><input type="text" id="JDXX" name="JDXX" /></td>
  			</tr>
  			<tr>
  				<td>所学专业</td>
  				<td><input type="text" id="SXZY" name="SXZY" /></td>
  				<td>职务</td>
  				<td><input type="text" id="ZW" name="ZW" /></td>
  				<td>证明人</td>
  				<td><input type="text" id="ZMR" name="ZMR" /></td> 				
  			</tr>
  			<tr>
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
  		</table>
  		</div>
  		<div class="formsubmit">
			<input type="submit"  value="添加"  onclick="return checkXXLLform(this.form)"/>
			<input type="reset"  value="重置"  />
  		</div>
  		</form>
   	</div>
    
  </body>
</html>
