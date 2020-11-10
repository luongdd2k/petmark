package com.springboot.PetMark.controller;

import java.io.File;
import java.security.Principal;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
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

import com.springboot.PetMark.config.MailConfig;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.service.AccountService;

@Controller
public class AccountController {

	@Autowired
	AccountService accountService;

	@Autowired
	ServletContext context;

	@RequestMapping("/showforgotpw")
	public String showForgotpw() {
		return "client2/forgot-pass";
	}

	@RequestMapping(value = "/isLoginFail", method = RequestMethod.POST)
	@ResponseBody
	public String loginFail(HttpServletRequest request) {
//		xong
		String username = request.getParameter("sl_login_username");
		String password = request.getParameter("sl_login_password");
		System.out.println("tên đăng nhập: " + username);
		System.out.println("mật khẩu: " + password);

		String isLoginFail = "1";
		if (accountService.checkLogin(username, password)) {
			isLoginFail = "0";
		}
		return "?" + "isLoginFail=" + isLoginFail;
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
	public ModelAndView checkSignup(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView();
		String username = request.getParameter("sl_signup_username");
		String password = request.getParameter("sl_signup_password");
		String password2 = request.getParameter("sl_signup_password_2");
		String fullname = request.getParameter("sl_signup_name");
		String gender_s = request.getParameter("gioiTinh");
		boolean gender = false;
		if (gender_s.equals("Nu"))
			gender = true;
		String email = request.getParameter("sl_signup_email");
		String phone = request.getParameter("sl_signup_phone");
		String address = request.getParameter("sl_signup_address");
		String message ="";
		if (password.equalsIgnoreCase(password2)) {
			accountService.addAccount(username, password, fullname, gender, email, phone, address);
			model.setViewName("redirect:/showLogin");
			 message = "Đăng kí thành công! Mời bạn đăng nhập";
			 model.addObject("thongBao", message);
		} else {
			message = "Mật khẩu bạn nhập không trùng khớp vui lòng nhập lại!!";
			model.setViewName("redirect:/showregister");
			model.addObject("thongBao", message);
		}
//		try {
//			request.login(username, password);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			System.out.println("CheckSignup: " + e);
//		}

		System.out.println("\r---------------------");
		System.out.println("Signup Successfully!");
		System.out.println("username: " + username);
		System.out.println("role: member");
		System.out.println("-----------------------");

		session.setAttribute("username", username);
		session.setAttribute("role", "member");
		session.setAttribute("totalQuantity", 0);
		session.setAttribute("fullname", fullname);
		if (gender) {
			session.setAttribute("profilePictureURL", "Image/user/woman01.svg");
		} else {
			session.setAttribute("profilePictureURL", "Image/user/man01.svg");
		}

		String currentPath = (String) session.getAttribute("currentPath");

//		return "redirect:" + currentPath;
//		return "redirect:/showLogin";
		return model;
	}

	@RequestMapping(value = "/CheckUser", method = RequestMethod.POST)
	@ResponseBody
	public String checkUser(HttpServletRequest request) {
		String username_signup = request.getParameter("username_signup");
		boolean isDuplicate = false;

		if (!username_signup.equals("")) {
			if (accountService.isDuplicate(username_signup)) {
				isDuplicate = true;
			}
		}

		return "?" + "username_signup=" + username_signup + "&" + "isDuplicate=" + isDuplicate;
	}

	@RequestMapping("/LoggedInSuccessfully")
	public ModelAndView loggedInSuccessfully(HttpServletRequest request, Principal principal) {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/welcome");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();

		String loggedUsername = loginedUser.getUsername();
		String loggedUsernameAuthorities = loginedUser.getAuthorities().toString();
		String loggedRole = loggedUsernameAuthorities.substring(1, loggedUsernameAuthorities.length() - 1);
		String loggedFullname = accountService.findById(loggedUsername).getFullName();
		Account account = accountService.findById(loggedUsername);
		System.out.println("Thông tin tài khoản: " + account);

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
		System.out.println("currentPath: " + session.getAttribute("currentPath"));
		String currentPath = (String) session.getAttribute("currentPath");
//		&& currentPath.contains("/index")
		if (loggedRole.equals("ROLE_ADMIN")) {
			model.setViewName("indexadmin");
			model.addObject("name", loggedFullname);
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
		if (session.getAttribute("edit") != null) {
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

	@RequestMapping(value = "SubmitInfo", method = RequestMethod.POST)
	public String submitInfo(HttpServletRequest request, Principal principal) {
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		String loggedUsername = loginedUser.getUsername();
		Account account = accountService.findById(loggedUsername);
		account.setImagePath(request.getParameter("hiddenImgPath"));
		account.setFullName(request.getParameter("sl_edit_name"));
		account.setEmail(request.getParameter("sl_edit_email"));
		if (request.getParameter("sl_edit_gt").equals("0"))
			account.setGender(false);
		else
			account.setGender(true);
		account.setPhone(request.getParameter("sl_edit_phone"));

		accountService.saveAccount(account);
		request.getSession().setAttribute("edit", "edited");
		request.getSession().setAttribute("profilePictureURL", accountService.findById(loggedUsername).getImagePath());

		return "redirect:/Profile";
	}

	@RequestMapping(value = "UploadAvatar", method = RequestMethod.POST)
	@ResponseBody
	public String uploadAvatar(ModelMap model, @RequestParam("addAvatarIMG") MultipartFile photo) {

		System.out.println("INVOKEEEE");
		try {
			String fileContentType = photo.getContentType();
			long fileSize = photo.getSize();
			System.out.println("fileContentType: " + fileContentType);
			System.out.println("fileSize: " + fileSize);
			System.out.println(fileContentType.substring(0, 6));
			if (!fileContentType.substring(0, 6).equals("image/")) {
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

		return "?photo_name=files/avatar/" + photo.getOriginalFilename();

	}

	@RequestMapping("Changepw")
	public String changepw(ModelMap model,HttpServletRequest req,Principal principal) {
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		String passworded = account.getPassword();
		String nowPass = req.getParameter("password");
		String newPass = req.getParameter("newPassword");
		String confirmPass = req.getParameter("newPasswordRepeat");
		if( new BCryptPasswordEncoder().matches(nowPass, passworded)) {
			if(newPass.equalsIgnoreCase(confirmPass)) {
				account.setPassword(new BCryptPasswordEncoder().encode(newPass));
				accountService.save(account);
				return "redirect:/show-account";
			}
		}
		return "redirect:/show-chang-pass";
	}

	@RequestMapping("/forgot-pass")
	public String forgotPass(HttpServletRequest req) {
		Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", MailConfig.HOST_NAME);
        props.put("mail.smtp.port", MailConfig.TSL_PORT);
        
        // get Session
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MailConfig.APP_EMAIL, MailConfig.APP_PASSWORD);
            }
        });
 
        // compose message
        try {
        	String email = req.getParameter("email");
        	String username = req.getParameter("username");
        	Account account = accountService.findById(username);
        	if(account!=null && account.getUsername().equals(username) && account.getEmail().equals(email)) {
        		int code = (int) Math.floor(((Math.random() * 89999999) + 10000000));
        		String newPass = String.valueOf(code);
            MimeMessage message = new MimeMessage(session);
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Thông báo quên mật khẩu từ PetMark");
            message.setText("Mật khẩu của bạn là: " +newPass);
            account.setPassword(new BCryptPasswordEncoder().encode(newPass));
			accountService.save(account);
            // send message
            Transport.send(message);
 
            System.out.println("Message sent successfully");
            return "redirect:/showLogin";
        	}
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return "redirect:/show-forgot-pass";
	}

}
