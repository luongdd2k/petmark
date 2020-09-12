package com.springboot.PetMark.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Role;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.RoleService;

@Controller
@RequestMapping("/admin/UserManagement")
public class UserController {
	@Autowired
	AccountService accountService;
	@Autowired
	RoleService roleService;
	
	@RequestMapping
	public String UserManagement(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Account> listAccount = new ArrayList<Account>();
		
		int countAllAccount = accountService.countAllAccount()-1;
		int countAllMember = accountService.countAllMember();
		int countAllAdminStaff = accountService.countAllAdminStaff();
		int countAllDeactive = accountService.countAllDeactive();
		
		int totalPage = (int) Math.ceil((double)countAllAccount/10);
		
		int targetPage;
		if(session.getAttribute("targetPage") != null ) {
			targetPage = (int) session.getAttribute("targetPage");
		} else targetPage = 1;
		
		if(request.getParameter("targetPage") != null) {
			targetPage = Integer.valueOf(request.getParameter("targetPage"));
		}
		
		
		int page = targetPage - 1;
		
		String nameButton3 = "Lưu";
		String classButton3 = "btn_save";
		String nameButtonDelete3 = "Chặn";
		String classButtonDelete3 = "btn_deactive";
		String titleButtonDelete3 = "Chặn người dùng này";
		
		String sortValue = request.getParameter("sortValue");
		System.out.println("Index Sort: " + sortValue);
		if(sortValue == null) sortValue = "1";
		
		String search_display = "none";
		if(request.getParameter("find_username") != null) {
			sortValue = "searchResult";
			search_display = "block";
		}
		
		
		try {		
			switch (sortValue) {
			case "1":
				totalPage = (int) Math.ceil((double)countAllAccount/10);
				if(targetPage > totalPage) page = 0;
				listAccount = accountService.showAllAccount("ROLE_MEMBER", "ROLE_STAFF", "ROLE_ADMIN", false, PageRequest.of(page, 10, Sort.by("username").ascending()));	
				
				break;
			case "2":
				totalPage = (int) Math.ceil((double)countAllMember/10);
				if(targetPage > totalPage) page = 0;
				listAccount = accountService.showAllAccount("ROLE_MEMBER", "ROLE_NONE1", "ROLE_NONE2", false, PageRequest.of(page, 10, Sort.by("username").ascending()));		
				
				break;
			case "3":
				totalPage = (int) Math.ceil((double)countAllAdminStaff/10);
				if(targetPage > totalPage) page = 0;
				listAccount = accountService.showAllAccount("ROLE_NONE1", "ROLE_STAFF", "ROLE_ADMIN", false, PageRequest.of(page, 10, Sort.by("username").ascending()));
				
				break;
			case "4":
				totalPage = (int) Math.ceil((double)countAllDeactive/10);
				if(targetPage > totalPage) page = 0;
				listAccount = accountService.showAllAccount("ROLE_MEMBER", "ROLE_STAFF", "ROLE_ADMIN", true, PageRequest.of(page, 10, Sort.by("username").ascending()));		
				nameButton3 = "Bỏ chặn";
				classButton3 = "btn_active";
				nameButtonDelete3 = "Xóa";
				classButtonDelete3 = "permanently_deleted";
				titleButtonDelete3 = "Xóa vĩnh viễn người dùng này";
				
				break;
			case "searchResult":
				String find_username = request.getParameter("find_username");
				String find_fullname = request.getParameter("find_fullname");
				String find_gender = request.getParameter("find_gender");
				String find_email = request.getParameter("find_email");
				String find_phone = request.getParameter("find_phone");
				String find_role = request.getParameter("find_role");

				
				int countSearchAccount = accountService.searchAccount(find_username, find_fullname, find_gender, find_email, find_phone, find_role, null).size();
				
				totalPage = (int) Math.ceil((double)countSearchAccount/10);
				if(targetPage > totalPage) page = 0;
				listAccount = accountService.searchAccount(find_username, find_fullname, find_gender, find_email, find_phone, find_role, PageRequest.of(page, 10, Sort.by("username").ascending()));
				
				
				
				break;
			default:
				
				break;
			}
		
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return "error/e404";
		}
		
		
		session.setAttribute("targetPage", page+1);
		model.addAttribute("nameButton3", nameButton3);
		model.addAttribute("classButton3", classButton3);
		model.addAttribute("nameButtonDelete3", nameButtonDelete3);
		model.addAttribute("classButtonDelete3", classButtonDelete3);
		model.addAttribute("titleButtonDelete3", titleButtonDelete3);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listAccount", listAccount);
		model.addAttribute("sortValue", sortValue);
		model.addAttribute("search_display", search_display);
		
		
		return "pages/employee-manager";
	}
		
	
	@RequestMapping("/changeSortValue")
	public String changeSortValue (HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");
		
		return "redirect:/admin/UserManagement?sortValue="+sortValue;
		
	}
	
	@RequestMapping("/ChangeRole")
	@ResponseBody
	public String changeRole (HttpServletRequest request) {	
		Account account = accountService.findById(request.getParameter("u_username"));
		Role role = roleService.findById(request.getParameter("u_role"));
		
		account.setRole(role);
		accountService.save(account);
		
		return "?change=done";
	}
	
	@RequestMapping("/DeactiveAccount")
	@ResponseBody
	public String deactiveAccount (HttpServletRequest request) {	
		Account account = accountService.findById(request.getParameter("u_username"));
		account.setIsDeactivate(true);
		accountService.save(account);

		return "?deactive=done";
		
	}
	
	@RequestMapping("/ActiveAccount")
	@ResponseBody
	public String activeAccount (HttpServletRequest request) {	
		Account account = accountService.findById(request.getParameter("u_username"));
		account.setIsDeactivate(false);
		accountService.save(account);

		return "?active=done";
	}
	
	@RequestMapping("/PermanentlyDeleted")
	@ResponseBody
	public String permanentlyDeleted(HttpServletRequest request) {
		String username = request.getParameter("u_username");
		accountService.permanentlyDeleted(username);
		
		return "?PermanentlyDeleted="+username;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("test")
	public String userManager2() {
		
		
		
		
		return "thanks";
	}
	

	
	
	
	
}
