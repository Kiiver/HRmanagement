package com.bean;

import java.sql.Timestamp;

public class T_HR_YGGZ {
	private int GZID;		//工资ID  					主键,Not Null
	private int RID;		//人ID
	private int JBGZ;		//基本工资					Not Null
	private int ZWGZ;		//职务工资
	private int YXBS;		//有效标识 				    Not Null
	private int GXRID;		//更新人ID				       字典 D_HR_ZW 
	private String GXRXM;	//更新人姓名				    Not Null
	private int GXLX;		//更新类型
	private String GXYY;	//更新原因
	private Timestamp GXSJ;	//更新时间
	public int getGZID() {
		return GZID;
	}
	public void setGZID(int gZID) {
		GZID = gZID;
	}
	public int getRID() {
		return RID;
	}
	public void setRID(int rID) {
		RID = rID;
	}
	public int getJBGZ() {
		return JBGZ;
	}
	public void setJBGZ(int jBGZ) {
		JBGZ = jBGZ;
	}
	public int getZWGZ() {
		return ZWGZ;
	}
	public void setZWGZ(int zWGZ) {
		ZWGZ = zWGZ;
	}
	public int getYXBS() {
		return YXBS;
	}
	public void setYXBS(int yXBS) {
		YXBS = yXBS;
	}
	public int getGXRID() {
		return GXRID;
	}
	public void setGXRID(int gXRID) {
		GXRID = gXRID;
	}
	public String getGXRXM() {
		return GXRXM;
	}
	public void setGXRXM(String gXRXM) {
		GXRXM = gXRXM;
	}
	public int getGXLX() {
		return GXLX;
	}
	public void setGXLX(int gXLX) {
		GXLX = gXLX;
	}
	public String getGXYY() {
		return GXYY;
	}
	public void setGXYY(String gXYY) {
		GXYY = gXYY;
	}
	public Timestamp getGXSJ() {
		return GXSJ;
	}
	public void setGXSJ(Timestamp gXSJ) {
		GXSJ = gXSJ;
	}
	
	
}
