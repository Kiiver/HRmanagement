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
	  	int ID = Integer.parseInt(request.getParameter("ID"));
	  
	  	//上传照片初始化
	 	SmartUpload myfile=new SmartUpload();
	 	myfile.initialize(pageContext);
	 	myfile.setMaxFileSize(10000000);//文件大小
	 	myfile.setAllowedFilesList("jpg,png");
	 	myfile.upload();
	 	
	 	int count=myfile.save("/Pictures");
	 	for(int i=0;i<myfile.getFiles().getCount();i++)
	 	{
	 		File file=myfile.getFiles().getFile(i);
	 		if(file.isMissing()) continue;
	 		out.println("<br>文件名:"+file.getFileName()+"长度"+file.getSize()+"扩展名"+file.getFileExt()+"<br><br>");
	 		
	 		rxxx.setID(ID);
		  	rxxx.setRID(Integer.parseInt(request.getParameter("RID")));
		  	rxxx.setPSSJ(request.getParameter("PSSJ"));
		  	rxxx.setLX(request.getParameter("LX"));
		  	rxxx.setYT(request.getParameter("YT"));
		  	rxxx.setXP(file.getFileName()); //相片名字
		  	rxxx.setGXRID(request.getParameter("GXRID"));
		  	rxxx.setGXRID(request.getParameter("GXRID"));
		  	rxxx.setGXRXM(request.getParameter("GXRXM"));
		  	//rxxx.setGXSJ(request.getParameter("GXSJ"));//获取当前时间
		  	op.addT_HR_RXXX(rxxx);
	 	}
	 	out.println("</center></H2>");
	 	
	 	response.setHeader("refresh","5;url=T_HR_RXXX/T_HR_RXXX_add.jsp");
	 %>
 	</div>
  </body>
</html>