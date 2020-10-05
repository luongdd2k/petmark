package com.springboot.PetMark.controller;

import java.io.File;
import java.security.Principal;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.service.AccountService;


@Controller
public class AccountController {
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	ServletContext context;
	
//	@RequestMapping(value="/CheckLogin", method=RequestMethod.POST)
//	public String checkLogin(HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		// không bao giờ chạy
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		String urlPage = request.getParameter("urlPage");
//		System.out.println("tên đăng nhập: "+username);
//		System.out.println("Mậy khẩu: "+password);
//		System.out.println("Url: "+urlPage);
//		
//		if(accountService.checkLogin(username, password)) {
//			System.out.println("Login Success!");
//			session.setAttribute("username", username);
//			session.setAttribute("role", accountService.getRole(username));
//			session.setAttribute("fullname", accountService.findById(username).getFullName());
//			session.setAttribute("profilePictureURL", accountService.findById(username).getImagePath());
//			
//		} else {
//			System.out.println("Login Fail!");
//		}
//
//		return "redirect:"+urlPage;
////		return null;
//	}
	
	@RequestMapping(value="/isLoginFail", method=RequestMethod.POST)
	@ResponseBody
	public String loginFail(HttpServletRequest request) {
//		xong
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("tên đăng nhập: "+username);
		System.out.println("mật khẩu: "+password);
		
		String isLoginFail = "1";
		if(accountService.checkLogin(username, password)) {
			isLoginFail = "0";
		} 
		return "?"+"isLoginFail="+isLoginFail;
	}
	
	@RequestMapping("/CheckLogout")
	public String checkLogout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		session.setAttribute("username", null);
		session.setAttribute("role", null);
		session.setAttribute("totalQuantity", 0);
		session.setAttribute("userLogged", null);
		
		if (auth != null) {
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
		
		return "redirect:/index";
	}
	
	@RequestMapping("/CheckSignup")
	public String checkSignup(HttpServletRequest request) {
		HttpSession session = request.getSession();

		String username = request.getParameter("sl_signup_username");
		String password = request.getParameter("sl_signup_password");
		String fullname = request.getParameter("sl_signup_name");
		String gender_s = request.getParameter("sl_signup_gt2");
		boolean gender = false;
		if(gender_s.equals("1")) gender = true;
		String email = request.getParameter("sl_signup_email");
		String phone = request.getParameter("sl_signup_phone");
		String address = request.getParameter("sl_signup_address");

		accountService.addAccount(username, password, fullname, gender, email, phone, address);
		
		try {
			request.login(username, password);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			System.out.println("CheckSignup: " + e);
		}
		
		System.out.println("\r---------------------");
		System.out.println("Signup Successfully!");
		System.out.println("username: " + username);
		System.out.println("role: member");
		System.out.println("-----------------------");
		
		session.setAttribute("username", username);
		session.setAttribute("role", "member");
		session.setAttribute("totalQuantity", 0);
		session.setAttribute("fullname", fullname);
		if(gender) {
			session.setAttribute("profilePictureURL", "Image/user/woman01.svg");
		} else {
			session.setAttribute("profilePictureURL", "Image/user/man01.svg");
		}
		
		String currentPath = (String) session.getAttribute("currentPath");
		
		return "redirect:"+currentPath;
	}
	
	
	@RequestMapping(value="/CheckUser", method=RequestMethod.POST)
	@ResponseBody
	public String checkUser(HttpServletRequest request) {
		String username_signup = request.getParameter("username_signup");
		boolean isDuplicate = false;
		
		if(!username_signup.equals("")) {
			if(accountService.isDuplicate(username_signup)) {
				isDuplicate = true;
			}
		}
		
		return "?"+"username_signup="+username_signup+"&"+"isDuplicate="+isDuplicate;
	}
	
	
	@RequestMapping("/LoggedInSuccessfully")
	public ModelAndView loggedInSuccessfully(HttpServletRequest request, Principal principal) {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/index");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		
		String loggedUsername = loginedUser.getUsername();
		String loggedUsernameAuthorities = loginedUser.getAuthorities().toString();
		String loggedRole = loggedUsernameAuthorities.substring(1, loggedUsernameAuthorities.length()-1);
		String loggedFullname = accountService.findById(loggedUsername).getFullName();
		Account account = accountService.findById(loggedUsername);
		String us = accountService.findById(loggedUsername).getUsername();
//		model.addObject("account", account);
		model.addObject("us", us);
		System.out.println("Thông tin tài khoản: "+account);
		
		System.out.println("\r---------------------");
		System.out.println("Logged In Successfully!");
		System.out.println("username: " + loggedUsername);
		System.out.println("role: " + loggedRole);
		System.out.println("-----------------------");
		
		session.setAttribute("username", loggedUsername);
		session.setAttribute("role", loggedRole);
		session.setAttribute("fullname", loggedFullname);
		session.setAttribute("profilePictureURL", accountService.findById(loggedUsername).getImagePath());
		
//		session.setAttribute("totalQuantity", cartItemService.countCartQuantity(loggedUsername));
		System.out.println("currentPath: "+ session.getAttribute("currentPath"));
		String currentPath = (String) session.getAttribute("currentPath");
//		&& currentPath.contains("/index")
		if(loggedRole.equals("ROLE_ADMIN")&& currentPath.contains("/index")) {
			model.setViewName("indexadmin");
			return model;
		}
		
		return model;
	}
	
