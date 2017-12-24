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
   <div id="mainbody">
    <form enctype="multipart/form-data" action="T_HR_JCQK/addResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;" align="center">
  			<caption align="top"><h3>奖惩情况</h3></caption>
  			<tr>
  				<td style="color:red">奖惩情况ID</td>
  				<td><input type="text" id="JCQK_ID" name="JCQK_ID" placeholder="必填"/></td>
  				<td style="color:red">人ID</td>
  				<td><input type="text" id="RID" name="RID" /></td>
  				<td>奖惩情况</td>
  				<td><input type="text" id="JCQK" name="JCQK" /></td>
  			</tr>
  			<tr>
  				<td>奖惩等级</td>
  				<td><input type="text" id="JCDJ" name="JCDJ" /></td>
  				<td>奖惩单位</td>
  				<td><input type="text" id="JCDW" name="JCDW" /></td>
  				<td>奖惩时间</td>
  				<td><input type="text" id="JCSJ" name="JCSJ" /></td>
  			</tr>
  			<tr>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" /></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" /></td>
  				<td style="color:red">更新类型</td>
  				<td><input type="text" id="GXLX" name="GXLX" /></td>
  			</tr>
  			<tr>
  				<td>更新原因</td>
  				<td><input type="text" id="GXYY" name="GXYY" /></td>
  				<td style="color:red">更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" /></td>
  			</tr>
  			</table>
  		<div class="formsubmit" align="center">
	  		<input type="submit"  value="添加"  onclick="return checkJCQKform(this.form)"/>
	  		<input type="reset"  value="重置"  />
  		</div>
  		</div>
  		</form>
   	</div>
  </body>
</html>
