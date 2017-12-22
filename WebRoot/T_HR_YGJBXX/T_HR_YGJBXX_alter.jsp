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
   		
	</script>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <%
    	String ID = request.getParameter("id");
    	//System.out.println("id is OK，ID="+ID);
    	T_HR_YGJBXXOper op = new T_HR_YGJBXXOper();
    	List<T_HR_YGJBXX> list = op.searchByRID(Integer.parseInt(ID));//查询出的结果没有ID
    	//System.out.println("Operation is OK");
     	T_HR_YGJBXX each = (T_HR_YGJBXX)list.get(0);
     	
    %>
  	<div id="mainbody" align="center">
  	
		<form enctype="multipart/form-data" action="T_HR_YGJBXX/alterResult.jsp" method="post">
		<div style="padding-left:10px;">
  		<table style="text-align: end;">
  			<caption align="top"><h3>员工基本信息表</h3></caption> 
  			<tr style="display:none">
  				<td>RID</td>
  				<td><input type="text" id="RID" name="RID" value="<%=ID %>"/></td>
  			</tr> 
  			<tr>
  				<td style="color:red">姓名</td>
  				<td><input type="text" id="XM" name="XM" value="<%=each.getXM() %>"/></td>
  				<td>性别</td>
  				<td><input type="text" id="XB" name="XB" value="<%=each.getXB() %>"/></td>
  				<td>籍贯</td>
  				<td><input type="text" id="JG" name="JG" value="<%=each.getJG() %>"/></td>
  				<td rowspan="4" style="text-align: center;padding-left: 10px;"><div>照片信息</div><img id="img" src="<%=path %>/images/bg.jpg" width="90" height="120" /></td>
  			</tr>
  			<tr>
  				<td>出生年月</td>
  				<td><input type="text" id="CSRQ" name="CSRQ" value="<%=each.getCSRQ() %>"/></td>
  				<td>民族</td>
  				<td><input type="text" id="MZ" name="MZ" value="<%=each.getMZ() %>"/></td>
  				<td>婚姻状况</td>
  				<td><input type="text" id="HYZK" name="HYZK" value="<%=each.getHYZK() %>"/></td>
  			</tr>
  			<tr>
  				<td>政治面貌</td>
  				<td><input type="text" id="ZZMM" name="ZZMM" value="<%=each.getZZMM() %>"/></td>
  			</tr>
  			<tr>
  				<td>工号</td>
  				<td><input type="text" id="GH" name="GH" value="<%=each.getGH() %>"/></td>
  				<td style="color:red">所属部门</td>
  				<td><input type="text" id="SSBM" name="SSBM" value="<%=each.getSSBM() %>" placeholder="必填(整数)" /></td>
  				<td>职位</td>
  				<td><input type="text" id="ZW" name="ZW" value="<%=each.getZW() %>"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">证件号码</td>
  				<td><input type="text" id="ZJHM" name="ZJHM" value="<%=each.getZJHM() %>" placeholder="必填(整数)"/></td>
  				<td>证件种类</td>
  				<td><input type="text" id="ZJZL" name="ZJZL" value="<%=each.getZJZL() %>"/></td>
  			</tr>
  			<tr>
  				<td>最高学历</td>
  				<td><input type="text" id="XL" name="XL" value="<%=each.getXL() %>"/></td>
  				<td>毕业时间</td>
  				<td><input type="text" id="BYRQ" name="BYRQ" value="<%=each.getBYRQ() %>"/></td>
  				<td>所获学位</td>
  				<td><input type="text" id="XW" name="XW" value="<%=each.getXW() %>"/></td>
  			</tr>
  			<tr>
  				<td>毕业院校</td>
  				<td><input type="text" id="BYXX" name="BYXX" value="<%=each.getBYXX() %>"/></td>
  				<td>专业</td>
  				<td><input type="text" id="SXZY" name="SXZY" value="<%=each.getSXZY() %>"/></td>
  				<td>职称</td>
  				<td><input type="text" id="ZC" name="ZC" value="<%=each.getZC() %>"/></td>
  			</tr>
  			<tr>
  				<td>户籍类别</td>
  				<td><input type="text" id="HJLB" name="HJLB" value="<%=each.getHJLB() %>"/></td>
  				<td>户籍地区划</td>
  				<td><input type="text" id="HJDXZQH" name="HJDXZQH" value="<%=each.getHJDXZQH() %>"/></td>
  				<td>户籍详址</td>
  				<td><input type="text" id="HJDXZ" name="HJDXZ" value="<%=each.getHJDXZ() %>"/></td>
  			</tr>
  			<tr>
  				<td>有无居住证</td>
  				<td><input type="text" id="SFYJZZ" name="SFYJZZ" value="<%=each.getSFYJZZ() %>"/></td>
  				<td>起始日期</td>
  				<td><input type="text" id="JZZQSRQ" name="JZZQSRQ" value="<%=each.getJZZQSRQ() %>"/></td>
  				<td>截止日期</td>
  				<td><input type="text" id="JZZJZRQ" name="JZZJZRQ" value="<%=each.getJZZJZRQ() %>"/></td>
  			</tr>
  			<tr>
  				<td>档案所在地</td>
  				<td><input type="text" id="DASZD" name="DASZD" value="<%=each.getDASZD() %>"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无劳动手册</td>
  				<td><input type="text" id="SFYLDSC" name="SFYLDSC" value="<%=each.getSFYLDSC() %>" placeholder="必填(1:是; 0:否)"/></td>
  				<td style="color:red">是否退工</td>
  				<td><input type="text" id="YDWSFBLTG" name="YDWSFBLTG" value="<%=each.getYDWSFBLTG() %>" placeholder="必填(1:是; 0:否)"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无公基金</td>
  				<td><input type="text" id="SFBLGGJJ" name="SFBLGGJJ" value="<%=each.getSFBLGGJJ() %>" placeholder="必填(1:是; 0:否)"/></td>
  				<td>公基金账号</td>
  				<td><input type="text" id="GJJZH" name="GJJZH" value="<%=each.getGJJZH() %>"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无社保基金</td>
  				<td><input type="text" id="SFBLGSBJJ" name="SFBLGSBJJ" value="<%=each.getSFBLGSBJJ() %>" placeholder="必填(1:是; 0:否)"/></td>
  			</tr>
  			<tr>
  				<td style="color:red">有无综合保险</td>
  				<td><input type="text" id="SFBLGZHBX" name="SFBLGZHBX" value="<%=each.getSFBLGZHBX() %>" placeholder="必填(1:是; 0:否)"/></td>
  			</tr>
  			<tr>
  				<td>本地住址</td>
  				<td><input type="text" id="JZDXZ" name="JZDXZ" value="<%=each.getJZDXZ() %>"/></td>
  				<td>邮编</td>
  				<td><input type="text" id="JZDYZBM" name="JZDYZBM" value="<%=each.getJZDYZBM() %>"/></td>
  				<td>居住地区划</td>
  				<td><input type="text" id="JZDXZQH" name="JZDXZQH" value="<%=each.getJZDXZQH() %>"/></td>
  			</tr>
  			<tr>
  				<td>手机</td>
  				<td><input type="text" id="LXDH" name="LXDH" value="<%=each.getLXDH() %>"/></td>
  				<td>家庭电话</td>
  				<td><input type="text" id="JTDH" name="JTDH" value="<%=each.getLXDH() %>"/></td>
  			</tr>
  			<tr>
  				<td>人员类别</td>
  				<td><input type="text" id="RYLB" name="RYLB" value="<%=each.getRYLB() %>"/></td>
  				<td>入职日期</td>
  				<td><input type="text" id="SCRZRQ" name="SCRZRQ" value="<%=each.getSCRZRQ() %>"/></td>
  			</tr>
  			<tr>
  				<td>离职日期</td>
  				<td><input type="text" id="LZRQ" name="LZRQ" value="<%=each.getLZRQ() %>"/></td>
  				<td>离职原因</td>
  				<td><input type="text" id="LZYY" name="LZYY" value="<%=each.getLZYY() %>"/></td>
  			</tr>
  			<tr>
  				<td>更新人ID</td>
  				<td><input type="text" id="GXRID" name="GXRID" value="<%=each.getGXRID() %>"/></td>
  				<td>更新人姓名</td>
  				<td><input type="text" id="GXRXM" name="GXRXM" value="<%=each.getGXRXM() %>"/></td>
  				<td>更新类别</td>
  				<td><input type="text" id="GXLX" name="GXLX" value="<%=each.getGXLX() %>"/></td>
  			</tr>
  			<tr>
  				<td>更新原因</td>
  				<td><input type="text" id="GXYY" name="GXYY" value="<%=each.getGXYY() %>"/></td>
  				<td>更新时间</td>
  				<td><input type="text" id="GXSJ" name="GXSJ" value="<%=each.getGXSJ() %>"/></td>
  			</tr>
  		</table>
  		</div>
  		<div class="formsubmit">
	  		<input type="submit"  value="提交"  onclick="return checkYGJBXXform(this.form)"/>
	  		<input type="reset"  value="重置"  />
  		</div>
  		</form>
   	</div>
    
  </body>
</html>
