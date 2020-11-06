package com.springboot.PetMark.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.service.AccountService;

@Controller
public class BlogController {
	@Autowired
	AccountService accountService;
	
@RequestMapping("/show-blog")
public ModelAndView showBlog(Principal principal) {
	ModelAndView model = new ModelAndView();
	model.setViewName("blog/blog");
	User loginedUser = (User) ((Authentication) principal).getPrincipal();
	Account account = accountService.findById(loginedUser.getUsername());
	model.addObject("account", account);
	return model;
}
}
