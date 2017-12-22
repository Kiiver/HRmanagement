package com.bean;

import java.sql.Timestamp;

public class T_HR_XXLL {
	private int XXLLID;		//ID  					主键,Not Null
	private int RID;		//人ID
	private String QSRQ;		//基本工资					Not Null
	private String JZRQ;		//职务工资
	private String JDXX;		//有效标识 				    Not Null
	private String SXZY;		//更新人ID				       字典 D_HR_ZW 
	private String ZW;	//更新人姓名				    Not Null
	private String ZMR;		//更新类型
	private String GXRID;	//更新原因
	private String GXRXM;	//更新原因
	private String GXLX;	//更新原因
	private String GXYY;	//更新原因
	private Timestamp GXSJ;	//更新时间
	public int getXXLLID() {
		return XXLLID;
	}
	public void setXXLLID(int xXLLID) {
		XXLLID = xXLLID;
	}
	public int getRID() {
		return RID;
	}
	public void setRID(int rID) {
		RID = rID;
	}
	public String getQSRQ() {
		return QSRQ;
	}
	public void setQSRQ(String qSRQ) {
		QSRQ = qSRQ;
	}
	public String getJZRQ() {
		return JZRQ;
	}
	public void setJZRQ(String jZRQ) {
		JZRQ = jZRQ;
	}
	public String getJDXX() {
		return JDXX;
	}
	public void setJDXX(String jDXX) {
		JDXX = jDXX;
	}
	public String getSXZY() {
		return SXZY;
	}
	public void setSXZY(String sXZY) {
		SXZY = sXZY;
	}
	public String getZW() {
		return ZW;
	}
	public void setZW(String zW) {
		ZW = zW;
	}
	public String getZMR() {
		return ZMR;
	}
	public void setZMR(String zMR) {
		ZMR = zMR;
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

