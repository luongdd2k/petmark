package com.springboot.PetMark.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.BlogService;
import com.springboot.PetMark.service.CartItemService;

@Controller
public class BlogController {
	@Autowired
	AccountService accountService;
	@Autowired
	BlogService blogService;
	@Autowired
	ServletContext context;
	@Autowired
	CartItemService cardSv;

	@RequestMapping("/show-blog")
	public ModelAndView showBlog(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("blog/blog");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		model.addObject("account", account);
		int slCard = 0;
		if(cardSv.countByAccount(account)!=0) {
		slCard = cardSv.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		List<Blog> blog = blogService.findByUser(account);
		System.out.println("Dang sách blog: " + blog);
		String has = "1";
		if (blog.size() == 0) {
			has = "";
		}
		model.addObject("has", has);
		model.addObject("blog", blog);
		return model;
	}

	@RequestMapping(value = "/addBlog", method = RequestMethod.POST)
	public ModelAndView addBlog(Principal principal, HttpServletRequest req,
			@RequestParam("addimg") MultipartFile photo) throws FileNotFoundException {
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/show-blog");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		model.addObject("account", account);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		String content = "";
		if(req.getParameter("content")!="") {
			content = req.getParameter("content");
		}
		try {
			String photoPath = context.getRealPath("files/image/" + photo.getOriginalFilename());
			photo.transferTo(new File(photoPath));
			Blog blog = new Blog(account, content, date, false,"files/image/" +photo.getOriginalFilename());
			blogService.saveBlog(blog);
		} catch (Exception e) {
			System.out.println("Lỗi lưu ảnh: " + e);
		}	
	
		return model;
	}
//	@RequestMapping("/uploadImg")
//	@ResponseBody
//	public void 

}
