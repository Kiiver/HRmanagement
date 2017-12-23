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
    <%
    	String ID = request.getParameter("id");
    	//System.out.println("id is OK，ID="+ID);
    	T_HR_BMXXOper op = new T_HR_BMXXOper();
    	List<T_HR_BMXX> list = op.searchT_HR_BMXX(Integer.parseInt(ID));//查询出的结果没有ID
    	//System.out.println("Operation is OK");
     	T_HR_BMXX each = (T_HR_BMXX)list.get(0);
     	
    %>
    <div id="mainbody" align="center">
		<form action="T_HR_BMXX/alterResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;" class="showTB" align="center" cellpadding="10" cellspacing="0">
  			<caption align="top"><h3>部门信息表</h3></caption>  
  			<tr style="display:">
  				<td >部门ID</td>
  				<td><input type="text" id="BM_ID" name="BM_ID" value="<%=each.getBM_ID() %>"/></td>
  			</tr>
  			<tr>
  				<td>编号</td>
  				<td><input type="text" id="BM" name="BM" value="<%=each.getBMBM() %>"/></td>
  				<td>名称</td>
  				<td><input type="text" id="MC" name="MC" value="<%=each.getBMMC() %>"/></td>
  				<td>创建日期</td>
  				<td><input type="text" id="RQ" name="RQ" value="<%=each.getCJRQ() %>"/></td>
  			</tr>
  			<tr>				
  				<td>职责描述</td>
  				<td><input type="text" id="MS" name="MS" value="<%=each.getZZMS() %>"/></td>
  				<td>负责人</td>
  				<td><input type="text" id="FZR" name="FZR" value="<%=each.getFZR() %>"/></td>
  				<td>联系人</td>
  				<td><input type="text" id="LXR" name="LXR" value="<%=each.getLXR() %>"/></td>
  			</tr>
  			<tr>		
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" value="<%=each.getGXRID() %>"/></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" value="<%=each.getGXRXM() %>"/></td>
  				<td>更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX" value="<%=each.getGXLX() %>"/></td>
  			</tr>
  			<tr>
  				<td>更新原因</td>
  				<td><input type="text" id="GXYY" name="GXYY" value="<%=each.getGXYY() %>"/></td>
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" value="<%=each.getGXSJ() %>"/></td>
  			</tr>
  		</table>
  		<div class="formsubmit">
	  		<input type="submit"  value="提交"  onclick="return checkBMXXform(this.form)"/>
	  		<input type="reset"  value="重置"  />
  		</div>
  		</form>
   	</div>
  </body>
</html>
