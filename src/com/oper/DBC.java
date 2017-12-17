package com.oper;
import java.sql.*;

public class DBC {
	Connection conn=null;
	public Connection getConnection(){
//		String url = "jdbc:mysql://127.0.0.1:3306/java_database";// URL指向要访问的数据库名java_database
		String url = "jdbc:mysql://localhost:3306/db";// URL指向要访问的数据库名java_database
		String user="root";			//用户名
		String password="zxc123";	//密码
		try{
			Class.forName("com.mysql.jdbc.Driver");//加载驱动
//			Class.forName("net.sourceforge.jtds.jdbc.Driver").newInstance();//加载驱动
			conn = DriverManager.getConnection(url,user,password);
			return conn;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public void close(){
		try{
			if(conn!=null)
				conn.close();
		}catch(Exception e){}
	}
}
