package com.springboot.PetMark.controller;

import java.security.Principal;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.entities.Category;
import com.springboot.PetMark.entities.ColorAccessories;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.BlogService;
import com.springboot.PetMark.service.CartItemService;
import com.springboot.PetMark.service.CategoryService;
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
	ImgPetService imgPetSv;
	@Autowired
	ImgAccService imgAccSv;
	@Autowired
	ColorAccessoriesService colorAcc;
	@Autowired
	SizeService sizeSv;
	@Autowired
	ColorPetService colorPetSv;
	@Autowired
	BlogService blogService;
	@Autowired
	CategoryService categoryService;

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
	public ModelAndView showAllProduct(HttpServletRequest request) throws Exception {
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
	public ModelAndView showWelcome(HttpServletRequest request, Principal principal) throws Exception {
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
	public ModelAndView showDetail(@PathVariable String id, HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/product");
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
		}
		if (id != null) {
			Pet pet = petService.findById(Integer.valueOf(id));
			model.addObject("pet", pet);
			String loai = "pet";
			model.addObject("color", colorPetSv.findByPet(pet));
			model.addObject("loai", loai);
			model.addObject("img", imgPetSv.findByPet(pet));
		}
		return model;
	}

	@RequestMapping("/acc-detail/{id}")
	public ModelAndView showDetailAcc(@PathVariable String id, HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/acc-detail");
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
		}
		if (id != null) {
			Accessories acc = accessSv.findById(Integer.valueOf(id));
			model.addObject("acc", acc);
			String loai = "acc";
			model.addObject("loai", loai);
			model.addObject("imgacc", imgAccSv.findByAccessories(acc));
			model.addObject("colacc", colorAcc.findByAccessories(acc));
			model.addObject("size", sizeSv.findByAccessories(acc));
		}
		return model;
	}

//	@RequestMapping("/pet-detail2/{id}")
//	public ModelAndView showDetail2(@PathVariable String id, HttpServletRequest httpServletRequest, Principal principal) {
//		ModelAndView model = new ModelAndView();
//		model.setViewName("client2/product");
//		User loginedUser = (User) ((Authentication) principal).getPrincipal();
//    	String username = loginedUser.getUsername();
//		model.addObject("user", username);
//		if (id != null) {
//			Pet pet = petService.findById(Integer.valueOf(id));
//			model.addObject("pet", pet);
//			String loai = "pet";
//			model.addObject("color",colorPetSv.findByPet(pet));
//			model.addObject("loai", loai);
//			model.addObject("img", imgPet.findByPet(pet));
//		}
//		return model;
//	}
//
//	@RequestMapping("/acc-detail2/{id}")
//	public ModelAndView showDetailAcc2(@PathVariable String id, HttpServletRequest httpServletRequest, Principal principal) {
//		ModelAndView model = new ModelAndView();
//		model.setViewName("client2/acc-detail");
//		User loginedUser = (User) ((Authentication) principal).getPrincipal();
//		if(loginedUser!=null) {
//    	String username = loginedUser.getUsername();
//		model.addObject("user", username);
//		}
//		if (id != null) {
//			Accessories acc = accessSv.findById(Integer.valueOf(id));
//			model.addObject("acc", acc);
//			String loai = "acc";
//			model.addObject("loai", loai);
//			model.addObject("imgacc", imgAcc.findByAccessories(acc));
//			model.addObject("colacc", colorAcc.findByAccessories(acc));
//			model.addObject("size", size.findByAccessories(acc));
//		}
//		return model;
//	}

	@RequestMapping("/search")
	public ModelAndView searchProduct(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/index");
		String search = request.getParameter("search");
		List<Pet> listPet = petService.search(search);
		model.addObject("list", listPet);
		List<Accessories> listAcces = accessSv.search(search);
		String result = "";
		if (listAcces.size() == 0) {
			listAcces = accessSv.findAll();
			result = "Không tìm thấy phụ kiện phù hợp";
		}
		model.addObject("result", result);
		model.addObject("listAcc", listAcces);
		return model;
	}

	@RequestMapping("/search1")
	public ModelAndView search(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName("client2/welcome");
		String search = request.getParameter("search");
		List<Pet> listPet = petService.search(search);
		model.addObject("list", listPet);
		List<Accessories> listAcces = accessSv.search(search);
		String result = "";
		if (listAcces.size() == 0) {
			listAcces = accessSv.findAll();
			result = "Không tìm thấy phụ kiện phù hợp";
		}
		model.addObject("result", result);
		model.addObject("listAcc", listAcces);
		return model;
	}

	@RequestMapping("/show-search-acc")
	public ModelAndView select(HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
		}
		List<Accessories> listAcces = accessSv.findAll();
		List<Category> category = categoryService.showCategoryManagement();
		model.addObject("category", category);
		List<String> color = colorAcc.findColor();
		model.addObject("color", color);
		model.setViewName("client2/search");
		model.addObject("size", sizeSv.getStatus());
		model.addObject("list", listAcces);
		return model;
	}

	@RequestMapping("/loc")
	public ModelAndView loc(HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		HttpSession session = req.getSession();
		List<Category> category = categoryService.showCategoryManagement();
		model.addObject("category", category);
		List<String> color = colorAcc.findColor();
		model.addObject("color", color);
		model.addObject("size", sizeSv.getStatus());
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
		}
		model.setViewName("client2/search");
		float min = Float.parseFloat(req.getParameter("min"));
		float max = Float.parseFloat(req.getParameter("max"));
		String mau = req.getParameter("mau");
		List<Accessories> byMau = colorAcc.findListAcc(mau);
		String sizes = req.getParameter("kichCo");
		List<Accessories> list = new ArrayList<Accessories>();
		String hangPK = req.getParameter("hang");
		List<Accessories> listByHang = accessSv.findAll();
		if (hangPK != "") {
			int id = Integer.parseInt(hangPK);
			listByHang = accessSv.findByCategory(categoryService.findById(id));
		}
		List<Accessories> byPrice = accessSv.findAll();
		if (max > 0) {
			byPrice = accessSv.findBetweenPrice(min, max);
		}
		List<Accessories> bySize = accessSv.findAll();
		if (sizes != "") {
			bySize = sizeSv.findListAcc(sizes);
		}
		for (int i = 0; i < listByHang.size(); i++) {
			for (int j = 0; j < byPrice.size(); j++) {
				for (int m = 0; m < byMau.size(); m++) {
					for (int n = 0; n < bySize.size(); n++) {
						if (listByHang.get(i).getId() == byPrice.get(j).getId()
								&& byPrice.get(j).getId() == byMau.get(m).getId()
								&& byMau.get(m).getId() == bySize.get(n).getId()) {
							list.add(listByHang.get(i));
						}
					}
				}
			}
		}
		int kqsearch = list.size();
		model.addObject("kqsearch", kqsearch);
		model.addObject("list", list);

		return model;
	}
}
