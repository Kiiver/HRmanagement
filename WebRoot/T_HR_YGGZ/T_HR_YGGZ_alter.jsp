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
   		
	</script>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <%
    	String GZID = request.getParameter("id");
    	//System.out.println("id is OK，ID="+ID);
    	T_HR_YGGZOper op = new T_HR_YGGZOper();
    	List<T_HR_YGGZ> list = op.searchByGZID(Integer.parseInt(GZID));//查询出的结果没有ID
    	//System.out.println("Operation is OK");
     	T_HR_YGGZ each = (T_HR_YGGZ)list.get(0);
     	
    %>
  	<div id="mainbody" align="center">
  	
		<form enctype="multipart/form-data" action="T_HR_YGGZ/alterResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;">
  			<caption align="top"><h3>员工工资</h3></caption> 
  			<tr>
  				<td>工资ID</td>
  				<td><input type="text" id="GZID" name="GZID" value="<%=each.getGZID() %>"/></td>
  				<td>人ID</td>
  				<td><input type="text" id="RID" name="RID" value="<%=each.getRID() %>"/></td>	
  			</tr>
  			<tr>
  				<td>基本工资</td>
  				<td><input type="text" id="JBGZ" name="JBGZ" value="<%=each.getJBGZ() %>"/></td>
  				<td>职务工资</td>
  				<td><input type="text" id="ZWGZ" name="ZWGZ" value="<%=each.getZWGZ() %>"/></td>
  			</tr>
  			<tr>
  				<td>有效标识</td>
  				<td><input type="text" id="YXBS" name="YXBS" value="<%=each.getYXBS() %>"/></td>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" value="<%=each.getGXRID() %>"/></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" value="<%=each.getGXRXM() %>"/></td>
  			</tr>
  			<tr>
  				<td>更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX" value="<%=each.getGXLX() %>"/></td>
  				<td>更新原因</td>
  				<td><input type="text" id="GXYY" name="GXYY" value="<%=each.getGXYY() %>"/></td>
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" value="<%=each.getGXSJ() %>"/></td>
  			</tr>
  		</table>
  		<div class="formsubmit">
	  		<input type="submit"  value="提交"  onclick="return checkYGGZform(this.form)"/>
	  		<input type="reset"  value="重置"  />
  		</div>
  		</form>
   	</div>
    
  </body>
</html>
