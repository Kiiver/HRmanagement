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
  </head>
  
  <body>
    <div> <jsp:include  page="top.jsp" flush="true"/></div>
  	<div id="mainbody">
  	<%
     	request.setCharacterEncoding("utf-8");
     	T_HR_BMXX t_hr_bmxx = new T_HR_BMXX();
     	//获取表单信息
     	t_hr_bmxx.setBM_ID(Integer.parseInt(request.getParameter("BM_ID")));
		t_hr_bmxx.setBMBM(request.getParameter("BM"));
		t_hr_bmxx.setBMMC(request.getParameter("MC"));
		t_hr_bmxx.setCJRQ(request.getParameter("RQ"));
		t_hr_bmxx.setZZMS(request.getParameter("MS"));
		t_hr_bmxx.setFZR(request.getParameter("FZR"));
		t_hr_bmxx.setLXR(request.getParameter("LXR"));
		t_hr_bmxx.setGXRID(request.getParameter("GXRID"));
		t_hr_bmxx.setGXRXM(request.getParameter("GXRXM"));
		t_hr_bmxx.setGXLX(Integer.parseInt(request.getParameter("GXLX")));
		t_hr_bmxx.setGXYY(request.getParameter("GXYY"));
		t_hr_bmxx.setGXSJ(request.getParameter("GXSJ"));
		T_HR_BMXXOper op = new T_HR_BMXXOper();
	    boolean result = op.alterT_HR_BMXX(t_hr_bmxx);
	    out.println("<br/><br/><br/><br/><br/><br/>");
	    if(result){
			out.println("<H2><center>记录修改成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到员工基本信息页面！</center></H3>");
	  		response.setHeader("refresh","2;url=T_HR_BMXX_all.jsp");
	  	}else{
	      	out.println("<H2><center>记录修改失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新修改信息!</center></H3>");
	      	response.setHeader("refresh","2;url=T_HR_BMXX_alter.jsp?id="+t_hr_bmxx.getBM_ID());
	    }
     %>
   	</div>
  </body>
</html>
