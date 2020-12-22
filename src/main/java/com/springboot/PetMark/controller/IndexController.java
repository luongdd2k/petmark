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
import com.springboot.PetMark.entities.Deposit;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.Species;
import com.springboot.PetMark.entities.TinhThanhPho;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.BlogService;
import com.springboot.PetMark.service.CartItemService;
import com.springboot.PetMark.service.CategoryService;
import com.springboot.PetMark.service.ColorAccessoriesService;
import com.springboot.PetMark.service.ColorPetService;
import com.springboot.PetMark.service.DepositService;
import com.springboot.PetMark.service.ImgAccService;
import com.springboot.PetMark.service.ImgPetService;
import com.springboot.PetMark.service.PetService;
import com.springboot.PetMark.service.QuanHuyenService;
import com.springboot.PetMark.service.SizeService;
import com.springboot.PetMark.service.SpeciesService;
import com.springboot.PetMark.service.TinhThanhPhoService;
import com.springboot.PetMark.service.XaPhuongThiTranService;

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
	@Autowired
	SpeciesService speciesService;
	@Autowired
	TinhThanhPhoService tpService;
	@Autowired
	QuanHuyenService qhService;
	@Autowired
	XaPhuongThiTranService xaService;

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
		int slCard = 0;
		if(cardSv.countByAccount(account)!=0) {
		slCard = cardSv.countByAccount(account);
		}
		model.addObject("slCard", slCard);
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
		int slCard = 0;
		if(cardSv.countByAccount(account)!=0) {
		slCard = cardSv.countByAccount(account);
		}
		model.addObject("slCard", slCard);
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
		List<TinhThanhPho> tp = tpService.findAll();
		model.addObject("tp", tp);
		return model;
	}

	@RequestMapping("/index")
	public ModelAndView showAllProduct(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView();
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
		}
		String atm = request.getParameter("atm");
		model.addObject("atm", atm);
		model.setViewName("client2/index");
		List<Pet> listPet = petService.showAll("Ngừng bán");
		List<Accessories> listAcces = accessSv.findAll();
		List<Blog> blog = blogService.findByStatus(1);
		int blog1 = 0;
		if(blog.size()>0) {
			blog1 = 1;
			model.addObject("blog", blog);
		}
		model.addObject("blog1", blog1);
//		model.addObject("blog", blog);
		model.addObject("list", listPet);
		model.addObject("listAcc", listAcces);
		return model;
	}


	@RequestMapping("/403")
	public String forbidden(ModelMap model, HttpServletRequest request) {

		return "pages/examples/404";
	}

	@RequestMapping("/404")
	public String notFound(ModelMap model, HttpServletRequest request) {

		return "pages/examples/404";
	}

	@RequestMapping("/*")
	public String notFound2(ModelMap model, HttpServletRequest request) {
		model.addAttribute("u404", request.getRequestURI());

		return "pages/examples/404";
	}


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
		List<TinhThanhPho> tp = tpService.findAll();
		model.addObject("tp", tp);
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
		}
		if (id != null) {
			Pet pet = petService.findById(Integer.valueOf(id));
			model.addObject("pet", pet);
			String loai = "pet";
			model.addObject("list", petService.findBySpecies(pet.getSpecies()));
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
		List<TinhThanhPho> tp = tpService.findAll();
		model.addObject("tp", tp);
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
		}
		if (id != null) {
			Accessories acc = accessSv.findById(Integer.valueOf(id));
			model.addObject("acc", acc);
			String loai = "acc";
			model.addObject("loai", loai);
			model.addObject("list", accessSv.findByCategory(acc.getCategory()));
			model.addObject("imgacc", imgAccSv.findByAccessories(acc));
			model.addObject("colacc", colorAcc.findByAccessories(acc));
			model.addObject("size", sizeSv.findByAccessories(acc));
		}
		return model;
	}

	@RequestMapping("/search")
	public ModelAndView searchProduct(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
		}
		List<Blog> blog = blogService.findByStatus(1);
		int blog1 = 0;
		if(blog.size()>0) {
			blog1 = 1;
			model.addObject("blog", blog);
		}
		model.addObject("blog1", blog1);
		String search = request.getParameter("search");
		List<Pet> listPet = petService.search(search);
		model.addObject("list", listPet);
		List<Accessories> listAcces = accessSv.search(search);
		if (listAcces.size() == 0) {
			listAcces = accessSv.findAll();
		}
		model.addObject("listAcc", listAcces);
		model.setViewName("client2/index");
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
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
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
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
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
							if(!list.contains(listByHang.get(i))) {
							list.add(listByHang.get(i));
							}
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
	
	@RequestMapping("/show-search-pet")
	public ModelAndView filterPet(HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		HttpSession session = req.getSession();
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
		}
		List<Pet> listAcces = petService.findAll();
		List<Species> category = speciesService.findAll();
		model.addObject("category", category);
		List<String> color = colorPetSv.getFullColor();
		model.addObject("color", color);
		model.setViewName("client2/search2");
		model.addObject("size", colorPetSv.getEyeColor());
		model.addObject("list", listAcces);
		return model;
	}
	@RequestMapping("/locPet")
	public ModelAndView locPet(HttpServletRequest req, Principal principal) {
		ModelAndView model = new ModelAndView();
		HttpSession session = req.getSession();
		List<Species> category = speciesService.findAll();
		model.addObject("category", category);
		List<String> color = colorPetSv.getFullColor();
		model.addObject("color", color);
		model.addObject("size", colorPetSv.getEyeColor());
		String username = (String) session.getAttribute("username");
		if (username != null) {
			Account account = accountService.findById(username);
			model.addObject("account", account);
			int slCard = 0;
			if(cardSv.countByAccount(account)!=0) {
			slCard = cardSv.countByAccount(account);
			}
			model.addObject("slCard", slCard);
		}
		model.setViewName("client2/search2");
		float min = Float.parseFloat(req.getParameter("min"));
		float max = Float.parseFloat(req.getParameter("max"));
		String mau = req.getParameter("mauLong");
		String sizes = req.getParameter("mauMat");
		List<Pet> byMau = petService.findAll();
		if(mau!="" || sizes!="") {
		 byMau = colorPetSv.findListPet(mau, sizes);
		}
		List<Pet> list = new ArrayList<Pet>();
		String hangPK = req.getParameter("hang");
		List<Pet> listByHang = petService.findAll();
		if (hangPK != "") {
			int id = Integer.parseInt(hangPK);
			listByHang = petService.findBySpecies(speciesService.findById(id));
		}
		List<Pet> byPrice = petService.findAll();
		if (max > 0) {
			byPrice = petService.findBetweenPrice(min, max);
		}
		for (int i = 0; i < listByHang.size(); i++) {
			for (int j = 0; j < byPrice.size(); j++) {
				for (int m = 0; m < byMau.size(); m++) {
						if (listByHang.get(i).getId() == byPrice.get(j).getId()
								&& byPrice.get(j).getId() == byMau.get(m).getId()) {
							if(!list.contains(listByHang.get(i))) {
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
