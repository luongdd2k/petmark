package com.springboot.PetMark.interceptor;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class RequestLoggingInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String time = new SimpleDateFormat("hh:mm:ss a").format(new Date());

		String reqRequestURI = request.getRequestURI();
		if (!reqRequestURI.contains("/TkWBH/data")&&!reqRequestURI.contains("/TkWBH/error")&&!reqRequestURI.contains("/TkWBH/files") && !reqRequestURI.contains("/TkWBH/Image")
				&& !reqRequestURI.contains("/TkWBH/CSS") && !reqRequestURI.contains("/TkWBH/Script")) {
		}
		return true;
	}

}
