package com.springboot.PetMark.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.OrderrWeb;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.OrderrWebService;

import pet.mart.util.DeliveryStatus;

@Controller
@RequestMapping("admin/statistical")
public class StatisticalController {
	@Autowired
	OrderrWebService orderrWebService;
	@Autowired
	AccountService accountService;
	@RequestMapping("/show-statistical")
	public ModelAndView showStatistical(HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		model.addObject("account", account);
		List<OrderrWeb> list = orderrWebService.findByDeliveryStatusOrderByCreatedAtAsc(DeliveryStatus.NOT_APPROVED);
		model.addObject("list", list);
		model.setViewName("pages/statistical/statistical");
		return model;
	}
}
