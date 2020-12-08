package com.springboot.PetMark.controller;

import java.io.File;
import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Category;
import com.springboot.PetMark.repository.AccessoriesRepository;
import com.springboot.PetMark.service.AccessoriesService;
import com.springboot.PetMark.service.AccountService;
import com.springboot.PetMark.service.CategoryService;
import com.springboot.PetMark.service.ColorAccessoriesService;

@Controller
@RequestMapping("/admin/AccessoriesManagement")
public class AccessoriesController {
	@Autowired
	AccessoriesService AccessoriesService;
	@Autowired
	CategoryService CategoryService;
	@Autowired
	ColorAccessoriesService color;
	@Autowired
	AccountService accountService;
	@Autowired
	ServletContext context;

//	
	@RequestMapping
	public String index(ModelMap model, HttpServletRequest request,Principal principal) throws IllegalArgumentException {
		HttpSession session = request.getSession();
		List<Accessories> listAccessories = new ArrayList<Accessories>();
		List<Integer> listAccessoriesInteger = new ArrayList<Integer>();
		List<Category> listCategory = CategoryService.findAll();
		List<String> listStatus = AccessoriesService.getStatus();
		int countContinueAccessories = AccessoriesService.countContinueProduct();
		int totalPage = (int) Math.ceil((double)countContinueAccessories/10);
		int targetPage;

		if (session.getAttribute("targetPage") != null) {
			targetPage = (int) session.getAttribute("targetPage");
		} else
			targetPage = 1;

		if (request.getParameter("targetPage") != null) {
			targetPage = Integer.valueOf(request.getParameter("targetPage"));
		}
		int page = targetPage - 1;
		listAccessories = AccessoriesService.showProductByCategoryPageable("", PageRequest.of(page, 10, Sort.by("id").ascending()));
//		int page = targetPage - 1;

		if (request.getParameter("scrollT") != null) {
			model.addAttribute("scrollT", request.getParameter("scrollT"));
		}

		String action = "DisContinuedAccessories";
		String nameButton2 = "Ngừng kinh doanh";
		String classButtonDelete = "btn_delete2";
		String sortValue = request.getParameter("sortValue");
		System.out.println("Index Sort: " + sortValue);
		if (sortValue == null)
			sortValue = "-1";
		model.addAttribute("sortValue", sortValue);
		try {		
			switch (sortValue) {
			case "-1":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable( "Còn hàng", PageRequest.of(page, 10, Sort.by("id").ascending()));
				
				break;
			case "0":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("id").descending()));
				
				break;
			case "1":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("price").ascending()));
				
				break;
			case "2":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("price").descending()));
				
				break;
			case "3":
				if(targetPage > totalPage) page = 0;
				listAccessories = AccessoriesService.showProductByCategoryPageable("Ngừng bán", PageRequest.of(page, 10, Sort.by("id").ascending()));
//				totalPage = (int) Math.ceil((double)AccessoriesService.countAccessories("Ngừng bán")/10);
				nameButton2 = "Đăng bán";
				action = "ContinuedAccessories";
				classButtonDelete = "cancel_discontinue";
				
				break;
			default:
				
				break;
			}
		
		} catch (Exception e) {
			return "404";
		}
		if (!listAccessoriesInteger.isEmpty()) {
			for (Integer integer : listAccessoriesInteger) {
				listAccessories.add(AccessoriesService.findById(integer));
			}
		}
//		

		if (session.getAttribute("add") != null) {
			model.addAttribute("add", "added");
			session.setAttribute("add", null);
		}
		User logginedUser = (User) ((Authentication) principal).getPrincipal();
		Account account = accountService.findById(logginedUser.getUsername());
		model.addAttribute("account", account);
		session.setAttribute("targetPage", targetPage);
		model.addAttribute("nameButton2", nameButton2);
		model.addAttribute("classButtonDelete", classButtonDelete);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listAccessories", listAccessories);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("listStatus", listStatus);
		model.addAttribute("action", action);
		return "pages/accessory/accessory-manager";
	}

//	
	@RequestMapping("/getPageableQLSP")
	public String getPageableQLSP(HttpServletRequest request) {

		return "redirect:/admin/AccessoriesManagement";
	}

