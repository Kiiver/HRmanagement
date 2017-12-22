<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_YGJBXX,com.oper.T_HR_YGJBXXOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工基本信息</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
  </head>
  
  <body>
  	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  		<div id="mainbody">
  		<div id="search">
			<form action="T_HR_YGJBXX/searchResult.jsp" method="get" style="text-align:center">
				<input type="text" placeholder="输入编号" name="RID">
				<input type="submit" value="搜索" />
			</form>
		</div>
        <table class="showTB" align="center" cellpadding="10" cellspacing="0" >
        	<caption align="top"><h3>员工基本信息表</h3></caption>
      		<tr style="background-color:#c6c6c6">
      			<th>ID号</th>
      			<th>工号</th>
      			<th>姓名</th>
      			<th>性别</th>
      			<th>籍贯</th>
      			<th>所属部门</th>
      			<th>职位</th>
      			<th>证件号码</th>
      			<th>政治面貌</th>
      			<th>出生日期</th>
      			<th colspan="2"><a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_add.jsp" title="添加/Add">添加/Add</a></th>
      		</tr>
    <% 
    	String RID = request.getParameter("RID");
        T_HR_YGJBXXOper op = new T_HR_YGJBXXOper();
        List<T_HR_YGJBXX> list = op.searchByRID(Integer.parseInt(RID));
        T_HR_YGJBXX each = new T_HR_YGJBXX();
                
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
	        	each = (T_HR_YGJBXX)list.get(num-1);
		     %>
		     	<tr>
			     	<td><%=each.getRID() %></td>
			     	<td><%=each.getGH() %></td>
			     	<td><%=each.getXM() %></td>
			     	<td><%=each.getXB() %></td>
			     	<td><%=each.getJG() %></td>
			     	<td><%=each.getSSBM() %></td>
			     	<td><%=each.getZW() %></td>
			     	<td><%=each.getZJHM() %></td>
			     	<td><%=each.getZZMM() %></td>
			     	<td><%=each.getCSRQ() %></td>
			     	<td><a href="T_HR_YGJBXX/T_HR_YGJBXX_alter.jsp?id=<%=each.getRID() %>" title="编辑">编辑</a></td>
			     	<td><a href="T_HR_YGJBXX/delResult.jsp?id=<%=each.getRID() %>" title="删除">删除 </a></td>
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
      			<a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp?page=1">第一页</a>
      			<a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp?page=<%=currentPage-1 %>">上一页</a>
      		<%}if(currentPage<totalPage){ %>
      			<a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp?page=<%=currentPage+1 %>">下一页</a>
      			<a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp?page=<%=totalPage %>">最后一页</a>
      		<%}       
      		%>
      </div>
    </div>
  </body>
</html>
