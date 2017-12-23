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
	<style>
   		
	</style>
  </head>
  
  <body>
   	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  	<div id="mainbody">
    <%
     	request.setCharacterEncoding("utf-8");
     	//获取表单信息
     	T_HR_XXLL xxll = new T_HR_XXLL();
		//xxll.setXXLLID(Integer.parseInt(request.getParameter("XXLLID")));
		xxll.setRID(Integer.parseInt(request.getParameter("RID")));
		xxll.setQSRQ(request.getParameter("QSRQ"));
		xxll.setJZRQ(request.getParameter("JZRQ"));
		xxll.setJDXX(request.getParameter("JDXX"));
		xxll.setSXZY(request.getParameter("SXZY"));
		xxll.setZW(request.getParameter("ZW"));
		xxll.setZMR(request.getParameter("ZMR"));
		xxll.setGXRID(request.getParameter("GXRID"));
		xxll.setGXRXM(request.getParameter("GXRXM"));
		xxll.setGXLX(request.getParameter("GXLX"));
		xxll.setGXYY(request.getParameter("GXYY"));
		//yggz.setGXSJ(request.getParameter("GXSJ"));
     	
     	T_HR_XXLLOper op = new T_HR_XXLLOper();
	    boolean result = op.addXXLL(xxll);
	    out.println("<br/><br/><br/><br/><br/><br/>");
	    if(result){
			out.println("<H2><center>记录添加成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到学习履历页面！</center></H3>");
	  		response.setHeader("refresh","2;url=T_HR_XXLL_all.jsp");
	  	}else{
	      	out.println("<H2><center>记录添加失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新输入信息!</center></H3>");
	      	response.setHeader("refresh","2;url=T_HR_XXLL_add.jsp");
	    }
     %>
   	</div>
    
  </body>
</html>
