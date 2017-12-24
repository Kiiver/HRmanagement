<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.oper.T_HR_JCQKOper" %>
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
     	//获取表单信息
     	String JCQK_ID= request.getParameter("id");
     	T_HR_JCQKOper op = new T_HR_JCQKOper();
	    boolean result = op.delT_HR_JCQK(JCQK_ID);
	    out.println("<br/><br/><br/><br/><br/><br/>");
	    if(result){
			out.println("<H2><center>记录删除成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到奖惩情况页面！</center></H3>");
	  	}else{
	      	out.println("<H2><center>记录删除失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新删除!</center></H3>");
	    }
	    response.setHeader("refresh","2;url=T_HR_JCQK_all.jsp");
     %>
   	</div>
  </body>
</html>
