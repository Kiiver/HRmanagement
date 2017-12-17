package com.filter;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

/**
 * 增加过滤器，解决中文问题
 * 说明：中文过滤器只负责传递途中的过滤处理，所以页面中还要设置页面的字符集。
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