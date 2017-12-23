package com.bean;

import java.sql.Timestamp;

public class T_HR_YGGZ {
	private int GZID;		//工资ID  					主键,Not Null
	private int RID;		//人ID
	private String JBGZ;		//基本工资					Not Null
	private String ZWGZ;		//职务工资
	private String YXBS;		//有效标识 				    Not Null
	private String GXRID;		//更新人ID				       字典 D_HR_ZW 
	private String GXRXM;	//更新人姓名				    Not Null
	private String GXLX;		//更新类型
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
	public String getJBGZ() {
		return JBGZ;
	}
	public void setJBGZ(String jBGZ) {
		JBGZ = jBGZ;
	}
	public String getZWGZ() {
		return ZWGZ;
	}
	public void setZWGZ(String zWGZ) {
		ZWGZ = zWGZ;
	}
	public String getYXBS() {
		return YXBS;
	}
	public void setYXBS(String yXBS) {
		YXBS = yXBS;
	}
	public String getGXRID() {
		return GXRID;
	}
	public void setGXRID(String gXRID) {
		GXRID = gXRID;
	}
	public String getGXRXM() {
		return GXRXM;
	}
	public void setGXRXM(String gXRXM) {
		GXRXM = gXRXM;
	}
	public String getGXLX() {
		return GXLX;
	}
	public void setGXLX(String gXLX) {
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
