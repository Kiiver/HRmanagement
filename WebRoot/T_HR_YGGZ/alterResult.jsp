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
	<style>
   		
	</style>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  	<div id="mainbody">
    <%
     	request.setCharacterEncoding("utf-8");
     	//获取表单信息
     	T_HR_YGGZ yggz = new T_HR_YGGZ();
     	yggz.setGZID(Integer.parseInt(request.getParameter("GZID")));
		yggz.setRID(Integer.parseInt(request.getParameter("RID")));
		yggz.setJBGZ(request.getParameter("JBGZ"));
		yggz.setZWGZ(request.getParameter("ZWGZ"));
		yggz.setYXBS(request.getParameter("YXBS"));
		yggz.setGXRID(request.getParameter("GXRID"));
		yggz.setGXRXM(request.getParameter("GXRXM"));
		yggz.setGXLX(request.getParameter("GXLX"));
		yggz.setGXYY(request.getParameter("GXYY"));
//		ygjbxx.setGXSJ(request.getParameter("GXSJ")));
     	
     	T_HR_YGGZOper op = new T_HR_YGGZOper();
	    boolean result = op.alterYGGZ(yggz);
	    out.println("<br/><br/><br/><br/><br/><br/>");
	    if(result){
			out.println("<H2><center>记录修改成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到员工基本信息页面！</center></H3>");
	  		response.setHeader("refresh","2;url=T_HR_YGGZ_all.jsp");
	  	}else{
	      	out.println("<H2><center>记录修改失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新修改信息!</center></H3>");
	      	response.setHeader("refresh","2;url=T_HR_YGGZ_alter.jsp?id="+yggz.getRID());
	    }
     %>
   	</div>
    
  </body>
</html>
