<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,com.bean.T_HR_JCQK,com.oper.T_HR_JCQKOper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>奖惩情况</title>
    
	<link rel="stylesheet" href="<%=basePath %>/CSS/Formcss.css" type="text/css"></link>

  </head>
  
  <body>
    	<div> <jsp:include  page="top.jsp" flush="true"/></div>
    <div id="mainbody">
  		<div id="search">
			<form action="T_HR_JCQK/searchResult.jsp" method="get" style="text-align:center">
				<input type="text" placeholder="输入奖惩情况编号" name="JCQK_ID">
				<input type="submit" value="搜索" />
			</form>
		</div>
        <table class="showTB" align="center" cellpadding="10" cellspacing="0" >
        	<caption align="top"><h3>奖惩情况</h3></caption>
        	<tr style="background-color:#c6c6c6">
      			<th>奖惩情况ID</th>
      			<th>人ID</th>
      			<th>奖惩情况</th>
      			<th>奖惩等级</th>
      			<th>奖惩单位</th>
      			<th>奖惩时间</th>
      			<th>更新人ID</th>
      			<th>更新人姓名</th>
      			<th>更新类型</th>
      			<th>更新原因</th>
      			<th colspan="2"><a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_add.jsp" title="添加/Add">添加/Add</a></th>
      		</tr>
      		<% 
    	String JCQK_ID = request.getParameter("JCQK_ID");
        T_HR_JCQKOper op = new T_HR_JCQKOper();
        List<T_HR_JCQK> list = op.searchT_HR_JCQK(Integer.parseInt(JCQK_ID));
        T_HR_JCQK each = new T_HR_JCQK();
        
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
	        	each = (T_HR_JCQK)list.get(num-1);
		     %>
		      <tr>
			     	<td><%=each.getJCQK_ID() %></td>
			     	<td><%=each.getRID() %></td>
			     	<td><%=each.getJCQK() %></td>
			     	<td><%=each.getJCDJ() %></td>
			     	<td><%=each.getJCDW() %></td>
			     	<td><%=each.getJCSJ() %></td>
			     	<td><%=each.getGXRID() %></td>
			     	<td><%=each.getGXRXM() %></td>
			     	<td><%=each.getGXLX() %></td>
			     	<td><%=each.getGXYY() %></td>
			     	<td><a href="T_HR_JCQK/T_HR_JCQK_alter.jsp?id=<%=each.getJCQK_ID() %>" title="编辑">编辑</a></td>
			     	<td><a href="T_HR_JCQK/delResult.jsp?id=<%=each.getJCQK_ID() %>" title="删除">删除 </a></td>
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
      			<a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp?page=1">第一页</a>
      			<a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp?page=<%=currentPage-1 %>">上一页</a>
      		<%}if(currentPage<totalPage){ %>
      			<a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp?page=<%=currentPage+1 %>">下一页</a>
      			<a href="<%=basePath %>T_HR_JCQK/T_HR_JCQK_all.jsp?page=<%=totalPage %>">最后一页</a>
      		<%}       
      		%>
      </div>
    </div>
  </body>
</html>
