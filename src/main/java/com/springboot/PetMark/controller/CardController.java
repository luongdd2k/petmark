package com.springboot.PetMark.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.CardItemAccessories;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.CartItemService;

import pet.mart.security.CurrentUser;
import pet.mart.security.UserPrincipal;

@Controller
public class CardController {
	@Autowired
	CartItemService cartItemService;
	@Autowired
	AccessoriesService accessoriesService;
	@Autowired
	AccountService accountService;

	@RequestMapping("/add-card/{id}")
	public ModelAndView showCard(@PathVariable String id, Principal principal, HttpServletRequest httpServletRequest) {
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/show-card");
		Accessories accessories = accessoriesService.findById(Integer.valueOf(id));
		User loginUser = (User) ((Authentication) principal).getPrincipal();
		String user = loginUser.getUsername();
		Account account = accountService.findById(user);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		CardItemAccessories card = new CardItemAccessories(accessories, account, 1, date);
		cartItemService.save(card);
		model.addObject("card", cartItemService.findByAccount(account));
		return model;
	}

	@RequestMapping("/show-card")
	public ModelAndView showCard(HttpServletRequest httpServletRequest, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client/cart");
		User loginUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginUser.getUsername();
		System.out.println("tên đăng nhập ở card: " + username);
		Account account = accountService.findById(username);
		model.addObject("card", cartItemService.findByAccount(account));
		return model;
	}

	@RequestMapping("/delete/{id}")
	public String deleteCard(@PathVariable String id, HttpServletRequest req) {
//	ModelAndView model = new ModelAndView();
		cartItemService.delete(Integer.parseInt(id));
		return "redirect:/show-card";
	}
}
