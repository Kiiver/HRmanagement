package com.bean;

import java.sql.Timestamp;

public class T_HR_XXLL {
	private int XXLLID;		//ID  					����,Not Null
	private int RID;		//��ID
	private String QSRQ;		//��������					Not Null
	private String JZRQ;		//ְ����
	private String JDXX;		//��Ч��ʶ 				    Not Null
	private String SXZY;		//������ID				       �ֵ� D_HR_ZW 
	private String ZW;	//����������				    Not Null
	private String ZMR;		//��������
	private String GXRID;	//����ԭ��
	private String GXRXM;	//����ԭ��
	private String GXLX;	//����ԭ��
	private String GXYY;	//����ԭ��
	private Timestamp GXSJ;	//����ʱ��
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

