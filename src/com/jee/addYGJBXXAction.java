package com.jee;

import com.opensymphony.xwork2.ActionSupport;
import com.bean.T_HR_YGJBXX;;

public class addYGJBXXAction extends ActionSupport{
	private T_HR_YGJBXX ygjbxx;
	
	public T_HR_YGJBXX getYgjbxx() {
		return ygjbxx;
	}

	public void setYgjbxx(T_HR_YGJBXX ygjbxx) {
		this.ygjbxx = ygjbxx;
	}
    public String execute() throws Exception{
		/*判断用户名和密码，这里是固定的(先用英文账号scott,tiger),以后会根据数据库来验证*/
    	
        if (2==1){
            return SUCCESS;
        }
        else
        {
            return ERROR;
        }
    }
}
