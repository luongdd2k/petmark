package com.springboot.PetMark.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.springboot.PetMark.entities.ColorAccessories;
import com.springboot.PetMark.entities.SizeAccessories;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.CartItemService;
import com.springboot.PetMark.service.ColorAccessoriesService;
import com.springboot.PetMark.service.SizeService;

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
	@Autowired
	ColorAccessoriesService color;
	@Autowired
	SizeService sizeSv;

	@RequestMapping("/add-card/{id}")
	public ModelAndView showCard(@PathVariable String id, Principal principal, HttpServletRequest req) {
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/show-card");
		String mau = req.getParameter("colors");
		String size = req.getParameter("size");
		ColorAccessories col = color.findById(Integer.parseInt(mau));
		SizeAccessories siz = sizeSv.findById(Integer.parseInt(size));
		int soLuong = Integer.parseInt(req.getParameter("soLuong"));
		Accessories accessories = accessoriesService.findById(Integer.valueOf(id));
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		Account account = accountService.findById(username);
		model.addObject("account", account);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		CardItemAccessories card = new CardItemAccessories(accessories, account, soLuong, date, siz, col);
		cartItemService.save(card);
		model.addObject("card", cartItemService.findByAccount(account));
		return model;
	}

	@RequestMapping("/show-card")
	public ModelAndView showCard(HttpServletRequest httpServletRequest, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/cart");
		User loginUser = (User) ((Authentication) principal).getPrincipal();
		String username = loginUser.getUsername();
		Account account = accountService.findById(username);
		model.addObject("account", account);
		model.addObject("card", cartItemService.findByAccount(account));
		int slCard = 0;
		if(cartItemService.countByAccount(account)!=0) {
		slCard = cartItemService.countByAccount(account);
		}
		model.addObject("slCard", slCard);
		return model;
	}

	@RequestMapping("/delete/{id}")
	public String deleteCard(@PathVariable String id, HttpServletRequest req) {
//	ModelAndView model = new ModelAndView();
		cartItemService.delete(Integer.parseInt(id));
		return "redirect:/show-card";
	}
}
