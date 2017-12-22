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
	<link rel="stylesheet" href="<%=basePath %>/CSS/Mycss.css" type="text/css"></link>
  </head>
  
  <body>
  	<div id="mytop">
		<div id="myhead">
			<span style="float:left;">欢迎：<br></span>
		    <span style="float:right;"><a href="<%=basePath %>index.jsp" target="_top">注	销</a></span>
		 	<table style="float: left;">
		 		<tr>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_YGJBXX/T_HR_YGJBXX_all.jsp" title="员工基本信息">员工基本信息</a></td>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_BMXX/T_HR_BMXX_all.jsp" title="部门信息">部门信息</a></td>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp" title="奖惩情况">奖惩情况</a></td>
		 			<td class="headtd"><a href="<%=basePath %>T_HR_YGGZ/T_HR_YGGZ_all.jsp" title="员工工资">员工工资</a></td>	
		 			<td class="headtd"><a href="<%=basePath %>T_HR_XXLL/T_HR_XXLL_all.jsp" title="学习履历">学习履历</a></td>		 			
		 		</tr>
		 	</table>
		 	
	    </div>
    </div>
  		<div id="mainbody">
  		<div id="search">
			<form action="XXLL_search.jsp" method="get" style="text-align:center">
				<input type="text" placeholder="输入学习履历编号" name="XXLLID">
				<input type="text" placeholder="输入姓名编号" name="RID" />
				<input type="submit" value="搜索" />
			</form>
		</div>
        <table class="showTB" align="center" cellpadding="10" cellspacing="0" >
      		<tr style="background-color:#c6c6c6">
      			<th>学习履历编号</th>
      			<th>姓名编号</th>
      			<th>就读学校</th>
      			<th>所学专业</th>
      			<th>更新时间</th>
      			<th colspan="2"><a href="T_HR_XXLL/T_HR_XXLL_add.jsp" title="添加/Add">添加/Add</a></th>
      			<!-- <th><a href="T_HR_XXLL_add.jsp" title="添加/Add">添加/Add</a></th>  -->
      		</tr>
    <% 
        T_HR_XXLLOper all= new T_HR_XXLLOper();
        List<T_HR_XXLL> list = all.findALLT_HR_XXLLs();
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
