package com.bean;

public class T_HR_YGJBXX {
	private int RID;		//人ID  					主键,Not Null
	private int GH;			//工号
	private String XM;		//姓名					Not Null
	private String JG;		//籍贯
	private int SSBM;		//所属部门 				Not Null
	private int ZW;			//职位					字典 D_HR_ZW 
	private String ZJHM;	//证件号码				Not Null
	private int ZJZL;		//证件种类
	private int XB;			//性别
	private String ZZMM;	//政治面貌
	private String CSRQ;	//出生日期
	private int MZ;			//民族
	private int HYZK;		//婚姻状况
	private int XL;			//学历
	private	int XW;			//学位
	private String BYRQ;	//毕业日期
	private String BYXX;	//毕业学校
	private String SXZY;	//所学专业
	private int ZC;			//职称
	private int HJLB;		//户籍类别				D_HR_HJLB【1：上海户口；2：外省市户口；3：外省市户口非城镇户籍】
	private int	HJDXZQH;	//户籍地行政区划
	private String HJDXZ;	//户籍地详址
	private String JZDXZQH;	//居住地行政区划
	private String JZDXZ;	//居住地详址
	private int JZDYZBM;	//居住地邮政编码
	private String LXDH;	//联系电话
	private String JTDH;	//家庭电话
	private String DASZD;	//档案所在地
	private int  SFYJZZ;	//是否有居住证
	private String JZZQSRQ;	//居住证起始日期
	private String JZZJZRQ;	//居住证截止日期
	private int SFYLDSC;	//是否有劳动手册			Not Null【1：是；0：否（相关问题说明）】
	private int SFBLGSBJJ;	//是否办理过社保基金		Not Null【1：是；0：否】
	private int SFBLGGJJ;	//是否办理过公积金		Not Null【1：是；0：否】
	private String GJJZH;	//公积金账号
	private int SFBLGZHBX;	//是否办理过综合保险		Not Null【1：是；0：否】
	private int YDWSFBLTG;	//原单位是否办理退工		Not Null【1：是；0：否】
	private int RYLB;		//人员类别				【D_HR_RYLB  1：在职；2：兼职；3：协作；4：其他】
	private String SCRZRQ;	//首次入职日期
	private String LZRQ;	//离职日期
	private String LZYY;	//离职原因
	private int GXRID;		//更新人ID
	private String GXRXM;	//更新人姓名
	private int GXLX;		//更新类型				【0:新增 1：修改 2：删除 3:注销】
	private String GXYY;	//更新原因				【注销时，必须填写】
	private String GXSJ;	//更新时间
	public int getRID() {
		return RID;
	}
	public void setRID(int rID) {
		RID = rID;
	}
	public int getGH() {
		return GH;
	}
	public void setGH(int gH) {
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
	public int getZW() {
		return ZW;
	}
	public void setZW(int zW) {
		ZW = zW;
	}
	public String getZJHM() {
		return ZJHM;
	}
	public void setZJHM(String zJHM) {
		ZJHM = zJHM;
	}
	public int getZJZL() {
		return ZJZL;
	}
	public void setZJZL(int zJZL) {
		ZJZL = zJZL;
	}
	public int getXB() {
		return XB;
	}
	public void setXB(int xB) {
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
	public int getMZ() {
		return MZ;
	}
	public void setMZ(int mZ) {
		MZ = mZ;
	}
	public int getHYZK() {
		return HYZK;
	}
	public void setHYZK(int hYZK) {
		HYZK = hYZK;
	}
	public int getXL() {
		return XL;
	}
	public void setXL(int xL) {
		XL = xL;
	}
	public int getXW() {
		return XW;
	}
	public void setXW(int xW) {
		XW = xW;
	}
	public String getBYRQ() {
		return BYRQ;
	}
	public void setBYRQ(String bYRQ) {
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
	public int getZC() {
		return ZC;
	}
	public void setZC(int zC) {
		ZC = zC;
	}
	public int getHJLB() {
		return HJLB;
	}
	public void setHJLB(int hJLB) {
		HJLB = hJLB;
	}
	public int getHJDXZQH() {
		return HJDXZQH;
	}
	public void setHJDXZQH(int hJDXZQH) {
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
	public int getJZDYZBM() {
		return JZDYZBM;
	}
	public void setJZDYZBM(int jZDYZBM) {
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
	public int getSFYJZZ() {
		return SFYJZZ;
	}
	public void setSFYJZZ(int sFYJZZ) {
		SFYJZZ = sFYJZZ;
	}
	public String getJZZQSRQ() {
		return JZZQSRQ;
	}
	public void setJZZQSRQ(String jZZQSRQ) {
		JZZQSRQ = jZZQSRQ;
	}
	public String getJZZJZRQ() {
		return JZZJZRQ;
	}
	public void setJZZJZRQ(String jZZJZRQ) {
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
	public int getRYLB() {
		return RYLB;
	}
	public void setRYLB(int rYLB) {
		RYLB = rYLB;
	}
	public String getSCRZRQ() {
		return SCRZRQ;
	}
	public void setSCRZRQ(String sCRZRQ) {
		SCRZRQ = sCRZRQ;
	}
	public String getLZRQ() {
		return LZRQ;
	}
	public void setLZRQ(String lZRQ) {
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
	public String getGXSJ() {
		return GXSJ;
	}
	public void setGXSJ(String gXSJ) {
		GXSJ = gXSJ;
	}
}
