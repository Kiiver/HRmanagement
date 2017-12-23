<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_YGJBXX,com.oper.T_HR_YGJBXXOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工基本信息</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
	<script src="JavaScript/Myscript.js"></script>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  	<div id="mainbody" align="center">
		<form action="T_HR_YGJBXX/addResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;" >
  			<caption align="top"><h3>员工基本信息表</h3></caption>  
  			<tr>
  				<td style="color:red">姓名</td>
  				<td><input type="text" id="XM" name="XM" placeholder="必填"/></td>
  				<td>性别</td>
  				<td><input type="text" id="XB" name="XB" /></td>
  				<td>籍贯</td>
  				<td><input type="text" id="JG" name="JG" /></td>
  				
  			</tr>
  			<tr>
  				<td>出生年月</td>
  				<td><input type="text" id="CSRQ" name="CSRQ" /></td>
  				<td>民族</td>
  				<td><input type="text" id="MZ" name="MZ" /></td>
  				<td>婚姻状况</td>
  				<td><input type="text" id="HYZK" name="HYZK" /></td>
  			</tr>
  			<tr>
  				<td>政治面貌</td>
  				<td><input type="text" id="ZZMM" name="ZZMM" /></td>
  			</tr>
  			<tr>
  				<td>工号</td>
  				<td><input type="text" id="GH" name="GH" /></td>
  				<td style="color:red">所属部门</td>
  				<td><input type="text" id="SSBM" name="SSBM" placeholder="必填(整数)"/></td>
  				<td>职位</td>
  				<td><input type="text" id="ZW" name="ZW" /></td>
  			</tr>
  			<tr>
  				<td style="color:red">证件号码</td>
  				<td><input type="text" id="ZJHM" name="ZJHM" placeholder="必填(整数)"/></td>
  				<td>证件种类</td>
  				<td><input type="text" id="ZJZL" name="ZJZL" /></td>
  			</tr>
  			<tr>
  				<td>最高学历</td>
  				<td><input type="text" id="XL" name="XL" /></td>
  				<td>毕业时间</td>
  				<td><input type="text" id="BYRQ" name="BYRQ" /></td>
  				<td>所获学位</td>
  				<td><input type="text" id="XW" name="XW" /></td>
  			</tr>
  			<tr>
  				<td>毕业院校</td>
  				<td><input type="text" id="BYXX" name="BYXX" /></td>
  				<td>专业</td>
  				<td><input type="text" id="SXZY" name="SXZY" /></td>
  				<td>职称</td>
  				<td><input type="text" id="ZC" name="ZC" /></td>
  			</tr>
  			<tr>
  				<td>户籍类别</td>
  				<td><input type="text" id="HJLB" name="HJLB" /></td>
  				<td>户籍地区划</td>
  				<td><input type="text" id="HJDXZQH" name="HJDXZQH" /></td>
  				<td>户籍详址</td>
  				<td><input type="text" id="HJDXZ" name="HJDXZ" /></td>
  			</tr>
  			<tr>
  				<td>有无居住证</td>
  				<td><input type="text" id="SFYJZZ" name="SFYJZZ" /></td>
  				<td>起始日期</td>
  				<td><input type="text" id="JZZQSRQ" name="JZZQSRQ" /></td>
  				<td>截止日期</td>
  				<td><input type="text" id="JZZJZRQ" name="JZZJZRQ" /></td>
  			</tr>
  			<tr>
  				<td>档案所在地</td>
  				<td><input type="text" id="DASZD" name="DASZD" /></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无劳动手册</td>
  				<td><input type="text" id="SFYLDSC" name="SFYLDSC" placeholder="必填(1:是; 0:否)"/></td>
  				<td style="color:red">是否退工</td>
  				<td><input type="text" id="YDWSFBLTG" name="YDWSFBLTG" placeholder="必填(1:是; 0:否)"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无公基金</td>
  				<td><input type="text" id="SFBLGGJJ" name="SFBLGGJJ" placeholder="必填(1:是; 0:否)"/></td>
  				<td>公基金账号</td>
  				<td><input type="text" id="GJJZH" name="GJJZH"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无社保基金</td>
  				<td><input type="text" id="SFBLGSBJJ" name="SFBLGSBJJ" placeholder="必填(1:是; 0:否)"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无综合保险</td>
  				<td><input type="text" id="SFBLGZHBX" name="SFBLGZHBX" placeholder="必填(1:是; 0:否)"/></td>
  			</tr>
  			<tr>
  				<td>本地住址</td>
  				<td><input type="text" id="JZDXZ" name="JZDXZ" /></td>
  				<td>邮编</td>
  				<td><input type="text" id="JZDYZBM" name="JZDYZBM" /></td>
  				<td>居住地区划</td>
  				<td><input type="text" id="JZDXZQH" name="JZDXZQH" /></td>
  			</tr>
  			<tr>
  				<td>手机</td>
  				<td><input type="text" id="LXDH" name="LXDH" /></td>
  				<td>家庭电话</td>
  				<td><input type="text" id="JTDH" name="JTDH" /></td>
  			</tr>
  			<tr>
  				<td>人员类别</td>
  				<td><input type="text" id="RYLB" name="RYLB" /></td>
  				<td>入职日期</td>
  				<td><input type="text" id="SCRZRQ" name="SCRZRQ" /></td>
  			</tr>
  			<tr>
  				<td>离职日期</td>
  				<td><input type="text" id="LZRQ" name="LZRQ" /></td>
  				<td>离职原因</td>
  				<td><input type="text" id="LZYY" name="LZYY" /></td>
  			</tr>
  			<tr>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" /></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" /></td>
  				<td>更新类别</td>
  				<td><input type="text" id="GXLX" name="GXLX" /></td>
  			</tr>
  			<tr>
  				<td>更新原因</td>
  				<td><input type="text" id="GXYY" name="GXYY" /></td>
  				<!-- 
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" /></td>
  				 -->
  			</tr>
  		</table>
  		<div class="formsubmit">
	  		<input type="submit"  value="添加"  onclick="return checkYGJBXXform(this.form)"/>
	  		<input type="reset"  value="重置"  />
  		</div>
  		</div>
  		</form>
   	</div>
    
  </body>
</html>
