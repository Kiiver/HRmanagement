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
		/*�ж��û��������룬�����ǹ̶���(����Ӣ���˺�scott,tiger),�Ժ��������ݿ�����֤*/
    	
        if (2==1){
            return SUCCESS;
        }
        else
        {
            return ERROR;
        }
    }
}
