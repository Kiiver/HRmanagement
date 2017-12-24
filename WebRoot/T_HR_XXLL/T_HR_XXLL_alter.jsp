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
   		
	</script>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <%
    	String XXLLID = request.getParameter("id");
    	//System.out.println("id is OK，ID="+ID);
    	T_HR_XXLLOper op = new T_HR_XXLLOper();
    	List<T_HR_XXLL> list = op.searchByXXLLID(Integer.parseInt(XXLLID));//查询出的结果没有ID
    	//System.out.println("Operation is OK");
     	T_HR_XXLL each = (T_HR_XXLL)list.get(0);
     	
    %>
  	<div id="mainbody" align="center">
  	
		<form action="T_HR_XXLL/alterResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;" class="showTB" align="center" cellpadding="10" cellspacing="0">
  			<caption align="top"><h3>学习培训履历表</h3></caption>
  			<tr>
  				<td style="color:red">履历ID</td>
  				<td><input type="text" id="RID" name="XXLLID" value="<%=each.getXXLLID() %>"/></td>	
  				<td style="color:red">人ID</td>
  				<td><input type="text" id="RID" name="RID" value="<%=each.getXXLLID() %>"/></td>	
  			</tr>
  			<tr>
  				<td>起始日期</td>
  				<td><input type="text" id="QSRQ" name="QSRQ" value="<%=each.getQSRQ() %>"/></td>
  				<td>截止日期</td>
  				<td><input type="text" id="JZRQ" name="JZRQ" value="<%=each.getJZRQ() %>"/></td>
  				<td>就读学校</td>
  				<td><input type="text" id="JDXX" name="JDXX" value="<%=each.getJDXX() %>"/></td>
  			</tr>
  			<tr>
  				<td>所学专业</td>
  				<td><input type="text" id="SXZY" name="SXZY" value="<%=each.getSXZY() %>"/></td>
  				<td>职务</td>
  				<td><input type="text" id="ZW" name="ZW" value="<%=each.getZW() %>"/></td>
  				<td>证明人</td>
  				<td><input type="text" id="ZMR" name="ZMR" value="<%=each.getZMR() %>"/></td>
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
