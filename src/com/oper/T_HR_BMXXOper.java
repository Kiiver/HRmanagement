package com.oper;

import java.sql.*;
import java.util.*;

import com.bean.T_HR_BMXX;
import com.oper.DBC;

public class T_HR_BMXXOper {
	DBC db = new DBC();
	Connection conn = db.getConnection();
	String sql = "";
	Statement stmt;
	ResultSet rs;
	public List<T_HR_BMXX> findALLT_HR_BMXX()throws Exception{
		sql = "SELECT * FROM t_hr_bmxx";
		List<T_HR_BMXX> list = new ArrayList<T_HR_BMXX>();
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_BMXX t_hr_bmxx = new T_HR_BMXX();
				t_hr_bmxx.setBM_ID(rs.getInt("BM_ID"));
				t_hr_bmxx.setBMBM(rs.getString("BMBM"));
				t_hr_bmxx.setBMMC(rs.getString("BMMC"));
				t_hr_bmxx.setCJRQ(rs.getString("CJRQ"));
				t_hr_bmxx.setZZMS(rs.getString("ZZMS"));
				t_hr_bmxx.setFZR(rs.getString("FZR"));
				t_hr_bmxx.setLXR(rs.getString("LXR"));
				t_hr_bmxx.setGXRID(rs.getString("GXRID"));
				t_hr_bmxx.setGXRXM(rs.getString("GXRXM"));
				t_hr_bmxx.setGXLX(rs.getInt("GXLX"));
				t_hr_bmxx.setGXYY(rs.getString("GXYY"));
				t_hr_bmxx.setGXSJ(rs.getString("GXSJ"));
				list.add(t_hr_bmxx);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	
	public List<T_HR_BMXX> searchT_HR_BMXX(int BM_ID)throws Exception{
		sql = "SELECT * FROM t_hr_bmxx WHERE BM_ID='"+BM_ID+"'";
		List<T_HR_BMXX> list = new ArrayList<T_HR_BMXX>();
		try{
	    	//输入的查询信息为部门编号 
	    	stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_BMXX t_hr_bmxx = new T_HR_BMXX();
				t_hr_bmxx.setBM_ID(rs.getInt("BM_ID"));
				t_hr_bmxx.setBMBM(rs.getString("BMBM"));
				t_hr_bmxx.setBMMC(rs.getString("BMMC"));
				t_hr_bmxx.setCJRQ(rs.getString("CJRQ"));
				t_hr_bmxx.setZZMS(rs.getString("ZZMS"));
				t_hr_bmxx.setFZR(rs.getString("FZR"));
				t_hr_bmxx.setLXR(rs.getString("LXR"));
				t_hr_bmxx.setGXRID(rs.getString("GXRID"));
				t_hr_bmxx.setGXRXM(rs.getString("GXRXM"));
				t_hr_bmxx.setGXLX(rs.getInt("GXLX"));
				t_hr_bmxx.setGXYY(rs.getString("GXYY"));
				t_hr_bmxx.setGXSJ(rs.getString("GXSJ"));
				list.add(t_hr_bmxx);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	
	public boolean delT_HR_BMXX(String BM_ID)throws Exception{
		sql = "DELETE FROM t_hr_bmxx where BM_ID='"+BM_ID+"'";
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
	
	public boolean alterT_HR_BMXX(T_HR_BMXX t_hr_bmxx)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		sql = "UPDATE t_hr_bmxx SET " +
				"BMBM='"+t_hr_bmxx.getBMBM()+"'," +
				"BMMC='"+t_hr_bmxx.getBMMC()+"'," +
				"CJRQ='"+t_hr_bmxx.getCJRQ()+"'," +
				"ZZMS='"+t_hr_bmxx.getZZMS()+"'," +
				"FZR='"+t_hr_bmxx.getFZR()+"'," +
				"LXR='"+t_hr_bmxx.getLXR()+"'," +
				"GXRID='"+t_hr_bmxx.getGXRID()+"'," +
				"GXRXM='"+t_hr_bmxx.getGXRXM()+"'," +
				"GXLX='"+t_hr_bmxx.getGXLX()+"'," +
				"GXYY='"+t_hr_bmxx.getGXYY()+"'," +
				"GXSJ='"+ts+"' " +
				//"GXSJ='"+t_hr_bmxx.getGXSJ()+"' " +
				"WHERE BM_ID='"+t_hr_bmxx.getBM_ID()+"'";
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
	
	public boolean addT_HR_BMXX(T_HR_BMXX t_hr_bmxx)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		sql = "INSERT INTO t_hr_bmxx(BM_ID,BMBM,BMMC,CJRQ,ZZMS,FZR,LXR,GXRID,GXRXM,GXLX,GXYY,GXSJ) " +
				"VALUES('"+t_hr_bmxx.getBM_ID()+"'," +
						"'"+t_hr_bmxx.getBMBM()+"'," +
						"'"+t_hr_bmxx.getBMMC()+"'," +
						"'"+t_hr_bmxx.getCJRQ()+"'," +
						"'"+t_hr_bmxx.getZZMS()+"'," +
						"'"+t_hr_bmxx.getFZR()+"'," +
						"'"+t_hr_bmxx.getLXR()+"'," +
						"'"+t_hr_bmxx.getGXRID()+"'," +
						"'"+t_hr_bmxx.getGXRXM()+"'," +
						"'"+t_hr_bmxx.getGXLX()+"'," +
						"'"+t_hr_bmxx.getGXYY()+"'," +
						"'"+ts+"')";
						//"'"+t_hr_bmxx.getGXSJ()+"')";
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
