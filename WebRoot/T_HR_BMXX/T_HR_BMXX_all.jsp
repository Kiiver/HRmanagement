<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_BMXX,com.oper.T_HR_BMXXOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>部门信息</title>
    
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/CSS/Formcss.css"></link>

  </head>
  
  <body>
  	<div> <jsp:include  page="top.jsp" flush="true"/></div>
      <div id="mainbody" >
  		<div id="search">
			<form action="T_HR_BMXX/searchResult.jsp" method="get" style="text-align:center">
				<input type="text" placeholder="输入ID" name="BM_ID">
				<input type="submit" value="搜索" />
			</form>
		</div>
		<table class="showTB" align="center" cellpadding="10" cellspacing="0" >
        	<caption align="top"><h3>部门信息表</h3></caption>
      		<tr style="background-color:#c6c6c6">
      			<th>部门ID</th>
      			<th>部门编号</th>
      			<th>部门名称</th>
      			<th>创建日期</th>
      			<th>职责描述</th>
      			<th>负责人</th>
      			<th>联系人</th>
      			<th>更新人ID</th>
      			<th>更新人姓名</th>
      			<th>更新类型</th>
      			<th colspan="2"><a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_add.jsp" title="添加/Add">添加/Add</a></th>
      		</tr>
      	<% 
           T_HR_BMXXOper all= new T_HR_BMXXOper();
           List<T_HR_BMXX> list = all.findALLT_HR_BMXX();
           T_HR_BMXX each = new T_HR_BMXX();
                
         //分页显示
         int i,num;
         int pageSize=10;								//每页的记录数(10)
         int totalSize=list.size();						//总记录数
         int totalPage=(totalSize+pageSize-1)/pageSize;	//总页数
         int currentPage=0;								//当前页 
        
         String strPage = request.getParameter("page");
         if(strPage==null) {currentPage=1;}
         else{currentPage=Integer.parseInt(strPage);}
         
         if(totalPage>0)
        {//将记录指针定位到当前页的第一条记录上
        	i=0;
        	num = (currentPage-1)*pageSize+1;
	        while(i<pageSize && num<=totalSize){
	        	each = (T_HR_BMXX)list.get(num-1);
		     %>
		     	<tr>
			     	<td><%=each.getBM_ID() %></td>
			     	<td><%=each.getBMBM() %></td>
			     	<td><%=each.getBMMC() %></td>
			     	<td><%=each.getCJRQ() %></td>
			     	<td><%=each.getZZMS() %></td>
			     	<td><%=each.getFZR() %></td>
			     	<td><%=each.getLXR() %></td>
			     	<td><%=each.getGXRID() %></td>
			     	<td><%=each.getGXRXM() %></td>
			     	<td><%=each.getGXLX() %></td>
			     	<td><a href="T_HR_BMXX/T_HR_BMXX_alter.jsp?id=<%=each.getBM_ID() %>" title="编辑">编辑</a></td>
			     	<td><a href="T_HR_BMXX/delResult.jsp?id=<%=each.getBM_ID() %>" title="删除">删除 </a></td>
		     	</tr>
		     <%
		     i++;num++;
		    }
		 }
         else{
		 	
		 }
     %>
   	
   	</table>
   	
   	
   	 <br/>
      
      <div align="center">
      		<p>第<%=currentPage %>页   共<%=totalPage %>页</p>
      		<%if(currentPage>1){ %>
      			<a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp?page=1">第一页</a>
      			<a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp?page=<%=currentPage-1 %>">上一页</a>
      		<%}if(currentPage<totalPage){ %>
      			<a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp?page=<%=currentPage+1 %>">下一页</a>
      			<a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp?page=<%=totalPage %>">最后一页</a>
      		<%}       
      		%>
      </div>
    </div>
  </body>
</html>
