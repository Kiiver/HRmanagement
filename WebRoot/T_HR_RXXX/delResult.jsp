<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.jspsmart.upload.*,com.bean.T_HR_RXXX,com.oper.T_HR_RXXXOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>人像信息表</title>
    <link rel="stylesheet" href="CSS/Formcss.css" type="text/css"></link>
  </head>
  
  <body>
  	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  	<div id="mainbody">
    <%
     	request.setCharacterEncoding("utf-8");
     	//获取表单信息
     	String ID = request.getParameter("id");
     	T_HR_RXXXOper op = new T_HR_RXXXOper();
	    boolean result = op.delT_HR_RXXX(ID);
	    out.println("<br/><br/><br/><br/><br/><br/>");
	    if(result){
			out.println("<H2><center>记录删除成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到人像信息页面！</center></H3>");
	  	}else{
	      	out.println("<H2><center>记录删除失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新删除!</center></H3>");
	    }
	    response.setHeader("refresh","2;url=T_HR_RXXX_all.jsp");
     %>
 	</div>
  </body>
</html>