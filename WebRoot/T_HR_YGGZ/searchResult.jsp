<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_YGGZ,com.oper.T_HR_YGGZOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工工资表</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
  </head>
  
  <body>
	<div> <jsp:include  page="top.jsp" flush="true"/></div>	
  	<div id="mainbody">
  		<div id="search">
			<form action="T_HR_YGGZ/searchResult.jsp" method="get" style="text-align:center">
				<input type="text" placeholder="输入工资编号" name="GZID">
				<input type="submit" value="搜索" />
			</form>
		</div>
        <table class="showTB" align="center" cellpadding="10" cellspacing="0" >
        	<caption align="top"><h3>员工工资表</h3></caption>
      		<tr style="background-color:#c6c6c6">
      			<th>工资ID</th>
      			<th>姓名编号</th>
      			<th>基本工资</th>
      			<th>职务工资</th>
      			<th colspan="2"><a href="T_HR_YGGZ/T_HR_YGGZ_add.jsp" title="添加/Add">添加/Add</a></th>
      		</tr>
    <% 
    	String GZID = request.getParameter("GZID");
        T_HR_YGGZOper op= new T_HR_YGGZOper();
        List<T_HR_YGGZ> list = op.searchByGZID(Integer.parseInt(GZID));
        T_HR_YGGZ each = new T_HR_YGGZ();
                
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
	        	each = (T_HR_YGGZ)list.get(num-1);
		     %>
		     	<tr>
			     	<td><%=each.getGZID() %></td>
			     	<td><%=each.getRID() %></td>
			     	<td><%=each.getJBGZ() %></td>
			     	<td><%=each.getZWGZ() %></td>
			     	<td><a href="T_HR_YGGZ/T_HR_YGGZ_alter.jsp?id=<%=each.getGZID() %>" title="编辑">编辑</a></td>
			     	<td><a href="T_HR_YGGZ/delResult.jsp?id=<%=each.getRID() %>" title="删除">删除 </a></td>
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
      			<a href="T_HR_YGGZ/T_HR_YGGZ_all.jsp?page=1">第一页</a>
      			<a href="T_HR_YGGZ/T_HR_YGGZ_all.jsp?page=<%=currentPage-1 %>">上一页</a>
      		<%}if(currentPage<totalPage){ %>
      			<a href="T_HR_YGGZ/T_HR_YGGZ_all.jsp?page=<%=currentPage+1 %>">下一页</a>
      			<a href="T_HR_YGGZ/T_HR_YGGZ_all.jsp?page=<%=totalPage %>">最后一页</a>
      		<%}       
      		%>
      </div>
</div>
</body>
</html>
