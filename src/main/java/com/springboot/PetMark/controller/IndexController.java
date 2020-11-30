package com.springboot.PetMark.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.BlogService;
import com.springboot.PetMark.service.CartItemService;
import com.springboot.PetMark.service.ColorAccessoriesService;
import com.springboot.PetMark.service.ColorPetService;
import com.springboot.PetMark.service.ImgAccService;
import com.springboot.PetMark.service.ImgPetService;
import com.springboot.PetMark.service.PetService;
import com.springboot.PetMark.service.SizeService;


@Controller
@RequestMapping()
public class IndexController {
	@Autowired
	PetService petService;
	@Autowired
	AccessoriesService accessSv;
	@Autowired
	CartItemService cardSv;
	@Autowired
	AccountService accountService;
	@Autowired
	ImgPetService imgPet;
	@Autowired
	ImgAccService imgAcc;
	@Autowired
	ColorAccessoriesService colorAcc;
	@Autowired
	SizeService size;
	@Autowired
	ColorPetService colorPetSv;
	@Autowired
	BlogService blogService;
	@RequestMapping("/")
	public String showIndex() {
		return "redirect:/index";
	}
	@RequestMapping("/show-account")
	public ModelAndView showAccount(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/account");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		model.addObject("account", account);
//		return "client2/account";
		return model;
	}
	@RequestMapping("/show-change-pass")
	public ModelAndView showChangePass(Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/password-with-login");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(loginedUser.getUsername());
		model.addObject("account", account);
		return model;
	}
	
	@RequestMapping("/showLogin")
	public ModelAndView showLogin(HttpServletRequest req) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/login");
		String thongBao = req.getParameter("thongBao");
		model.addObject("thongBao", thongBao);
		return model;
//		return "client2/login";
	}
	@RequestMapping("/showregister")
	public ModelAndView showRegister(HttpServletRequest req) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/register");
		String thongBao = req.getParameter("thongBao");
		model.addObject("thongBao", thongBao);
		return model;
	}
	@RequestMapping("/index")
	public ModelAndView showAllProduct(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/index");
		List<Pet> listPet = petService.findAll();
		List<Accessories> listAcces = accessSv.findAll();
		List<Blog> blog = blogService.findByStatus(true);
		model.addObject("blog", blog);
		model.addObject("list", listPet);
		model.addObject("listAcc", listAcces);
		return model;
	}
	@RequestMapping("/welcome")
	public ModelAndView showWelcome(HttpServletRequest request,Principal principal) throws Exception{
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/welcome");
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addObject("account", account);
		List<Pet> listPet = petService.findAll();
		List<Accessories> listAcces = accessSv.findAll();
		List<Blog> blog = blogService.findByStatus(true);
		model.addObject("blog", blog);
		model.addObject("list", listPet);
		model.addObject("listAcc", listAcces);
		return model;
	}

	@RequestMapping("/403")
	public String forbidden(ModelMap model, HttpServletRequest request) {

		return "error/e403";
	}

	@RequestMapping("/404")
	public String notFound(ModelMap model, HttpServletRequest request) {

		return "error/e404";
	}

	@RequestMapping("/*")
	public String notFound2(ModelMap model, HttpServletRequest request) {
		model.addAttribute("u404", request.getRequestURI());

		return "error/e404";
	}

//	@RequestMapping("/error")
//	public String error2(ModelMap model, HttpServletRequest request) {
//		model.addAttribute("u404", request.getRequestURI());
//		
//		return "error/e404";
//	}

	@RequestMapping("/changeSortValue")
	public String changeSortValue(HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");

		return "redirect:/index?sortValue=" + sortValue;
	}


	@RequestMapping("/pet-detail/{id}")
	public ModelAndView showDetail(@PathVariable String id, HttpServletRequest httpServletRequest, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/product");
		if (id != null) {
			Pet pet = petService.findById(Integer.valueOf(id));
			model.addObject("pet", pet);
			String loai = "pet";
			model.addObject("color",colorPetSv.findByPet(pet));
			model.addObject("loai", loai);
			model.addObject("img", imgPet.findByPet(pet));
		}
		return model;
	}

	@RequestMapping("/acc-detail/{id}")
	public ModelAndView showDetailAcc(@PathVariable String id, HttpServletRequest httpServletRequest, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/acc-detail");
		if (id != null) {
			Accessories acc = accessSv.findById(Integer.valueOf(id));
			model.addObject("acc", acc);
			String loai = "acc";
			model.addObject("loai", loai);
			model.addObject("imgacc", imgAcc.findByAccessories(acc));
			model.addObject("colacc", colorAcc.findByAccessories(acc));
			model.addObject("size", size.findByAccessories(acc));
		}
		return model;
	}

	@RequestMapping("/pet-detail2/{id}")
	public ModelAndView showDetail2(@PathVariable String id, HttpServletRequest httpServletRequest, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/product");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
    	String username = loginedUser.getUsername();
		model.addObject("user", username);
		if (id != null) {
			Pet pet = petService.findById(Integer.valueOf(id));
			model.addObject("pet", pet);
			String loai = "pet";
			model.addObject("color",colorPetSv.findByPet(pet));
			model.addObject("loai", loai);
			model.addObject("img", imgPet.findByPet(pet));
		}
		return model;
	}

	@RequestMapping("/acc-detail2/{id}")
	public ModelAndView showDetailAcc2(@PathVariable String id, HttpServletRequest httpServletRequest, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/acc-detail");
		User loginedUser = (User) ((Authentication) principal).getPrincipal();
		if(loginedUser!=null) {
    	String username = loginedUser.getUsername();
		model.addObject("user", username);
		}
		if (id != null) {
			Accessories acc = accessSv.findById(Integer.valueOf(id));
			model.addObject("acc", acc);
			String loai = "acc";
			model.addObject("loai", loai);
			model.addObject("imgacc", imgAcc.findByAccessories(acc));
			model.addObject("colacc", colorAcc.findByAccessories(acc));
			model.addObject("size", size.findByAccessories(acc));
		}
		return model;
	}
	
	@RequestMapping("/search")
	public ModelAndView searchProduct(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/search");
		String search = request.getParameter("search");	
		model.addObject("value", search);
		List<Pet> listPet = petService.search(search);
		model.addObject("list", listPet);
		List<Accessories> listAcces = accessSv.search(search);
		String result = "";
		if(listAcces.size() == 0) {
			listAcces = accessSv.findAll();
			result = "Không tìm thấy phụ kiện phù hợp";
		}
		model.addObject("result", result);
		model.addObject("size", size.getStatus());
		model.addObject("listAcc", listAcces);
		return model;
	}
	@RequestMapping("/search1")
	public ModelAndView search(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/search");
		String search = request.getParameter("search");	
		model.addObject("value", search);
		List<Pet> listPet = petService.search(search);
		model.addObject("list", listPet);
		List<Accessories> listAcces = accessSv.search(search);
		String result = "";
		if(listAcces.size() == 0) {
			listAcces = accessSv.findAll();
			result = "Không tìm thấy phụ kiện phù hợp";
		}
		model.addObject("size", size.getStatus());
		model.addObject("result", result);
		model.addObject("listAcc", listAcces);
		return model;
	}
	
	@RequestMapping("/select")
	public void select(HttpServletRequest req ) {
		String[] check= req.getParameterValues("checkbox");
		for(int i=0;i<check.length;i++) {
			String kq =check[i];
		System.out.println("check box được chọn: "+kq);
		}
	}
}
