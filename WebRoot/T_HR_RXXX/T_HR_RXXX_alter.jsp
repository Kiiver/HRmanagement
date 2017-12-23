<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_RXXX,com.oper.T_HR_RXXXOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>人像信息表</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
	<script src="JavaScript/Myscript.js"></script>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <%
    	String ID = request.getParameter("id");
    	T_HR_RXXXOper op = new T_HR_RXXXOper();
    	List<T_HR_RXXX> list = op.searchByID(Integer.parseInt(ID));//查询出的结果没有ID
     	T_HR_RXXX each = (T_HR_RXXX)list.get(0);
     	
    %>
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
		<form action="T_HR_RXXX/alterResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table class="showTB" align="center" cellpadding="10" cellspacing="0">
  			<tr>
  				<td>相片</td>
  				<td><input type="file" name="file"/></td>
  				<td>相片名称</td>
  				<td><%=each.getXP() %></td>
  			</tr> 
  			<tr>
  				
  			</tr> 
  			<tr style="display:none">
  				<td>UUID</td>
  				<td><input type="text" id="ID" name="ID" value="<%=ID %>"/></td>
  			</tr> 
  			<tr>
  				<td style="color:red">人ID</td>
  				<td><input type="text" id="RID" name="RID" value="<%=each.getRID() %>"/></td>
  				<td style="color:red">拍摄时间</td>
  				<td><input type="text" id="PSSJ" name="PSSJ" value="<%=each.getPSSJ() %>"/></td>
  			</tr>
  			<tr>
  				<td>类型</td>
  				<td><input type="text" id="LX" name="LX" value="<%=each.getLX() %>"/></td>
  				<td>用途</td>
  				<td><input type="text" id="YT" name="YT" value="<%=each.getYT() %>"/></td>
  			</tr>
  			<tr>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" value="<%=each.getGXRID() %>"/></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" value="<%=each.getGXRXM() %>"/></td>
  			</tr>
  			<tr>
  				<td>更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX" value="<%=each.getGXLX() %>"/></td>
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" value="<%=each.getGXSJ() %>"/></td>
  			</tr>
  		</table>
  		<div class="formsubmit">
	  		<input type="submit"  value="提交"  onclick="return checkRXXXform(this.form)"/>
	  		<input type="reset"  value="重置"  />
  		</div>
  		</div>
  		</form>
   	</div>
    
  </body>
</html>
