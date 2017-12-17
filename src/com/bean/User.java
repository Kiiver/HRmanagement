package com.bean;
import java.util.*;

public class User{
	private String name;
	private String password;
	
	public User() { }
	public User(String name,String password,String sex,int age,Date date) {
		  this.name=name;
		  this.password=password;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}	
}