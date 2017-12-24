<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_JCQK,com.oper.T_HR_JCQKOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>奖惩情况</title>
    
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
    <script src="JavaScript/Myscript.js"></script>
  </head>
  
  <body>
   <div> <jsp:include  page="top.jsp" flush="true"/></div>
    <%
    	String ID = request.getParameter("id");
    	T_HR_JCQKOper op = new T_HR_JCQKOper();
    	List<T_HR_JCQK> list = op.searchT_HR_JCQK(Integer.parseInt(ID));//查询出的结果没有ID
     	T_HR_JCQK each = (T_HR_JCQK)list.get(0);
     	
    %>
    <div id="mainbody">
  	
		<form enctype="multipart/form-data" action="T_HR_JCQK/alterResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;">
  			<caption align="top"><h3>奖惩情况</h3></caption> 
  			<tr>
  				<td>JCQK_ID</td>
  				<td><input type="text" id="JCQK_ID" name="JCQK_ID" value="<%=each.getJCQK_ID() %>"/></td>
  			</tr> 
  			<tr>
  				<td>人ID</td>
  				<td><input type="text" id="RID" name="RID" value="<%=each.getRID() %>"/></td>
  				<td>奖惩情况</td>
  				<td><input type="text" id="JCQK" name="JCQK" value="<%=each.getJCQK() %>"/></td>
  				<td>奖惩等级</td>
  				<td><input type="text" id="JCDJ" name="JCDJ" value="<%=each.getJCDJ() %>"/></td>
  			</tr>
  			<tr>				
  				<td>奖惩单位</td>
  				<td><input type="text" id="JCDW" name="JCDW" value="<%=each.getJCDW() %>"/></td>
  				<td>奖惩时间</td>
  				<td><input type="text" id="JCSJ" name="JCSJ" value="<%=each.getJCSJ() %>"/></td>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" value="<%=each.getGXRID() %>"/></td>
  			</tr>
  			<tr>  				
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" value="<%=each.getGXRXM() %>"/></td>
  				<td>更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX" value="<%=each.getGXLX() %>"/></td>
  				<td>更新原因</td>
  				<td><input type="text" id="GXYY" name="GXYY" value="<%=each.getGXYY() %>"/></td>
  			</tr>
  			<tr> 				
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" value="<%=each.getGXSJ() %>"/></td>
  			</tr>
  			</table>
  			<div class="formsubmit">
	  		<input type="submit"  value="提交"  onclick="return checkJCQKform(this.form)"/>
	  		<input type="reset"  value="重置"  />
  		</div>
  		</form>
   	</div>
    
  </body>
</html>
