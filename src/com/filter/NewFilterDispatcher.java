package com.filter;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

/**
 * ���ӹ������������������
 * ˵�������Ĺ�����ֻ���𴫵�;�еĹ��˴�������ҳ���л�Ҫ����ҳ����ַ�����
 * */
public class NewFilterDispatcher extends StrutsPrepareAndExecuteFilter {
	 private static String encoding = "GB2312";

	    public void init(FilterConfig filterConfig) throws ServletException {
	        super.init(filterConfig);
	        String encodingParam = filterConfig.getInitParameter("encoding");
	        if (encodingParam != null && encodingParam.trim().length() != 0) {
	            encoding = encodingParam;
	        }
	    }

	    public void doFilter(ServletRequest request, ServletResponse response,
	            FilterChain chain) throws IOException, ServletException {
	        request.setCharacterEncoding(encoding);
	        super.doFilter(request, response, chain);
	    }
	
}