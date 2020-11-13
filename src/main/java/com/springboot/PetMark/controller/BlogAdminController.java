package com.springboot.PetMark.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
