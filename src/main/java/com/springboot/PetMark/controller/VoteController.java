package com.springboot.PetMark.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.VoteAccessories;
import com.springboot.PetMark.entities.VotePet;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.PetService;
import com.springboot.PetMark.service.VoteAccService;
import com.springboot.PetMark.service.VotePetService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

@Controller
public class VoteController {
@Autowired
VotePetService votePetService;
@Autowired
PetService petService;
@Autowired
AccountService accountService;
@Autowired
AccessoriesService accessSv;
@Autowired
VoteAccService voteAccService;

@RequestMapping("/add-vote-pet")
public String addVotePet(HttpServletRequest req) {
	int sao = Integer.parseInt(req.getParameter("rating"));
	int id = Integer.parseInt(req.getParameter("id"));
	Pet pet = petService.findById(id);
	Account account = accountService.findById(req.getParameter("username"));
	System.out.println("số sao: "+ sao);
	long millis = System.currentTimeMillis();
	java.sql.Date date = new java.sql.Date(millis);
	VotePet vote = new VotePet(pet, account, sao, date);
	try {
		votePetService.add(vote);
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("Lỗi đánh giá" + e);
	}
	return "redirect:/pet-detail/" +id;
}
@RequestMapping("/add-vote-acc")
public String addVoteAcc(HttpServletRequest req) {
	int sao = Integer.parseInt(req.getParameter("rating"));
	int id = Integer.parseInt(req.getParameter("id"));
	Accessories acc = accessSv.findById(id);
	Account account = accountService.findById(req.getParameter("username"));
	System.out.println("số sao: "+ sao);
	long millis = System.currentTimeMillis();
	java.sql.Date date = new java.sql.Date(millis);
	VoteAccessories vote = new VoteAccessories(acc, account, sao, date);
	try {
		voteAccService.add(vote);
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("Lỗi đánh giá" + e);
	}
	return "redirect:/acc-detail/" +id;
}
}
