package com.springboot.PetMark.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Deposit;
import com.springboot.PetMark.service.DepositService;


@Controller
@RequestMapping("/admin/deposit")
public class DepositAdminController {
@Autowired 
DepositService depositService;
@RequestMapping()
public ModelAndView showDeposit() {
	ModelAndView model = new ModelAndView();
	model.setViewName("pages/deposit/deposit-manager");
	List<Deposit> list = depositService.findAll();
	model.addObject("list", list);
	return model;
}
@RequestMapping("/deposit-detail/{id}")
public ModelAndView showDetail(@PathVariable String id) {
	ModelAndView model = new ModelAndView();
	model.setViewName("pages/deposit/deposit-detail");
	Deposit deposit = depositService.findById(Integer.parseInt(id));
	model.addObject("deposit", deposit);
	return model;
}
}
