package com.bean;

import java.sql.Timestamp;

public class T_HR_YGGZ {
	private int GZID;		//����ID  					����,Not Null
	private int RID;		//��ID
	private String JBGZ;		//��������					Not Null
	private String ZWGZ;		//ְ����
	private String YXBS;		//��Ч��ʶ 				    Not Null
	private String GXRID;		//������ID				       �ֵ� D_HR_ZW 
	private String GXRXM;	//����������				    Not Null
	private String GXLX;		//��������
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
