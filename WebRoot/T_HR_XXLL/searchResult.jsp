<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_XXLL,com.oper.T_HR_XXLLOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学习履历表</title>
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>
  </head>
  
  <body>
  	<div> <jsp:include  page="top.jsp" flush="true"/></div>
  		<div id="mainbody">
  		<div id="search">
			<form action="T_HR_XXLL/searchResult.jsp" method="get" style="text-align:center">
				<input type="text" placeholder="输入履历ID" name="XXLLID">
				<input type="submit" value="搜索" />
			</form>
		</div>
        <table class="showTB" align="center" cellpadding="10" cellspacing="0" >
        <caption align="top"><h3>学习培训履历表</h3></caption>
      		<tr style="background-color:#c6c6c6">
      			<th>履历ID</th>
      			<th>人ID</th>
      			<th>就读学校</th>
      			<th>所学专业</th>
      			<th>更新时间</th>
      			<th colspan="2"><a href="T_HR_XXLL/T_HR_XXLL_add.jsp" title="添加/Add">添加/Add</a></th>
      		</tr>
    <% 
    	String ID = request.getParameter("XXLLID");
        T_HR_XXLLOper op= new T_HR_XXLLOper();
        List<T_HR_XXLL> list = op.searchByXXLLID(Integer.parseInt(ID));
        T_HR_XXLL each = new T_HR_XXLL();
                
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
	        	each = (T_HR_XXLL)list.get(num-1);
		     %>
		     	<tr>
			     	<td><%=each.getXXLLID() %></td>
			     	<td><%=each.getRID() %></td>
			     	<td><%=each.getJDXX() %></td>
			     	<td><%=each.getSXZY() %></td>
			     	<td><a href="T_HR_XXLL/T_HR_XXLL_alter.jsp?id=<%=each.getXXLLID() %>" title="编辑">编辑</a></td>
			     	<td><a href="T_HR_XXLL/delResult.jsp?id=<%=each.getRID() %>" title="删除">删除 </a></td>
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
      			<a href="T_HR_XXLL/T_HR_XXLL_all.jsp?page=1">第一页</a>
      			<a href="T_HR_XXLL/T_HR_XXLL_all.jsp?page=<%=currentPage-1 %>">上一页</a>
      		<%}if(currentPage<totalPage){ %>
      			<a href="T_HR_XXLL/T_HR_XXLL_all.jsp?page=<%=currentPage+1 %>">下一页</a>
      			<a href="T_HR_XXLL/T_HR_XXLL_all.jsp?page=<%=totalPage %>">最后一页</a>
      		<%}       
      		%>
      </div>
    </div>
  </body>
</html>
