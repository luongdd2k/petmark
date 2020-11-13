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
import com.springboot.PetMark.service.BlogService;

@Controller
@RequestMapping("/admin/blog")
public class BlogAdminController {
@Autowired
BlogService blogService;
@Autowired
AccountService accountService;
@RequestMapping()
public ModelAndView show(Principal principal) {
	ModelAndView model = new ModelAndView();
	model.setViewName("pages/blog/all-blog");
	User loginedUser = (User) ((Authentication) principal).getPrincipal();
	Account account = accountService.findById(loginedUser.getUsername());
	model.addObject("account", account);
	
	return model;
}
}
