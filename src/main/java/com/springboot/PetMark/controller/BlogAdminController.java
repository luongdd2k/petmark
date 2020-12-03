package com.springboot.PetMark.controller;

import java.security.Principal;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.config.MailConfig;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.BlogService;

@Controller
@RequestMapping("/admin/blog")
public class BlogAdminController {
@Autowired
BlogService blogService;
@Autowired
AccountService accountService;
@RequestMapping()
public ModelAndView show(Principal principal) {
	ModelAndView model = new ModelAndView();
	model.setViewName("pages/blog/all-blog");
	User loginedUser = (User) ((Authentication) principal).getPrincipal();
	Account account = accountService.findById(loginedUser.getUsername());
	model.addObject("account", account);
	List<Blog> blog = blogService.findAll();
	model.addObject("blog", blog);
	return model;
}

@RequestMapping("/cancel")
public String cancelBlog(Principal principal,HttpServletRequest req) {
	int id = Integer.parseInt(req.getParameter("blog-id"));
	String  email = blogService.findById(id).getAccount().getEmail();
	String[] liDo = req.getParameterValues("liDo");
	System.out.println("lí do: "+liDo);
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
	try {
		MimeMessage message = new MimeMessage(session);
		message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
		message.setSubject("Thông báo huỷ bài viết từ PetMark");
		String liDo1 ="";
		for(int i=0;i<liDo.length;i++) {
		liDo1 +="-"+ liDo[i] +". \n";
		}
		message.setText("Mã bài đăng của bạn: " + id + "\n" 
				+ "Lí do huỷ bài: " + "\n" + liDo1 + "\n"
				+ "Xin chân thành cảm ơn.");
		Transport.send(message);
		System.out.println("thông báo mail huỷ bài viết thành công");
		blogService.changeStt(false, id);
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
	}
	return "redirect:/admin/blog";
}

@RequestMapping("/confirm/{id}")
public String confirmBlog(@PathVariable int id,Principal principal) {
	blogService.changeStt(true, id);
	return "redirect:/admin/blog";
}
}
