<%@ page language="java" pageEncoding="utf-8"%>
<%@	page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>人像信息表</title>
    
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
	<script src="JavaScript/Myscript.js"></script>
  </head>
  
  <body>
  	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <div id="mainbody" align="center">
 	<form  action="T_HR_RXXX/upload.jsp" method="post" enctype="multipart/form-data">
 		<table style="text-align: end;" class="showTB" align="center" cellpadding="10" cellspacing="0">
 			<caption align="top"><h3>人像信息表</h3></caption> 
 			<tr>
  				<td>相片</td>
  				<td><input type="file" name="file"/></td>
  				<td><input type="submit" name="submit" value="上传" onclick=""/></td>
  			</tr> 
 		</table>
 	</form>
	<form  action="T_HR_RXXX/addResult.jsp" method="get" enctype="multipart/form-data">
  		<table class="showTB" align="center" cellpadding="10" cellspacing="0">
  			<tr>
  				<td>相片</td>
  				<td><input type="file" name="file"/></td>
  			</tr> 
  			<tr>
  				<td style="color:red">人ID</td>
  				<td><input type="text" id="RID" name="RID"/></td>
  				<td style="color:red">拍摄时间</td>
  				<td><input type="text" id="PSSJ" name="PSSJ"/></td>
  			</tr>
  			<tr>
  				<td>类型</td>
  				<td><input type="text" id="LX" name="LX"/></td>
  				<td>用途</td>
  				<td><input type="text" id="YT" name="YT"/></td>
  			</tr>
  			<tr>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID"/></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM"/></td>
  			</tr>
  			<tr>
  				<td>更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX"/></td>
  			</tr>
  		</table>
  			
  		<div class="formsubmit">
  			<input type="submit" name="submit" value="提交" onclick=""/>
  			<input type="reset" name="reset" value="重置"/>
  		</div>
		
	</form>
	</div>
  </body>
</html>
