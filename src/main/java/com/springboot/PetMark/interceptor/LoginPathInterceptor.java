package com.springboot.PetMark.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginPathInterceptor extends HandlerInterceptorAdapter{
	
	String currentPath;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String currentPath = request.getParameter("currentPath");
		if(currentPath == null) {
			currentPath = request.getParameter("urlPage2");
		}
		session.setAttribute("currentPath", null);
		
		this.currentPath = currentPath;
		

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		session.setAttribute("currentPath", currentPath);
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable Exception ex) throws Exception {
		
	}
}
