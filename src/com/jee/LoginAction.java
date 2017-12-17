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
		/*判断用户名和密码，这里是固定的(先用英文账号scott,tiger),以后会根据数据库来验证*/
        if (usr.getName().equals("scott")&& usr.getPassword().equals("tiger") ){
            return SUCCESS;
        }
        else
        {
            return ERROR;
        }
    }
}