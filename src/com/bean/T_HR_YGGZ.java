package com.bean;

import java.sql.Timestamp;

public class T_HR_YGGZ {
	private int GZID;		//����ID  					����,Not Null
	private int RID;		//��ID
	private int JBGZ;		//��������					Not Null
	private int ZWGZ;		//ְ����
	private int YXBS;		//��Ч��ʶ 				    Not Null
	private int GXRID;		//������ID				       �ֵ� D_HR_ZW 
	private String GXRXM;	//����������				    Not Null
	private int GXLX;		//��������
	private String GXYY;	//����ԭ��
	private Timestamp GXSJ;	//����ʱ��
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
