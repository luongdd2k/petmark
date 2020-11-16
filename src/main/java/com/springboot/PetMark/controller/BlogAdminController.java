package com.springboot.PetMark.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
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
	List<Blog> blog = blogService.findAll();
	model.addObject("blog", blog);
	return model;
}
@RequestMapping("/cancel/{id}")
public String cancelBlog(@PathVariable String id,Principal principal) {
	int id1 = Integer.parseInt("id");
	blogService.changeStt(false, id1);
	return "redirect:/admin/blog";
}
@RequestMapping("/confirm/{id}")
public String confirmBlog(@PathVariable String id,Principal principal) {
	int id1 = Integer.parseInt("id");
	blogService.changeStt(true, id1);
	return "redirect:/admin/blog";
}
}
