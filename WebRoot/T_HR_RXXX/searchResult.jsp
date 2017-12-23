<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_RXXX,com.oper.T_HR_RXXXOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    <title>人像信息</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/CSS/Formcss.css"></link>
  </head>
  
  <body>
	<div> <jsp:include  page="top.jsp" flush="true"/></div>
      <div id="mainbody">
  		<div id="search">
			<form action="T_HR_RXXX/searchResult.jsp" method="get" style="text-align:center">
				<input type="text" placeholder="输入ID" name="ID">
				<input type="submit" value="搜索" />
			</form>
		</div>
		<table class="showTB" align="center" cellpadding="10" cellspacing="0" >
        	<caption align="top"><h3>人像信息表</h3></caption>
      		<tr style="background-color:#c6c6c6">
      			<th>编号</th>
      			<th>人员编号</th>
      			<th>拍摄时间</th>
      			<th>类型</th>
      			<th>用途</th>
      			<th>更新时间</th>
      			<th>相片</th>
      			<th colspan="2"><a href="<%=basePath %>T_HR_RXXX/T_HR_RXXX_add.jsp" title="添加/Add">添加/Add</a></th>
      		</tr>
      	<% 
      		String ID = request.getParameter("ID");
           T_HR_RXXXOper op = new T_HR_RXXXOper();
           List<T_HR_RXXX> list = op.searchByID(Integer.parseInt(ID));
           T_HR_RXXX each = new T_HR_RXXX();
                
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
	        	each = (T_HR_RXXX)list.get(num-1);
		     %>
		     	<tr>
			     	<td><%=each.getID() %></td>
			     	<td><%=each.getRID() %><br></td>
			     	<td><%=each.getPSSJ() %></td>
			     	<td><%=each.getLX() %></td>
			     	<td><%=each.getYT() %></td>
			     	<td><%=each.getGXSJ() %></td>
<!--			     	<td><%=each.getXP() %></td>-->
			    	<td style="text-align: center;padding-left: 10px;"><img id="img" src="<%=path %>/Pictures/<%=each.getXP() %>" width="90" height="120" /></td>
			     	<td><a href="T_HR_RXXX/T_HR_RXXX_alter.jsp?id=<%=each.getID() %>" title="编辑">编辑</a></td>
			     	<td><a href="T_HR_RXXX/delResult.jsp?id=<%=each.getID() %>" title="删除">删除 </a></td>
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
