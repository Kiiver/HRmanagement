package com.oper;
import java.sql.*;

public class DBC {
	Connection conn=null;
	public Connection getConnection(){
//		String url = "jdbc:mysql://127.0.0.1:3306/java_database";// URLָ��Ҫ���ʵ����ݿ���java_database
		String url = "jdbc:mysql://localhost:3306/db";// URLָ��Ҫ���ʵ����ݿ���java_database
		String user="root";			//�û���
		String password="zxc123";	//����
		try{
			Class.forName("com.mysql.jdbc.Driver");//��������
//			Class.forName("net.sourceforge.jtds.jdbc.Driver").newInstance();//��������
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
