package com.oper;

import java.sql.*;
import java.util.*;

import com.bean.T_HR_YGGZ;
import com.oper.DBC;

public class T_HR_YGGZOper {
	DBC db = new DBC();
	Connection conn = db.getConnection();
	String sql = "";
	Statement stmt;
	ResultSet rs;
	public List<T_HR_YGGZ> findALLT_HR_YGGZs()throws Exception{
		sql = "SELECT * FROM t_hr_yggz";
		List<T_HR_YGGZ> list = new ArrayList<T_HR_YGGZ>();
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_YGGZ yggz = new T_HR_YGGZ();
				yggz.setGZID(rs.getInt("GZID"));
				yggz.setRID(rs.getInt("RID"));
				yggz.setJBGZ(rs.getInt("JBGZ"));
				yggz.setZWGZ(rs.getInt("ZWGZ"));
				yggz.setYXBS(rs.getInt("YXBS"));
				yggz.setGXRID(rs.getInt("GXRID"));
				yggz.setGXRXM(rs.getString("GXRXM"));
				yggz.setGXLX(rs.getInt("GXLX"));
				yggz.setGXYY(rs.getString("GXYY"));
				yggz.setGXSJ(rs.getTimestamp("GXSJ"));
				list.add(yggz);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public List<T_HR_YGGZ> searchByGZID(int GZID)throws Exception{
		List<T_HR_YGGZ> list = new ArrayList<T_HR_YGGZ>();
		sql = "SELECT * FROM t_hr_yggz WHERE GZID='"+GZID+"'";
		try{
	    	stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_YGGZ yggz = new T_HR_YGGZ();
				yggz.setGZID(rs.getInt("GZID"));
				yggz.setRID(rs.getInt("RID"));
				yggz.setJBGZ(rs.getInt("JBGZ"));
				yggz.setZWGZ(rs.getInt("ZWGZ"));
				yggz.setYXBS(rs.getInt("YXBS"));
				yggz.setGXRID(rs.getInt("GXRID"));
				yggz.setGXRXM(rs.getString("GXRXM"));
				yggz.setGXLX(rs.getInt("GXLX"));
				yggz.setGXYY(rs.getString("GXYY"));
				//yggz.setGXSS(rs.getString("GXSS"));
				list.add(yggz);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public boolean addYGGZ(T_HR_YGGZ yggz)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String sqla = "INSERT INTO t_hr_yggz(RID,JBGZ,ZWGZ,YXBS,GXRID,GXRXM,GXLX,GXYY,GXSJ) ";
		String sqlb = "VALUES('"+yggz.getRID()+"'," +
								"'"+yggz.getJBGZ()+"'," +
								"'"+yggz.getZWGZ()+"'," +
								"'"+yggz.getYXBS()+"'," +
								"'"+yggz.getGXRID()+"'," +
								"'"+yggz.getGXRXM()+"'," +
								"'"+yggz.getGXLX()+"'," +
								"'"+yggz.getGXYY()+"'," +
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
	public boolean delYGGZ(String GZID)throws Exception{
		sql = "DELETE FROM t_hr_yggz where RID='"+GZID+"'";
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
	public boolean alterYGGZ(T_HR_YGGZ yggz)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String sqla = " UPDATE t_hr_yggz SET ";
		String sqlc = " WHERE GZID=" + yggz.getGZID();
		String sqlb = 	" RID='"+yggz.getRID()+"'," +
						" JBGZ='"+yggz.getJBGZ()+"'," +
						" ZWGZ='"+yggz.getZWGZ()+"'," +
						" YXBS='"+yggz.getYXBS()+"'," +
						" GXRID='"+yggz.getGXRID()+"'," +
						" GXRXM='"+yggz.getGXLX()+"'," +
						" GXYY='"+yggz.getGXYY()+"'," +						
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
