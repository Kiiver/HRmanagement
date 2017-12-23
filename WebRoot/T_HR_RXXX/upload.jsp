<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.jspsmart.upload.*" %>
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
	  
	  	//上传照片初始化
	 	SmartUpload myfile=new SmartUpload();
	 	myfile.initialize(pageContext);
	 	myfile.setMaxFileSize(10000000);//文件大小
	 	myfile.setAllowedFilesList("jpg,png");
	 	myfile.upload();
	 	
	 	int count=myfile.save("/Pictures");
	 	out.println("<H2><center>"+count+"个文件上传成功");
	 	for(int i=0;i<myfile.getFiles().getCount();i++)
	 	{
	 		File file=myfile.getFiles().getFile(i);
	 		if(file.isMissing()) continue;
	 		%>
	 			<table class="showTB" align="center" cellpadding="10" cellspacing="0">
	 				<tr>
	 					<td>文件名</td>
	 					<td><%=file.getFileName() %></td>
	 					<td>长度</td>
	 					<td><%=file.getSize() %></td>
	 				</tr>
	 			</table>
	 		<%	
	 	}
	 	out.println("</center></H2>");
	 	
	 	response.setHeader("refresh","5;url=T_HR_RXXX_add.jsp");
	 %>
 	</div>
  </body>
</html>