//	
	@RequestMapping("/changeSortValue")
	public String changeSortValue(HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");
		
		return "redirect:/admin/AccessoriesManagement?sortValue="+sortValue;
		
	}
//	
	@RequestMapping("/AddAccessories")
	public String addAccessories(HttpServletRequest request) {
		String name = request.getParameter("tenPhuKien");
		String status = request.getParameter("trangThaiPhuKien");
		String des = request.getParameter("moTaPhuKien");
//		String imagePath = request.getParameter("hiddenImgPath");
//		System.out.println("IMGpath:" + imagePath);
		String priceDisplay = request.getParameter("giaPhuKien");
		float price = Float.valueOf(priceDisplay);
//		String giaCoc = request.getParameter("p_add_coc");
//		float coc = Float.valueOf(giaCoc.substring(0, giaCoc.length() - 2).replaceAll("\\.", ""));
		int quantityLeft = Integer.valueOf(request.getParameter("soLuongPhuKien"));
//		int age = Integer.valueOf(request.getParameter("p_add_age"));
		int categoryID = Integer.valueOf(request.getParameter("hangPhuKien"));
		Category Category = CategoryService.findById(categoryID);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		Accessories Accessories = new Accessories( name,  price,  quantityLeft,  Category,  date,des,  status);
		System.out.println("Accessories: "+Accessories);
//		System.out.println("giống : "+Category);
		AccessoriesService.addAccessories(Accessories);
//		request.getSession().setAttribute("add", "added");

		return "redirect:/admin/AccessoriesManagement";
	}


	@RequestMapping("/UpdateAccessories")
//	@ResponseBody
	public String updateAccessories(HttpServletRequest request) throws ParseException {
		int id = Integer.valueOf(request.getParameter("id"));
		String name = request.getParameter("tenPhuKien");
		String status = request.getParameter("trangThaiPhuKien");
		String priceDisplay = request.getParameter("giaPhuKien");
		String description = request.getParameter("moTaPhuKien");
		float price = Float.valueOf(priceDisplay.substring(0, priceDisplay.length() - 2).replaceAll("\\.", ""));
		int amount = Integer.valueOf(request.getParameter("soLuongPhuKien"));
		int categoryID = Integer.valueOf(request.getParameter("hangPhuKien"));
		Category Category = CategoryService.findById(categoryID);
		String date1 = request.getParameter("ngayUpdate");
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(date1);
		System.out.println(date);
		Accessories Accessories = new Accessories(id, name, price, amount, Category, date, description, status);
		System.out.println("phụ kiện update: " +Accessories);
		AccessoriesService.updateAccessories(Accessories);
		return "redirect:/admin/AccessoriesManagement";
	}
	
	@RequestMapping("/DisContinuedAccessories")
//	@ResponseBody
	public String disContinuedAccessories(HttpServletRequest request) {
		int AccessoriesId = Integer.valueOf(request.getParameter("AccessoriesId"));
		System.out.println("AccessoriesID: " + AccessoriesId);
		AccessoriesService.disContinueAccessories(AccessoriesId);

		return "redirect:/admin/AccessoriesManagement";
	}
//	
	@RequestMapping("/ContinuedAccessories")
//	@ResponseBody
	public String continuedAccessories(HttpServletRequest request) {
		int AccessoriesId = Integer.valueOf(request.getParameter("AccessoriesId"));
		AccessoriesService.continueAccessories(AccessoriesId);
		
		return "redirect:/admin/AccessoriesManagement";
	}
@RequestMapping("/show-edit/{id}")
public ModelAndView showEditAcc(HttpServletRequest req,@PathVariable int id,Principal principal) {
	ModelAndView model = new ModelAndView();
	User logginedUser = (User) ((Authentication) principal).getPrincipal();
	Account account = accountService.findById(logginedUser.getUsername());
	model.addObject("account", account);
	model.setViewName("pages/accessory/accessory-update");
	Accessories accessories = AccessoriesService.findById(id);
	List<Category> listCategory = CategoryService.findAll();
	List<String> listStatus = AccessoriesService.getStatus();
	model.addObject("acc", accessories);
	model.addObject("listCategory", listCategory);
	model.addObject("listStatus", listStatus);
	return model;
}
}
