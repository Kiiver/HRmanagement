package com.oper;

import java.sql.*;
import java.util.*;

import com.bean.T_HR_YGJBXX;
import com.oper.DBC;

public class T_HR_YGJBXXOper {
	DBC db = new DBC();
	Connection conn = db.getConnection();
	String sql = "";
	Statement stmt;
	ResultSet rs;
	public List<T_HR_YGJBXX> findALLT_HR_YGJBXXs()throws Exception{
		sql = "SELECT * FROM t_hr_ygjbxx";
		List<T_HR_YGJBXX> list = new ArrayList<T_HR_YGJBXX>();
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_YGJBXX ygjbxx = new T_HR_YGJBXX();
				ygjbxx.setRID(rs.getInt("RID"));
				ygjbxx.setGH(rs.getString("GH"));
				ygjbxx.setXM(rs.getString("XM"));
				ygjbxx.setJG(rs.getString("JG"));
				ygjbxx.setSSBM(rs.getInt("SSBM"));
				ygjbxx.setZW(rs.getString("ZW"));
				ygjbxx.setZJHM(rs.getString("ZJHM"));
				ygjbxx.setZJZL(rs.getString("ZJZL"));
				ygjbxx.setXB(rs.getString("XB"));
				ygjbxx.setZZMM(rs.getString("ZZMM"));
				ygjbxx.setCSRQ(rs.getString("CSRQ"));
				ygjbxx.setMZ(rs.getString("MZ"));
				ygjbxx.setHYZK(rs.getString("HYZK"));
				ygjbxx.setXL(rs.getString("XL"));
				ygjbxx.setXW(rs.getString("XW"));
				ygjbxx.setBYRQ(rs.getString("BYRQ"));
				ygjbxx.setBYXX(rs.getString("BYXX"));
				ygjbxx.setSXZY(rs.getString("SXZY"));
				ygjbxx.setZC(rs.getString("ZC"));
				ygjbxx.setHJLB(rs.getString("HJLB"));
				ygjbxx.setHJDXZQH(rs.getString("HJDXZQH"));
				ygjbxx.setHJDXZ(rs.getString("HJDXZ"));
				ygjbxx.setJZDXZQH(rs.getString("JZDXZQH"));
				ygjbxx.setJZDXZ(rs.getString("JZDXZ"));
				ygjbxx.setJZDYZBM(rs.getString("JZDYZBM"));
				ygjbxx.setLXDH(rs.getString("LXDH"));
				ygjbxx.setJTDH(rs.getString("JTDH"));
				ygjbxx.setDASZD(rs.getString("DASZD"));
				ygjbxx.setSFYJZZ(rs.getString("SFYJZZ"));
				ygjbxx.setJZZQSRQ(rs.getString("JZZQSRQ"));
				ygjbxx.setJZZJZRQ(rs.getString("JZZJZRQ"));
				ygjbxx.setSFYLDSC(rs.getInt("SFYLDSC"));
				ygjbxx.setSFBLGSBJJ(rs.getInt("SFBLGSBJJ"));
				ygjbxx.setSFBLGGJJ(rs.getInt("SFBLGGJJ"));
				ygjbxx.setGJJZH(rs.getString("GJJZH"));
				ygjbxx.setSFBLGZHBX(rs.getInt("SFBLGZHBX"));
				ygjbxx.setYDWSFBLTG(rs.getInt("YDWSFBLTG"));
				ygjbxx.setRYLB(rs.getString("RYLB"));
				ygjbxx.setSCRZRQ(rs.getString("SCRZRQ"));
				ygjbxx.setLZRQ(rs.getString("LZRQ"));
				ygjbxx.setLZYY(rs.getString("LZYY"));
				ygjbxx.setGXRID(rs.getInt("GXRID"));
				ygjbxx.setGXRXM(rs.getString("GXRXM"));
				ygjbxx.setGXLX(rs.getString("GXLX"));
				ygjbxx.setGXYY(rs.getString("GXYY"));
				ygjbxx.setGXSJ(rs.getTimestamp("GXSJ"));
				list.add(ygjbxx);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public List<T_HR_YGJBXX> searchByRID(int RID)throws Exception{
		List<T_HR_YGJBXX> list = new ArrayList<T_HR_YGJBXX>();
		sql = "SELECT * FROM t_hr_ygjbxx WHERE RID='"+RID+"'";
		try{
	    	stmt = conn.createStatement();
	        rs = stmt.executeQuery(sql);
			while(rs.next()){
				T_HR_YGJBXX ygjbxx = new T_HR_YGJBXX();
				ygjbxx.setRID(rs.getInt("RID"));
				ygjbxx.setGH(rs.getString("GH"));
				ygjbxx.setXM(rs.getString("XM"));
				ygjbxx.setJG(rs.getString("JG"));
				ygjbxx.setSSBM(rs.getInt("SSBM"));
				ygjbxx.setZW(rs.getString("ZW"));
				ygjbxx.setZJHM(rs.getString("ZJHM"));
				ygjbxx.setZJZL(rs.getString("ZJZL"));
				ygjbxx.setXB(rs.getString("XB"));
				ygjbxx.setZZMM(rs.getString("ZZMM"));
				ygjbxx.setCSRQ(rs.getString("CSRQ"));
				ygjbxx.setMZ(rs.getString("MZ"));
				ygjbxx.setHYZK(rs.getString("HYZK"));
				ygjbxx.setXL(rs.getString("XL"));
				ygjbxx.setXW(rs.getString("XW"));
				ygjbxx.setBYRQ(rs.getString("BYRQ"));
				ygjbxx.setBYXX(rs.getString("BYXX"));
				ygjbxx.setSXZY(rs.getString("SXZY"));
				ygjbxx.setZC(rs.getString("ZC"));
				ygjbxx.setHJLB(rs.getString("HJLB"));
				ygjbxx.setHJDXZQH(rs.getString("HJDXZQH"));
				ygjbxx.setHJDXZ(rs.getString("HJDXZ"));
				ygjbxx.setJZDXZQH(rs.getString("JZDXZQH"));
				ygjbxx.setJZDXZ(rs.getString("JZDXZ"));
				ygjbxx.setJZDYZBM(rs.getString("JZDYZBM"));
				ygjbxx.setLXDH(rs.getString("LXDH"));
				ygjbxx.setJTDH(rs.getString("JTDH"));
				ygjbxx.setDASZD(rs.getString("DASZD"));
				ygjbxx.setSFYJZZ(rs.getString("SFYJZZ"));
				ygjbxx.setJZZQSRQ(rs.getString("JZZQSRQ"));
				ygjbxx.setJZZJZRQ(rs.getString("JZZJZRQ"));
				ygjbxx.setSFYLDSC(rs.getInt("SFYLDSC"));
				ygjbxx.setSFBLGSBJJ(rs.getInt("SFBLGSBJJ"));
				ygjbxx.setSFBLGGJJ(rs.getInt("SFBLGGJJ"));
				ygjbxx.setGJJZH(rs.getString("GJJZH"));
				ygjbxx.setSFBLGZHBX(rs.getInt("SFBLGZHBX"));
				ygjbxx.setYDWSFBLTG(rs.getInt("YDWSFBLTG"));
				ygjbxx.setRYLB(rs.getString("RYLB"));
				ygjbxx.setSCRZRQ(rs.getString("SCRZRQ"));
				ygjbxx.setLZRQ(rs.getString("LZRQ"));
				ygjbxx.setLZYY(rs.getString("LZYY"));
				ygjbxx.setGXRID(rs.getInt("GXRID"));
				ygjbxx.setGXRXM(rs.getString("GXRXM"));
				ygjbxx.setGXLX(rs.getString("GXLX"));
				ygjbxx.setGXYY(rs.getString("GXYY"));
				ygjbxx.setGXSJ(rs.getTimestamp("GXSJ"));
				list.add(ygjbxx);
			}
			return list;
		}catch(Exception ex){
			return null;
		}finally{
			conn.close();
		}
	}
	public boolean addYGJBXX(T_HR_YGJBXX ygjbxx)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String sqla = "INSERT INTO t_hr_ygjbxx(GH,XM,JG,SSBM,ZW,ZJHM,ZJZL,XB,ZZMM,CSRQ,MZ,HYZK,XL,XW,BYRQ,BYXX,SXZY,ZC,HJLB,HJDXZQH,HJDXZ,JZDXZQH,JZDXZ,JZDYZBM,LXDH,JTDH,DASZD,SFYJZZ,JZZQSRQ,JZZJZRQ,SFYLDSC,SFBLGSBJJ,SFBLGGJJ,GJJZH,SFBLGZHBX,YDWSFBLTG,RYLB,SCRZRQ,LZRQ,LZYY,GXRID,GXRXM,GXLX,GXYY,GXSJ) ";
		String sqlb = "VALUES('"+ygjbxx.getGH()+"'," +
								"'"+ygjbxx.getXM()+"'," +
								"'"+ygjbxx.getJG()+"'," +
								"'"+ygjbxx.getSSBM()+"'," +
								"'"+ygjbxx.getZW()+"'," +
								"'"+ygjbxx.getZJHM()+"'," +
								"'"+ygjbxx.getZJZL()+"'," +
								"'"+ygjbxx.getXB()+"'," +
								"'"+ygjbxx.getZZMM()+"'," +
								"'"+ygjbxx.getCSRQ()+"'," +
								"'"+ygjbxx.getMZ()+"'," +
								"'"+ygjbxx.getHYZK()+"'," +
								"'"+ygjbxx.getXL()+"'," +
								"'"+ygjbxx.getXW()+"'," +
								"'"+ygjbxx.getBYRQ()+"'," +
								"'"+ygjbxx.getBYXX()+"'," +
								"'"+ygjbxx.getSXZY()+"'," +
								"'"+ygjbxx.getZC()+"'," +
								"'"+ygjbxx.getHJLB()+"'," +
								"'"+ygjbxx.getHJDXZQH()+"'," +
								"'"+ygjbxx.getHJDXZ()+"'," +
								"'"+ygjbxx.getJZDXZQH()+"'," +
								"'"+ygjbxx.getJZDXZ()+"'," +
								"'"+ygjbxx.getJZDYZBM()+"'," +
								"'"+ygjbxx.getLXDH()+"'," +
								"'"+ygjbxx.getJTDH()+"'," +
								"'"+ygjbxx.getDASZD()+"'," +
								"'"+ygjbxx.getSFYJZZ()+"'," +
								"'"+ygjbxx.getJZZQSRQ()+"'," +
								"'"+ygjbxx.getJZZJZRQ()+"'," +
								"'"+ygjbxx.getSFYLDSC()+"'," +
								"'"+ygjbxx.getSFBLGSBJJ()+"'," +
								"'"+ygjbxx.getSFBLGGJJ()+"'," +
								"'"+ygjbxx.getGJJZH()+"'," +
								"'"+ygjbxx.getSFBLGZHBX()+"'," +
								"'"+ygjbxx.getYDWSFBLTG()+"'," +
								"'"+ygjbxx.getRYLB()+"'," +
								"'"+ygjbxx.getSCRZRQ()+"'," +
								"'"+ygjbxx.getLZRQ()+"'," +
								"'"+ygjbxx.getLZYY()+"'," +
								"'"+ygjbxx.getGXRID()+"'," +
								"'"+ygjbxx.getGXRXM()+"'," +
								"'"+ygjbxx.getGXLX()+"'," +
								"'"+ygjbxx.getGXYY()+"'," +
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
	public boolean delYGJBXX(String RID)throws Exception{
		sql = "DELETE FROM t_hr_ygjbxx where RID='"+RID+"'";
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
	public boolean alterYGJBXX(T_HR_YGJBXX ygjbxx)throws Exception{
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String sqla = " UPDATE t_hr_ygjbxx SET ";
		String sqlc = " WHERE RID=" + ygjbxx.getRID();
		String sqlb = 	" GH='"+ygjbxx.getGH()+"'," +
						" XM='"+ygjbxx.getXM()+"'," +
						" JG='"+ygjbxx.getJG()+"'," +
						" SSBM='"+ygjbxx.getSSBM()+"'," +
						" ZW='"+ygjbxx.getZW()+"'," +
						" ZJHM='"+ygjbxx.getZJHM()+"'," +
						" ZJZL='"+ygjbxx.getZJZL()+"'," +
						" XB='"+ygjbxx.getXB()+"'," +
						" ZZMM='"+ygjbxx.getZZMM()+"'," +
						" CSRQ='"+ygjbxx.getCSRQ()+"'," +
						" MZ='"+ygjbxx.getMZ()+"'," +
						" HYZK='"+ygjbxx.getHYZK()+"'," +
						" XL='"+ygjbxx.getXL()+"'," +
						" XW='"+ygjbxx.getXW()+"'," +
						" BYRQ='"+ygjbxx.getBYRQ()+"'," +
						" BYXX='"+ygjbxx.getBYXX()+"'," +
						" SXZY='"+ygjbxx.getSXZY()+"'," +
						" ZC='"+ygjbxx.getZC()+"'," +
						" HJLB='"+ygjbxx.getHJLB()+"'," +
						" HJDXZQH='"+ygjbxx.getHJDXZQH()+"'," +
						" HJDXZ='"+ygjbxx.getHJDXZ()+"'," +
						" JZDXZQH='"+ygjbxx.getJZDXZQH()+"'," +
						" JZDXZ='"+ygjbxx.getJZDXZ()+"'," +
						" JZDYZBM='"+ygjbxx.getJZDYZBM()+"'," +
						" LXDH='"+ygjbxx.getLXDH()+"'," +
						" JTDH='"+ygjbxx.getJTDH()+"'," +
						" DASZD='"+ygjbxx.getDASZD()+"'," +
						" SFYJZZ='"+ygjbxx.getSFYJZZ()+"'," +
						" JZZQSRQ='"+ygjbxx.getJZZQSRQ()+"'," +
						" JZZJZRQ='"+ygjbxx.getJZZJZRQ()+"'," +
						" SFYLDSC='"+ygjbxx.getSFYLDSC()+"'," +
						" SFBLGSBJJ='"+ygjbxx.getSFBLGSBJJ()+"'," +
						" SFBLGGJJ='"+ygjbxx.getSFBLGGJJ()+"'," +
						" GJJZH='"+ygjbxx.getGJJZH()+"'," +
						" SFBLGZHBX='"+ygjbxx.getSFBLGZHBX()+"'," +
						" YDWSFBLTG='"+ygjbxx.getYDWSFBLTG()+"'," +
						" RYLB='"+ygjbxx.getRYLB()+"'," +
						" SCRZRQ='"+ygjbxx.getSCRZRQ()+"'," +
						" LZRQ='"+ygjbxx.getLZRQ()+"'," +
						" LZYY='"+ygjbxx.getLZYY()+"'," +
						" GXRID='"+ygjbxx.getGXRID()+"'," +
						" GXRXM='"+ygjbxx.getGXRXM()+"'," +
						" GXLX='"+ygjbxx.getGXLX()+"'," +
						" GXYY='"+ygjbxx.getGXYY()+"'," +
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
