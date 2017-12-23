<%@ page language="java" import="java.util.*,com.opensymphony.xwork2.ActionContext" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>人事管理系统主页</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Mycss.css" type="text/css"></link>

  </head>
  
<body>
	<div> <jsp:include  page="top.jsp" flush="true"/></div>
	<div id="mainbody">
	<table align=center cellpadding="10" cellspacing="10" color="burlywood">
	  <tr >
	    <td>
	    	<div>
	    	<a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp" title="员工基本信息">
	    	<img src="<%=path %>/images/YGJBXX.png" width="240" height="180" />
	    	</a>
	    	<center>员工基本信息</center>
	    	</div>
	    </td>
	    
	    <td>
	    	<div>
	    	<a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp" title="部门信息">
	    	<img src="<%=path %>/images/BMXX.png" width="240" height="180" />
	    	</a>
	    	<center >部门信息</center>
	    	</div>
	    </td>
	    
	    <td>
	    	<div>
	    	<a href="<%=basePath %>T_HR_XXLL/T_HR_XXLL_all.jsp" title="学习履历">
	    	<img src="<%=path %>/images/XXLL.png" width="240" height="180" />
	    	</a>
	    	<center >学习履历</center>
	    	</div>
	    </td>
	  </tr>
	</table>
	</div>
  </body>
</html>
