package com.jee;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import com.bean.*;

public class LoginAction extends ActionSupport{		
	private User usr;		
	public User getUsr() {
		return usr;
	}
	public void setUsr(User usr) {
		if(usr == null) usr = new User();
		this.usr = usr;
	}

    public String execute() throws Exception
    {
		/*�ж��û��������룬�����ǹ̶���(����Ӣ���˺�scott,tiger),�Ժ��������ݿ�����֤*/
        if (usr.getName().equals("scott")&& usr.getPassword().equals("tiger") ){
            return SUCCESS;
        }
        else
        {
            return ERROR;
        }
    }
}