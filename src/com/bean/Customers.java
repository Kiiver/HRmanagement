package com.bean;

public class Customers {
	private int C_ID;
	private String C_Name;
	private String C_Address;
	private String C_Tel;
	
	public int getC_ID() {
		return C_ID;
	}
	public void setC_ID(int cID) {
		C_ID = cID;
	}
	public String getC_Name() {
		return C_Name;
	}
	public void setC_Name(String cName) {
		C_Name = cName;
	}
	public String getC_Address() {
		return C_Address;
	}
	public void setC_Address(String cAddress) {
		C_Address = cAddress;
	}
	public String getC_Tel() {
		return C_Tel;
	}
	public void setC_Tel(String cTel) {
		C_Tel = cTel;
	}
	
	public boolean check(){
		if(C_Name.equals("")||C_Address.equals("")){
			return false;
		}
		else{
			return true;
		}
	}
}
