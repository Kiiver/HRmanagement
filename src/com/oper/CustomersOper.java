package com.oper;

import java.sql.*;
import java.util.*;

import com.bean.Customers;
import com.oper.DBConn;

public class CustomersOper {
	public List<Customers> findALLCustomers()throws Exception{
		DBConn db = new DBConn();
		Connection conn = db.getConnection();
		String sql = "SELECT * FROM customers";
		ResultSet rs;
		List<Customers> list = new ArrayList<Customers>();
		try{
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				Customers customers = new Customers();
				customers.setC_ID(rs.getInt("C_ID"));
				customers.setC_Name(rs.getString("C_Name"));
				customers.setC_Address(rs.getString("C_Address"));
				customers.setC_Tel(rs.getString("C_Tel"));
				list.add(customers);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public List<Customers> searchCustomers(String Search)throws Exception{
		DBConn db = new DBConn();
		Connection conn = db.getConnection();
		ResultSet rs;
		List<Customers> list = new ArrayList<Customers>();
		try{
	    	String reg="[0-9]+",sql;
	    	if(Search.matches(reg))
	    	{//输入的查询信息为顾客编号 
	    		sql = "SELECT * FROM customers WHERE C_ID='"+Search+"'";
	    	}
	    	else
	    	{//输入的查询信息为顾客姓名 
	    		sql = "SELECT * FROM customers WHERE C_Name='"+Search+"'";
	    	}
	    	Statement stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
			while(rs.next()){
				Customers customers = new Customers();
				customers.setC_ID(rs.getInt("C_ID"));
				customers.setC_Name(rs.getString("C_Name"));
				customers.setC_Address(rs.getString("C_Address"));
				customers.setC_Tel(rs.getString("C_Tel"));
				list.add(customers);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public boolean delCustomer(String Info)throws Exception{
		DBConn db = new DBConn();
		Connection conn = db.getConnection();
		try{
			Statement stmt = conn.createStatement();
			String  sql = "DELETE FROM customers where C_ID='"+Info+"'";
			if(stmt.executeUpdate(sql)==1)
				return true;
			else
				return false;
		}catch(Exception ex){
			return false;
		}finally{
			conn.close();
		}
	}
	public boolean alterCustomer(String Num,String Name,String Address,String Tel)throws Exception{
		DBConn db = new DBConn();
		Connection conn = db.getConnection();
		String sql = "UPDATE customers SET C_Name='"+Name+"',C_Address='"+Address+"',C_Tel='"+Tel+"' WHERE C_ID='"+Num+"'";
		try{
			Statement stmt = conn.createStatement();
			if( stmt.executeUpdate(sql) ==1 )
				return true;
			else
				return false;
		}catch(Exception ex){
			return false;
		}finally{
			conn.close();
		}
	}
	public boolean addCustomers(String Name,String Address,String Tel)throws Exception{
		DBConn db = new DBConn();
		Connection conn = db.getConnection();
		String sql = "INSERT INTO customers(C_Name,C_Address,C_Tel) VALUES('"+Name+"','"+Address+"','"+Tel+"')";
		try{
			Statement stmt = conn.createStatement();
			if(stmt.executeUpdate(sql)==1)
				return true;
			else
				return false;
		}catch(Exception ex){
			return false;
		}finally{
			conn.close();
		}
	}
}