	@RequestMapping("Profile")
	public String viewProfile(HttpServletRequest request, ModelMap model, Principal principal) {
		HttpSession session = request.getSession();
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String loggedUsername = loginedUser.getUsername();
		Account account = accountService.findById(loggedUsername);
		model.addAttribute("profile", account);
		if(session.getAttribute("edit")!=null) {
			model.addAttribute("edit", "edited");
			session.setAttribute("edit", null);
		}
		
		return "account/profile";
	}
	
	@RequestMapping("EditProfile")
	public String editProfile(ModelMap model, Principal principal) {
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String loggedUsername = loginedUser.getUsername();
		Account account = accountService.findById(loggedUsername);
		model.addAttribute("profile", account);
		
		
		return "account/editProfile";
	}
	
	@RequestMapping(value="SubmitInfo", method=RequestMethod.POST)
	public String submitInfo(HttpServletRequest request, Principal principal) {
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String loggedUsername = loginedUser.getUsername();
		Account account = accountService.findById(loggedUsername);
		account.setImagePath(request.getParameter("hiddenImgPath"));
		account.setFullName(request.getParameter("sl_edit_name"));
		account.setEmail(request.getParameter("sl_edit_email"));
		if(request.getParameter("sl_edit_gt").equals("0")) account.setGender(false);
		else account.setGender(true);
		account.setPhone(request.getParameter("sl_edit_phone"));
		
		accountService.saveAccount(account);
		request.getSession().setAttribute("edit", "edited");
		request.getSession().setAttribute("profilePictureURL", accountService.findById(loggedUsername).getImagePath());
		
		return "redirect:/Profile";
	}
	
	@RequestMapping(value="UploadAvatar", method=RequestMethod.POST)
	@ResponseBody
	public String uploadAvatar(ModelMap model, @RequestParam("addAvatarIMG") MultipartFile photo) {
		
		
		System.out.println("INVOKEEEE");
		try {
			String fileContentType = photo.getContentType();
			long fileSize = photo.getSize();
			System.out.println("fileContentType: " + fileContentType); 
			System.out.println("fileSize: " + fileSize); 
			System.out.println(fileContentType.substring(0, 6));
			if(!fileContentType.substring(0, 6).equals("image/")) {
				return "?photo_name=FAIL";
			} else if (fileSize > 2097152) {
				return "?photo_name=OVERSIZE";
			}
			
			String photoPath = context.getRealPath("/files/avatar/" + photo.getOriginalFilename());
			photo.transferTo(new File(photoPath));
			model.addAttribute("photo_name", photo.getOriginalFilename());
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Lỗi lưu file: " + e);
		}
		
		return "?photo_name=files/avatar/"+photo.getOriginalFilename();
		
	}
	
	@RequestMapping("Changepw")
	public String changepw(ModelMap model) {
		
		
		
		return "account/changepw";
	}
	
	@RequestMapping(value="CheckCurrentPw", method=RequestMethod.POST)
//	@PreAuthorize("hasAnyRole('ROLE_MEMBER', 'ROLE_ADMIN')")
	@ResponseBody
	public String submitPw(HttpServletRequest request, ModelMap model, Principal principal) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10);
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String loggedUsername = loginedUser.getUsername();
		Account account = accountService.findById(loggedUsername);
		String oldPw = request.getParameter("sl_current_pw");
		String newPw = request.getParameter("sl_new_pw");
		String pw;
		
		if(accountService.checkLogin(loggedUsername, oldPw)) {
			pw = "1";
			account.setPassword(encoder.encode(newPw));
			accountService.saveAccount(account);
			return "?pw="+pw;
		}else {
			pw = "0";
			return "?pw="+pw;
		}
	}
	
	
	
}
