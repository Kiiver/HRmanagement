<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_YGJBXX,com.oper.T_HR_YGJBXXOper,java.text.SimpleDateFormat" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工基本信息</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
	<style>
   		
	</style>
  </head>
  
  <body>
   	<div id="mytop">
		<div id="myhead">
			<span style="float:left;">欢迎：<br></span>
		    <span style="float:right;"><a href="<%=basePath %>index.jsp" target="_top">注	销</a></span>
		 	<table style="float: left;">
		 		<tr>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp" title="员工基本信息">员工基本信息</a></td>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp" title="部门信息">部门信息</a></td>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp" title="奖惩情况">奖惩情况</a></td>
		 		</tr>
		 	</table>
		 	
	    </div>
    </div>
  	<div id="mainbody">
    <%
     	request.setCharacterEncoding("utf-8");
     	//获取表单信息
     	T_HR_YGJBXX ygjbxx = new T_HR_YGJBXX();
     	SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
     	//ygjbxx.setRID(Integer.parseInt(request.getParameter("RID")));
		ygjbxx.setGH(request.getParameter("GH"));
		ygjbxx.setXM(request.getParameter("XM"));
		ygjbxx.setJG(request.getParameter("JG"));
		ygjbxx.setSSBM(Integer.parseInt(request.getParameter("SSBM")));
		ygjbxx.setZW(request.getParameter("ZW"));
		ygjbxx.setZJHM(request.getParameter("ZJHM"));
		ygjbxx.setZJZL(request.getParameter("ZJZL"));
		ygjbxx.setXB(request.getParameter("XB"));
		ygjbxx.setZZMM(request.getParameter("ZZMM"));
		ygjbxx.setCSRQ(request.getParameter("CSRQ"));
		ygjbxx.setMZ(request.getParameter("MZ"));
		ygjbxx.setHYZK(request.getParameter("HYZK"));
		ygjbxx.setXL(request.getParameter("XL"));
		ygjbxx.setXW(request.getParameter("XW"));
		ygjbxx.setBYRQ(sdf.parse(request.getParameter("BYRQ")));
		ygjbxx.setBYXX(request.getParameter("BYXX"));
		ygjbxx.setSXZY(request.getParameter("SXZY"));
		ygjbxx.setZC(request.getParameter("ZC"));
		ygjbxx.setHJLB(request.getParameter("HJLB"));
		ygjbxx.setHJDXZQH(request.getParameter("HJDXZQH"));
		ygjbxx.setHJDXZ(request.getParameter("HJDXZ"));
		ygjbxx.setJZDXZQH(request.getParameter("JZDXZQH"));
		ygjbxx.setJZDXZ(request.getParameter("JZDXZ"));
		ygjbxx.setJZDYZBM(request.getParameter("JZDYZBM"));
		ygjbxx.setLXDH(request.getParameter("LXDH"));
		ygjbxx.setJTDH(request.getParameter("JTDH"));
		ygjbxx.setDASZD(request.getParameter("DASZD"));
		ygjbxx.setSFYJZZ(request.getParameter("SFYJZZ"));
		ygjbxx.setJZZQSRQ(sdf.parse(request.getParameter("JZZQSRQ")));
		ygjbxx.setJZZJZRQ(sdf.parse(request.getParameter("JZZJZRQ")));
		ygjbxx.setSFYLDSC(Integer.parseInt(request.getParameter("SFYLDSC")));
		ygjbxx.setSFBLGSBJJ(Integer.parseInt(request.getParameter("SFBLGSBJJ")));
		ygjbxx.setSFBLGGJJ(Integer.parseInt(request.getParameter("SFBLGGJJ")));
		ygjbxx.setGJJZH(request.getParameter("GJJZH"));
		ygjbxx.setSFBLGZHBX(Integer.parseInt(request.getParameter("SFBLGZHBX")));
		ygjbxx.setYDWSFBLTG(Integer.parseInt(request.getParameter("YDWSFBLTG")));
		ygjbxx.setRYLB(request.getParameter("RYLB"));
		ygjbxx.setSCRZRQ(sdf.parse(request.getParameter("SCRZRQ")));
		ygjbxx.setLZRQ(sdf.parse(request.getParameter("LZRQ")));
		ygjbxx.setLZYY(request.getParameter("LZYY"));
		ygjbxx.setGXRID(Integer.parseInt(request.getParameter("GXRID")));
		ygjbxx.setGXRXM(request.getParameter("GXRXM"));
		ygjbxx.setGXLX(request.getParameter("GXLX"));
		ygjbxx.setGXYY(request.getParameter("GXYY"));
//		ygjbxx.setGXSJ(request.getParameter("GXSJ")));
     	
     	T_HR_YGJBXXOper op = new T_HR_YGJBXXOper();
	    boolean result = op.addYGJBXX(ygjbxx);
	    out.println("<br/><br/><br/><br/><br/><br/>");
	    if(result){
			out.println("<H2><center>记录添加成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到员工基本信息页面！</center></H3>");
	  		response.setHeader("refresh","2;url=T_HR_YGJBXX_all.jsp");
	  	}else{
	      	out.println("<H2><center>记录添加失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新输入信息!</center></H3>");
	      	response.setHeader("refresh","2;url=T_HR_YGJBXX_add.jsp");
	    }
     %>
   	</div>
    
  </body>
</html>
