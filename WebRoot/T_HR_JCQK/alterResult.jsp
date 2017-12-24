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
	<style>
   		
	</style>


  </head>
  
  <body>
   <div> <jsp:include  page="top.jsp" flush="true"/></div>
    <div id="mainbody">
    <%
     	request.setCharacterEncoding("utf-8");
     	T_HR_JCQK jcqk = new T_HR_JCQK();
     	//获取表单信息
     	System.out.println("1");
     	jcqk.setJCQK_ID(Integer.parseInt(request.getParameter("JCQK_ID")));
     	System.out.println("7");
     	jcqk.setRID(Integer.parseInt(request.getParameter("RID")));
     	System.out.println("4");
     	jcqk.setJCQK(request.getParameter("JCQK"));
     	System.out.println("5");
     	jcqk.setJCDJ(request.getParameter("JCDJ"));
     	System.out.println("6");
     	jcqk.setJCDW(request.getParameter("JCDW"));
     	jcqk.setJCSJ(request.getParameter("JCSJ"));
     	jcqk.setGXRID(request.getParameter("GXRID"));
     	jcqk.setGXRXM(request.getParameter("GXRXM"));
     	jcqk.setGXLX(request.getParameter("GXLX"));
     	jcqk.setGXYY(request.getParameter("GXYY"));
     	System.out.println("7");
     	//jcqk.setGXSJ(request.getParameter("GXSJ"));
     	
     	T_HR_JCQKOper op = new T_HR_JCQKOper();
     	System.out.println("5");
	    boolean result = op.alterT_HR_JCQK(jcqk);
	    out.println("<br/><br/><br/><br/><br/><br/>");
	    if(result){
			out.println("<H2><center>记录修改成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到奖惩情况页面！</center></H3>");
	  		response.setHeader("refresh","2;url=T_HR_JCQK_all.jsp");
	  	}else{
	      	out.println("<H2><center>记录添加失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新输入信息!</center></H3>");
	      	response.setHeader("refresh","2;url=T_HR_JCQK_alter.jsp");
	    }
     %>
   	</div>
  </body>
</html>
