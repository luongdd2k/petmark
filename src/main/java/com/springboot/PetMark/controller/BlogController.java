package com.springboot.PetMark.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.BlogService;

@Controller
public class BlogController {
	@Autowired
	AccountService accountService;
	@Autowired
	BlogService blogService;
	
@RequestMapping("/show-blog")
public ModelAndView showBlog(Principal principal) {
	ModelAndView model = new ModelAndView();
	model.setViewName("blog/blog");
	User loginedUser = (User) ((Authentication) principal).getPrincipal();
	Account account = accountService.findById(loginedUser.getUsername());
	model.addObject("account", account);
	List<Blog> blog = blogService.findByUser(account);
	String has = "1";
	if(blog.size()==0) {
		has = "";
	}
	model.addObject("has", has);
	return model;
}
@RequestMapping(value = "/addBlog", method = RequestMethod.POST)
public ModelAndView addBlog(Principal principal,HttpServletRequest req) {
	ModelAndView model = new ModelAndView();
	model.setViewName("redirect:/show-blog");
	String content =  req.getParameter("content");
	System.out.println("nội dung blog: "+content);
	return model;
}
}
