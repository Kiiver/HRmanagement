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
	  	T_HR_RXXX rxxx = new T_HR_RXXX();
	  	T_HR_RXXXOper op = new T_HR_RXXXOper();
	  	String picname = request.getParameter("file");
	  	
	  	if(picname.equals(null)){picname = request.getParameter("XP");}
	  	rxxx.setID(Integer.parseInt(request.getParameter("ID")));
	  	rxxx.setRID(Integer.parseInt(request.getParameter("RID")));
	  	rxxx.setPSSJ(request.getParameter("PSSJ"));
	  	rxxx.setLX(request.getParameter("LX"));
	  	rxxx.setYT(request.getParameter("YT"));
	  	rxxx.setXP(picname); //相片名字
	  	rxxx.setGXRID(request.getParameter("GXRID"));
	  	rxxx.setGXRXM(request.getParameter("GXRXM"));
	  	rxxx.setGXLX(request.getParameter("GXLX"));

	 	boolean result = op.alterT_HR_RXXX(rxxx);
	    out.println("<br/>");
	    if(result){
			out.println("<H2><center>记录修改成功!</center></H2><br>"); 
	      	out.println("<H3><center>2秒钟后，自动跳转到人像信息页面！</center></H3>");
	  		response.setHeader("refresh","2;url=T_HR_RXXX_all.jsp");
	  	}else{
	      	out.println("<H2><center>记录修改失败!</center></H2><br>"); 
	      	out.println("<H3><center>请重新输入信息!</center></H3>");
	      	response.setHeader("refresh","2;url=T_HR_RXXX_alter.jsp");
	    }
	 	out.println("</center></H2>");
	 %>
 	</div>
  </body>
</html>