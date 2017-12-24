package com.oper;

import java.sql.*;
import java.util.*;

import com.bean.T_HR_JCQK;
import com.oper.DBC;

public class T_HR_JCQKOper {
	
	public List<T_HR_JCQK> findALLT_HR_JCQK()throws Exception{
		DBC db = new DBC();
		Connection conn = db.getConnection();
		String sql = "SELECT * FROM t_hr_jcqk";
		ResultSet rs;
		List<T_HR_JCQK> list = new ArrayList<T_HR_JCQK>();
		try{
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			System.out.println("2222");
			while(rs.next()){
				System.out.println("4444");
				T_HR_JCQK jcqk = new T_HR_JCQK();
				jcqk.setJCQK_ID(rs.getInt("JCQK_ID"));
				System.out.println("JCQK_ID");
				jcqk.setRID(rs.getInt("RID"));
				System.out.println("RID");
				jcqk.setJCQK(rs.getString("JCQK"));
				jcqk.setJCDJ(rs.getString("JCDJ"));
				jcqk.setJCDW(rs.getString("JCDW"));
				jcqk.setJCSJ(rs.getString("JCSJ"));
				jcqk.setGXRID(rs.getString("GXRID"));
				jcqk.setGXRXM(rs.getString("GXRXM"));
				jcqk.setGXLX(rs.getString("GXLX"));
				jcqk.setGXYY(rs.getString("GXYY"));
				System.out.println("GXYY");
				jcqk.setGXSJ(rs.getString("GXSJ"));
				System.out.println(rs.getTimestamp("GXSJ"));
				list.add(jcqk);
			}
			return list;
		}catch(Exception ex){
			System.out.println("dsf");
			return null;
			
		}finally{
			conn.close();
		}
	}

	public List<T_HR_JCQK> searchT_HR_JCQK(int JCQK_ID)throws Exception{
		DBC db = new DBC();
		Connection conn = db.getConnection();
		ResultSet rs;
		String sql;
		List<T_HR_JCQK> list = new ArrayList<T_HR_JCQK>();
		try{
	    	//输入的查询信息为顾客编号 
			sql = "SELECT * FROM t_hr_jcqk WHERE JCQK_ID='"+JCQK_ID+"'";
	    	Statement stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
	        while(rs.next()){
	        	T_HR_JCQK jcqk = new T_HR_JCQK();
	        	System.out.println("1");
				jcqk.setJCQK_ID(rs.getInt("JCQK_ID"));
				System.out.println(JCQK_ID);
				jcqk.setRID(rs.getInt("RID"));
				System.out.println("3");
				jcqk.setJCQK(rs.getString("JCQK"));
				jcqk.setJCDJ(rs.getString("JCDJ"));
				jcqk.setJCDW(rs.getString("JCDW"));
				jcqk.setJCSJ(rs.getString("JCSJ"));
				jcqk.setGXRID(rs.getString("GXRID"));
				jcqk.setGXRXM(rs.getString("GXRXM"));
				jcqk.setGXLX(rs.getString("GXLX"));
				System.out.println("4");
				jcqk.setGXYY(rs.getString("GXYY"));
				System.out.println("5");
				jcqk.setGXSJ(rs.getString("GXSJ"));
				System.out.println("6");
				list.add(jcqk);
	        }
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}

	public boolean delT_HR_JCQK(String JCQK_ID)throws Exception{
		DBC db = new DBC();
		Connection conn = db.getConnection();
		try{
			Statement stmt = conn.createStatement();
			String  sql = "DELETE FROM t_hr_jcqk where JCQK_ID='"+JCQK_ID+"'";
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
 
	public boolean alterT_HR_JCQK(T_HR_JCQK t_hr_jcqk)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		DBC db = new DBC();
		Connection conn = db.getConnection();
		String sql = "UPDATE t_hr_jcqk SET "
				+ "RID='"+t_hr_jcqk.getRID()+"',"
				+ "JCQK='"+t_hr_jcqk.getJCQK()+"',"
				+ "JCDJ='"+t_hr_jcqk.getJCDJ()+"',"
				+ "JCDW='"+t_hr_jcqk.getJCDW()+"',"
				+ "JCSJ='"+t_hr_jcqk.getJCSJ()+"',"
				+ "GXRID='"+t_hr_jcqk.getGXRID()+"',"
				+ "GXRXM='"+t_hr_jcqk.getGXRXM()+"',"
				+ "GXLX='"+t_hr_jcqk.getGXLX()+"',"
				+ "GXYY='"+t_hr_jcqk.getGXYY()+"',"
				+ "GXSJ='"+ts+"' "
				+ "WHERE JCQK_ID='"+t_hr_jcqk.getJCQK_ID()+"'";
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
    
	public boolean addT_HR_JCQK(T_HR_JCQK t_hr_jcqk)throws Exception{
		DBC db = new DBC();
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		Connection conn = db.getConnection();
		String sql = "INSERT INTO t_hr_jcqk(JCQK_ID,RID,JCQK,JCDJ,JCDW,JCSJ,GXRID,GXRXM,GXLX,GXYY,GXSJ) VALUES('"+t_hr_jcqk.getJCQK_ID()+"','"+t_hr_jcqk.getRID()+"','"+t_hr_jcqk.getJCQK()+"','"+t_hr_jcqk.getJCDJ()+"','"+t_hr_jcqk.getJCDW()+"','"+t_hr_jcqk.getJCSJ()+"','"+t_hr_jcqk.getGXRID()+"','"+t_hr_jcqk.getGXRXM()+"','"+t_hr_jcqk.getGXLX()+"','"+t_hr_jcqk.getGXYY()+"','"+ts+"')";
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
