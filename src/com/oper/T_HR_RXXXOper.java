package com.oper;

import java.sql.*;
import java.util.*;

import com.bean.T_HR_RXXX;
import com.oper.DBC;

public class T_HR_RXXXOper {
	DBC db = new DBC();
	Connection conn = db.getConnection();
	String sql = "";
	Statement stmt;
	ResultSet rs;
	public List<T_HR_RXXX> findALLT_HR_RXXX()throws Exception{
		sql = "SELECT * FROM t_hr_rxxx";
		List<T_HR_RXXX> list = new ArrayList<T_HR_RXXX>();
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_RXXX t_hr_rxxx = new T_HR_RXXX();
				t_hr_rxxx.setID(rs.getInt("ID"));
				t_hr_rxxx.setRID(rs.getInt("RID"));
				t_hr_rxxx.setPSSJ(rs.getDate("PSSJ").toString());
				t_hr_rxxx.setLX(rs.getString("LX"));
				t_hr_rxxx.setYT(rs.getString("YT"));
				t_hr_rxxx.setXP(rs.getString("XP"));
				t_hr_rxxx.setGXRID(rs.getString("GXRID"));
				t_hr_rxxx.setGXRXM(rs.getString("GXRXM"));
				t_hr_rxxx.setGXLX(rs.getString("GXLX"));
				t_hr_rxxx.setGXSJ(rs.getTimestamp("GXSJ"));
				list.add(t_hr_rxxx);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	
	public List<T_HR_RXXX> searchByID(int ID)throws Exception{
		sql = "SELECT * FROM t_hr_rxxx WHERE ID='"+ID+"'";
		List<T_HR_RXXX> list = new ArrayList<T_HR_RXXX>();
		try{
	    	//输入的查询信息为编号 
	    	stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_RXXX t_hr_rxxx = new T_HR_RXXX();
				t_hr_rxxx.setID(rs.getInt("ID"));
				t_hr_rxxx.setRID(rs.getInt("RID"));
				t_hr_rxxx.setPSSJ(rs.getString("PSSJ"));
				t_hr_rxxx.setLX(rs.getString("LX"));
				t_hr_rxxx.setYT(rs.getString("YT"));
				t_hr_rxxx.setXP(rs.getString("XP"));		//图片名
				t_hr_rxxx.setGXRID(rs.getString("GXRID"));
				t_hr_rxxx.setGXRXM(rs.getString("GXRXM"));
				t_hr_rxxx.setGXLX(rs.getString("GXLX"));
				t_hr_rxxx.setGXSJ(rs.getTimestamp("GXSJ"));			
				list.add(t_hr_rxxx);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public List<T_HR_RXXX> searchByRID(int RID)throws Exception{
		sql = "SELECT * FROM t_hr_rxxx WHERE RID='"+RID+"'";
		List<T_HR_RXXX> list = new ArrayList<T_HR_RXXX>();
		try{
	    	//输入的查询信息为编号 
	    	stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_RXXX t_hr_rxxx = new T_HR_RXXX();
				t_hr_rxxx.setID(rs.getInt("ID"));
				t_hr_rxxx.setRID(rs.getInt("RID"));
				t_hr_rxxx.setPSSJ(rs.getString("PSSJ"));
				t_hr_rxxx.setLX(rs.getString("LX"));
				t_hr_rxxx.setYT(rs.getString("YT"));
				t_hr_rxxx.setXP(rs.getString("XP"));		//图片名
				t_hr_rxxx.setGXRID(rs.getString("GXRID"));
				t_hr_rxxx.setGXRXM(rs.getString("GXRXM"));
				t_hr_rxxx.setGXLX(rs.getString("GXLX"));
				t_hr_rxxx.setGXSJ(rs.getTimestamp("GXSJ"));			
				list.add(t_hr_rxxx);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public boolean delT_HR_RXXX(String ID)throws Exception{
		sql = "DELETE FROM t_hr_rxxx where ID='"+ID+"'";
		try{
			stmt = conn.createStatement();
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
	
	public boolean alterT_HR_RXXX(T_HR_RXXX t_hr_rxxx)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		sql = "UPDATE t_hr_rxxx SET " +
				"RID='"+t_hr_rxxx.getRID()+"'," +
				"GXRID='"+t_hr_rxxx.getGXRID()+"'," +
				"PSSJ='"+t_hr_rxxx.getPSSJ()+"'," +
				"LX='"+t_hr_rxxx.getLX()+"'," +
				"YT='"+t_hr_rxxx.getYT()+"'," +
				"XP='"+t_hr_rxxx.getXP()+"'," +
				"GXRID='"+t_hr_rxxx.getGXRID()+"'," +
				"GXRXM='"+t_hr_rxxx.getGXRXM()+"'," +
				"GXLX='"+t_hr_rxxx.getGXLX()+"'," +
				"GXSJ='"+ts+"' " +
				"WHERE ID='"+t_hr_rxxx.getID()+"'";
		try{
			stmt = conn.createStatement();
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
	
	public boolean addT_HR_RXXX(T_HR_RXXX rxxx)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		sql = "INSERT INTO t_hr_rxxx(RID,PSSJ,LX,YT,XP,GXRID,GXRXM,GXLX,GXSJ) " +
				"VALUES('"+rxxx.getRID()+"'," +
						"'"+rxxx.getPSSJ()+"'," +
						"'"+rxxx.getLX()+"'," +
						"'"+rxxx.getYT()+"'," +
						"'"+rxxx.getXP()+"'," +
						"'"+rxxx.getGXRID()+"'," +
						"'"+rxxx.getGXRXM()+"'," +
						"'"+rxxx.getGXLX()+"'," +
						"'"+ts+"')";		//系统当前时间
						//"'"+rxxx.getGXSJ()+"')";
		try{
			stmt = conn.createStatement();
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
