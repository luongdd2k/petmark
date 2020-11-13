package com.springboot.PetMark.controller;

import java.security.Principal;
import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Deposit;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.DepositService;
import com.springboot.PetMark.service.PetService;

import pet.mart.util.DepositStatus;

@Controller
@RequestMapping("/admin/deposit")
public class DepositAdminController {
	@Autowired
	DepositService depositService;
	@Autowired
	AccountService accountService;
	@Autowired
	PetService petService;

	@RequestMapping()
	public ModelAndView showDeposit(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("pages/deposit/deposit-manager");
		User user = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(user.getUsername());
		model.addObject("account", account);
		List<Deposit> list = depositService.findAll();
		model.addObject("list", list);
		return model;
	}

	@RequestMapping("/deposit-detail/{id}")
	public ModelAndView showDetail(@PathVariable String id, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("pages/deposit/deposit-detail");
		User user = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(user.getUsername());
		model.addObject("account", account);
		Deposit deposit = depositService.findById(Integer.parseInt(id));
		model.addObject("deposit", deposit);
		String dinhDang = "#,##0";
		DecimalFormat format = new DecimalFormat(dinhDang);
		float totalFormat = (deposit.getPet().getPrice() * deposit.getAmount())-deposit.getTotalAmount();
		String total = format.format(totalFormat).replaceAll(",", ".");
		model.addObject("total", total);
		return model;
	}
	
	@RequestMapping("/cancel-deposit/{id}")
	public String cancelDeposit(@PathVariable String id) {
		Deposit deposit = depositService.findById(Integer.parseInt(id));
		deposit.setStatus(DepositStatus.CANCELLED_NO_REFUND);
		depositService.add(deposit);
		return "redirect:/admin/deposit/deposit-detail/" +id;
	}
	@RequestMapping("/return-deposit/{id}")
	public String returnDeposit(@PathVariable String id) {
		Deposit deposit = depositService.findById(Integer.parseInt(id));
		deposit.setStatus(DepositStatus.CANCELLED);
		depositService.add(deposit);
		return "redirect:/admin/deposit/deposit-detail/" +id;
	}
	@RequestMapping("/paid-deposit/{id}")
	public String paidDeposit(@PathVariable String id) {
		Deposit deposit = depositService.findById(Integer.parseInt(id));
		deposit.setStatus(DepositStatus.PAID);
		depositService.add(deposit);
		return "redirect:/admin/deposit/deposit-detail/" +id;
	}
}
