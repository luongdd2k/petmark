package com.springboot.PetMark;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//thay = interceptor
@WebFilter(urlPatterns = "/*")
public class RequestResponseLoggingFilter implements Filter {

	private final static Logger LOG = LoggerFactory.getLogger(RequestResponseLoggingFilter.class);

	@Override
	public void init(final FilterConfig filterConfig) throws ServletException {
		LOG.info("Initializing filter :{}", this);
	}

	@Override
	public void doFilter(final ServletRequest request, final ServletResponse response, final FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		String reqRequestURI = req.getRequestURI();

		chain.doFilter(request, response);
		if(!reqRequestURI.contains("/TkWBH/data")&&!reqRequestURI.contains("/TkWBH/files")&&!reqRequestURI.contains("/TkWBH/Image")&&!reqRequestURI.contains("/TkWBH/CSS")&&!reqRequestURI.contains("/TkWBH/Script")) {
			System.out.println(".\rLogging Response: " + res.getContentType() + "\r----------");
		}
	}

	@Override
	public void destroy() {
		LOG.warn("Destructing filter :{}", this);
	}
}