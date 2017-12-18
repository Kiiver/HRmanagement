package com.bean;

import java.sql.Timestamp;
import java.util.Date;

public class T_HR_YGJBXX {
	private int RID;		//人ID  					主键,Not Null
	private String GH;			//工号
	private String XM;		//姓名					Not Null
	private String JG;		//籍贯
	private int SSBM;		//所属部门 				Not Null
	private String ZW;			//职位					字典 D_HR_ZW 
	private String ZJHM;	//证件号码				Not Null
	private String ZJZL;		//证件种类
	private String XB;			//性别
	private String ZZMM;	//政治面貌
	private String CSRQ;	//出生日期
	private String MZ;			//民族
	private String HYZK;		//婚姻状况
	private String XL;			//学历
	private	String XW;			//学位
	private Date BYRQ;	//毕业日期
	private String BYXX;	//毕业学校
	private String SXZY;	//所学专业
	private String ZC;			//职称
	private String HJLB;		//户籍类别				D_HR_HJLB【1：上海户口；2：外省市户口；3：外省市户口非城镇户籍】
	private String HJDXZQH;	//户籍地行政区划
	private String HJDXZ;	//户籍地详址
	private String JZDXZQH;	//居住地行政区划
	private String JZDXZ;	//居住地详址
	private String JZDYZBM;	//居住地邮政编码
	private String LXDH;	//联系电话
	private String JTDH;	//家庭电话
	private String DASZD;	//档案所在地
	private String  SFYJZZ;	//是否有居住证
	private Date JZZQSRQ;	//居住证起始日期
	private Date JZZJZRQ;	//居住证截止日期
	private int SFYLDSC;	//是否有劳动手册			Not Null【1：是；0：否（相关问题说明）】
	private int SFBLGSBJJ;	//是否办理过社保基金		Not Null【1：是；0：否】
	private int SFBLGGJJ;	//是否办理过公积金		Not Null【1：是；0：否】
	private String GJJZH;	//公积金账号
	private int SFBLGZHBX;	//是否办理过综合保险		Not Null【1：是；0：否】
	private int YDWSFBLTG;	//原单位是否办理退工		Not Null【1：是；0：否】
	private String RYLB;		//人员类别				【D_HR_RYLB  1：在职；2：兼职；3：协作；4：其他】
	private Date SCRZRQ;	//首次入职日期
	private Date LZRQ;	//离职日期
	private String LZYY;	//离职原因
	private int GXRID;		//更新人ID
	private String GXRXM;	//更新人姓名
	private String GXLX;		//更新类型				【0:新增 1：修改 2：删除 3:注销】
	private String GXYY;	//更新原因				【注销时，必须填写】
	private Timestamp GXSJ;	//更新时间
	public int getRID() {
		return RID;
	}
	public void setRID(int rID) {
		RID = rID;
	}
	public String getGH() {
		return GH;
	}
	public void setGH(String gH) {
		GH = gH;
	}
	public String getXM() {
		return XM;
	}
	public void setXM(String xM) {
		XM = xM;
	}
	public String getJG() {
		return JG;
	}
	public void setJG(String jG) {
		JG = jG;
	}
	public int getSSBM() {
		return SSBM;
	}
	public void setSSBM(int sSBM) {
		SSBM = sSBM;
	}
	public String getZW() {
		return ZW;
	}
	public void setZW(String zW) {
		ZW = zW;
	}
	public String getZJHM() {
		return ZJHM;
	}
	public void setZJHM(String zJHM) {
		ZJHM = zJHM;
	}
	public String getZJZL() {
		return ZJZL;
	}
	public void setZJZL(String zJZL) {
		ZJZL = zJZL;
	}
	public String getXB() {
		return XB;
	}
	public void setXB(String xB) {
		XB = xB;
	}
	public String getZZMM() {
		return ZZMM;
	}
	public void setZZMM(String zZMM) {
		ZZMM = zZMM;
	}
	public String getCSRQ() {
		return CSRQ;
	}
	public void setCSRQ(String cSRQ) {
		CSRQ = cSRQ;
	}
	public String getMZ() {
		return MZ;
	}
	public void setMZ(String mZ) {
		MZ = mZ;
	}
	public String getHYZK() {
		return HYZK;
	}
	public void setHYZK(String hYZK) {
		HYZK = hYZK;
	}
	public String getXL() {
		return XL;
	}
	public void setXL(String xL) {
		XL = xL;
	}
	public String getXW() {
		return XW;
	}
	public void setXW(String xW) {
		XW = xW;
	}
	public Date getBYRQ() {
		return BYRQ;
	}
	public void setBYRQ(Date bYRQ) {
		BYRQ = bYRQ;
	}
	public String getBYXX() {
		return BYXX;
	}
	public void setBYXX(String bYXX) {
		BYXX = bYXX;
	}
	public String getSXZY() {
		return SXZY;
	}
	public void setSXZY(String sXZY) {
		SXZY = sXZY;
	}
	public String getZC() {
		return ZC;
	}
	public void setZC(String zC) {
		ZC = zC;
	}
	public String getHJLB() {
		return HJLB;
	}
	public void setHJLB(String hJLB) {
		HJLB = hJLB;
	}
	public String getHJDXZQH() {
		return HJDXZQH;
	}
	public void setHJDXZQH(String hJDXZQH) {
		HJDXZQH = hJDXZQH;
	}
	public String getHJDXZ() {
		return HJDXZ;
	}
	public void setHJDXZ(String hJDXZ) {
		HJDXZ = hJDXZ;
	}
	public String getJZDXZQH() {
		return JZDXZQH;
	}
	public void setJZDXZQH(String jZDXZQH) {
		JZDXZQH = jZDXZQH;
	}
	public String getJZDXZ() {
		return JZDXZ;
	}
	public void setJZDXZ(String jZDXZ) {
		JZDXZ = jZDXZ;
	}
	public String getJZDYZBM() {
		return JZDYZBM;
	}
	public void setJZDYZBM(String jZDYZBM) {
		JZDYZBM = jZDYZBM;
	}
	public String getLXDH() {
		return LXDH;
	}
	public void setLXDH(String lXDH) {
		LXDH = lXDH;
	}
	public String getJTDH() {
		return JTDH;
	}
	public void setJTDH(String jTDH) {
		JTDH = jTDH;
	}
	public String getDASZD() {
		return DASZD;
	}
	public void setDASZD(String dASZD) {
		DASZD = dASZD;
	}
	public String getSFYJZZ() {
		return SFYJZZ;
	}
	public void setSFYJZZ(String sFYJZZ) {
		SFYJZZ = sFYJZZ;
	}
	public Date getJZZQSRQ() {
		return JZZQSRQ;
	}
	public void setJZZQSRQ(Date jZZQSRQ) {
		JZZQSRQ = jZZQSRQ;
	}
	public Date getJZZJZRQ() {
		return JZZJZRQ;
	}
	public void setJZZJZRQ(Date jZZJZRQ) {
		JZZJZRQ = jZZJZRQ;
	}
	public int getSFYLDSC() {
		return SFYLDSC;
	}
	public void setSFYLDSC(int sFYLDSC) {
		SFYLDSC = sFYLDSC;
	}
	public int getSFBLGSBJJ() {
		return SFBLGSBJJ;
	}
	public void setSFBLGSBJJ(int sFBLGSBJJ) {
		SFBLGSBJJ = sFBLGSBJJ;
	}
	public int getSFBLGGJJ() {
		return SFBLGGJJ;
	}
	public void setSFBLGGJJ(int sFBLGGJJ) {
		SFBLGGJJ = sFBLGGJJ;
	}
	public String getGJJZH() {
		return GJJZH;
	}
	public void setGJJZH(String gJJZH) {
		GJJZH = gJJZH;
	}
	public int getSFBLGZHBX() {
		return SFBLGZHBX;
	}
	public void setSFBLGZHBX(int sFBLGZHBX) {
		SFBLGZHBX = sFBLGZHBX;
	}
	public int getYDWSFBLTG() {
		return YDWSFBLTG;
	}
	public void setYDWSFBLTG(int yDWSFBLTG) {
		YDWSFBLTG = yDWSFBLTG;
	}
	public String getRYLB() {
		return RYLB;
	}
	public void setRYLB(String rYLB) {
		RYLB = rYLB;
	}
	public Date getSCRZRQ() {
		return SCRZRQ;
	}
	public void setSCRZRQ(Date sCRZRQ) {
		SCRZRQ = sCRZRQ;
	}
	public Date getLZRQ() {
		return LZRQ;
	}
	public void setLZRQ(Date lZRQ) {
		LZRQ = lZRQ;
	}
	public String getLZYY() {
		return LZYY;
	}
	public void setLZYY(String lZYY) {
		LZYY = lZYY;
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
