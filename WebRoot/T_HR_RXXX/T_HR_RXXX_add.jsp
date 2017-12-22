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

  </head>
  
  <body>
  	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <div id="mainbody" align="center">
 	<%out.println("<br/><br/><br/>"); %>
	<form method="post" action="<%=basePath %>/addResult.jsp" enctype="multipart/form-data" >
  		<table style="text-align: end;">
  			<caption align="top"><h3>人像信息表</h3></caption> 
  			<tr style="display:">
  				<td>UUID</td>
  				<td><input type="text" id="ID" name="ID" "/></td>
  			</tr> 
  			<tr>
  				<td style="color:red">人ID</td>
  				<td><input type="text" id="RID" name="RID""/></td>
  				<td>拍摄时间</td>
  				<td><input type="text" id="PSSJ" name="PSSJ""/></td>
  				<td>相片</td>
  				<td><input type="text" id="XP" name="XP""/></td>
  				<td style="text-align: center;padding-left: 10px;"><div>照片信息</div><img id="img" src="<%=path %>/images/bg.jpg" width="90" height="120" /></td>
  			</tr>
  			<tr>
  				<td>类型</td>
  				<td><input type="text" id="LX" name="LX" "/></td>
  				<td>用途</td>
  				<td><input type="text" id="YT" name="YT" "/></td>
  			</tr>
  			<tr>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID""/></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" "/></td>
  			</tr>
  			<tr>
  				<td>更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX" "/></td>
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" "/></td>
  			</tr>
  			<tr>
  				<td>图片</td>
  				<td><input type="file" name="file"/></td>
  			</tr>
  		</table>
  			
  		<div class="formsubmit">
  			<input type="submit" name="submit" value="提交" onclick="return checkRXXXform(this.form)"/>
  			<input type="reset" name="reset" value="重置"/>
  		</div>
		
	</form>
	</div>
  </body>
</html>
