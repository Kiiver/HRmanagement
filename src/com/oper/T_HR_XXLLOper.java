package com.oper;

import java.sql.*;
import java.util.*;

import com.bean.T_HR_XXLL;
import com.oper.DBC;

public class T_HR_XXLLOper {
	DBC db = new DBC();
	Connection conn = db.getConnection();
	String sql = "";
	Statement stmt;
	ResultSet rs;
	public List<T_HR_XXLL> findALLT_HR_XXLLs()throws Exception{
		sql = "SELECT * FROM t_hr_xxll";
		List<T_HR_XXLL> list = new ArrayList<T_HR_XXLL>();
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_XXLL xxll = new T_HR_XXLL();
				xxll.setXXLLID(rs.getInt("XXLLID"));
				xxll.setRID(rs.getInt("RID"));
				xxll.setQSRQ(rs.getString("QSRQ"));
				xxll.setJZRQ(rs.getString("JZRQ"));
				xxll.setJDXX(rs.getString("JDXX"));
				xxll.setSXZY(rs.getString("SXZY"));
				xxll.setZW(rs.getString("ZW"));
				xxll.setZMR(rs.getString("ZMR"));
				xxll.setGXRID(rs.getString("GXRID"));
				xxll.setGXRXM(rs.getString("GXRXM"));
				xxll.setGXLX(rs.getString("GXLX"));
				xxll.setGXYY(rs.getString("GXYY"));
				xxll.setGXSJ(rs.getTimestamp("GXSJ"));
				list.add(xxll);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public List<T_HR_XXLL> searchByXXLLID(int XXLLID)throws Exception{
		List<T_HR_XXLL> list = new ArrayList<T_HR_XXLL>();
		sql = "SELECT * FROM t_hr_xxll WHERE XXLLID='"+XXLLID+"'";
		try{
	    	stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_XXLL xxll = new T_HR_XXLL();
				xxll.setXXLLID(rs.getInt("XXLLID"));
				xxll.setRID(rs.getInt("RID"));
				xxll.setQSRQ(rs.getString("QSRQ"));
				xxll.setJZRQ(rs.getString("JZRQ"));
				xxll.setJDXX(rs.getString("JDXX"));
				xxll.setSXZY(rs.getString("SXZY"));
				xxll.setZW(rs.getString("ZW"));
				xxll.setZMR(rs.getString("ZMR"));
				xxll.setGXRID(rs.getString("GXRID"));
				xxll.setGXRXM(rs.getString("GXRXM"));
				xxll.setGXLX(rs.getString("GXLX"));
				xxll.setGXYY(rs.getString("GXYY"));
				xxll.setGXSJ(rs.getTimestamp("GXSJ"));
				list.add(xxll);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public boolean addXXLL(T_HR_XXLL xxll)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String sqla = "INSERT INTO t_hr_xxll(RID,QSRQ,JZRQ,JDXX,SXZY,ZW,ZMR,GXRID,GXRXM,GXLX,GXYY,GXSJ) ";
		String sqlb = "VALUES('"+xxll.getRID()+"'," +
								"'"+xxll.getQSRQ()+"'," +
								"'"+xxll.getJZRQ()+"'," +
								"'"+xxll.getJDXX()+"'," +
								"'"+xxll.getSXZY()+"'," +
								"'"+xxll.getZW()+"'," +
								"'"+xxll.getZMR()+"'," +
								"'"+xxll.getGXRID()+"'," +
								"'"+xxll.getGXRXM()+"'," +
								"'"+xxll.getGXLX()+"'," +
								"'"+xxll.getGXYY()+"'," +		
								"'"+ts+"')" ;//当前系统时间
		sql = sqla + sqlb;
		//System.out.println(sql);
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
	public boolean delXXLL(String XXLLID)throws Exception{
		sql = "DELETE FROM t_hr_xxll where XXLLID='"+XXLLID+"'";
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
	public boolean alterXXLL(T_HR_XXLL xxll)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String sqla = " UPDATE t_hr_xxll SET ";
		String sqlc = " WHERE XXLLID=" + xxll.getXXLLID();
		String sqlb = 	" RID='"+xxll.getRID()+"'," +
						" QSRQ='"+xxll.getQSRQ()+"'," +
						" JZRQ='"+xxll.getJZRQ()+"'," +
						" JDXX='"+xxll.getJDXX()+"'," +
						" SXZY='"+xxll.getSXZY()+"'," +
						" ZW='"+xxll.getZW()+"'," +
						" ZMR='"+xxll.getZMR()+"'," +
						" XRID='"+xxll.getGXRID()+"'," +
						" GXRXM='"+xxll.getGXRXM()+"'," +
						" GXLX='"+xxll.getGXLX()+"'," +
						" GXYY='"+xxll.getGXYY()+"'," +						
						" GXSJ='"+ts+"'" ;//当前系统时间
		sql = sqla + sqlb + sqlc;
		//System.out.println(sql);
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
}
