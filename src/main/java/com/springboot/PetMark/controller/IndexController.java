package com.springboot.PetMark.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.springboot.PetMark.config.HibernateProxyTypeAdapter;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.service.PetService;


@Controller
@RequestMapping()
public class IndexController {
	@Autowired
	PetService petService;
//	@Autowired
//	CartItemService cartItemService;
	
	@RequestMapping("/")
	public String showIndex() {
		return "redirect:/index";
	}
	
	@RequestMapping("/index")
	public String showAllProduct(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Pet> listPet = new ArrayList<Pet>();
//		List<Integer> listProductInteger = new ArrayList<Integer>();
//		String sortValue = request.getParameter("sortValue");
//		System.out.println("Index Sort: " + sortValue);
//		if(sortValue == null) sortValue = "1";
//		model.addAttribute("sortValue", sortValue);
//		switch (sortValue) {
//		case "1":
//			listSmartphone = productService.showProductByCategoryPageable("SMARTPHONE", false, PageRequest.of(0, 10, Sort.by("priceSale").descending()));
//			
//			break;
//		case "2":
//			listSmartphone = productService.showProductByCategoryPageable("SMARTPHONE", false, PageRequest.of(0, 10, Sort.by("priceSale").ascending()));
//			
//			break;
//		case "3":
//			listProductInteger = productService.showProductByCategoryOrderByPaid("SMARTPHONE", false, PageRequest.of(0, 10));
//			
//			break;
//		case "4":
//			listProductInteger = productService.showProductByCategoryOrderByLike("SMARTPHONE", false, PageRequest.of(0, 10));
//			
//			break;
//		case "5":
//			listProductInteger = productService.showProductByCategoryOrderByView("SMARTPHONE", false, PageRequest.of(0, 10));
//			
//			break;
//		default:
//			
//			break;
//		}
//		
//		if(!listProductInteger.isEmpty()) {
//			for (Integer integer : listProductInteger) {
//				listSmartphone.add(productService.findById(integer));
//			}
//		}
//		
		model.addAttribute("listPet", listPet);
//		
//		List<Product> listAccessory = productService.showIndexProduct("ACCESSORY");
//		model.addAttribute("listAccessory", listAccessory);
		
//		session.setAttribute("totalQuantity", cartItemService.countCartQuantity((String)session.getAttribute("username")));
		return "index";
	}
	
	@RequestMapping("/SearchProduct")
	public String searchProduct(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
//		String searchContent = request.getParameter("form_search");
//		
//		List<Product> searchResult = productService.findByNameContainingOrderByName(searchContent);
//		model.addAttribute("searchResult", searchResult);
//		
//		session.setAttribute("form_search_submit", searchContent);
//		System.out.println(searchContent);
		
		return "search";
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
			
		return "redirect:/index?sortValue="+sortValue;
	}
	
	
	@RequestMapping("getPageableProduct")
	@ResponseBody
	public void getPageableProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Pageable pageable;
//		List<Product> listProduct = new ArrayList<Product>();
//		List<Integer> listProductInteger = new ArrayList<Integer>();
//		System.out.println("pageIndex: " + request.getParameter("pageIndex"));
//		System.out.println("sortType: " + request.getParameter("sortType"));
//		int pageIndex = Integer.valueOf(request.getParameter("pageIndex"));
//		String sortType = request.getParameter("sortType");
//		
//		switch (sortType) {
//		case "1":
//			pageable = PageRequest.of(pageIndex+1, 5, Sort.by("priceSale").descending());
//			listProduct = productService.showProductByCategoryPageable("SMARTPHONE", false, pageable);
//			
//			break;
//		case "2":
//			pageable = PageRequest.of(pageIndex+1, 5, Sort.by("priceSale").ascending());
//			listProduct = productService.showProductByCategoryPageable("SMARTPHONE", false, pageable);
//			
//			break;
//		case "3":
//			pageable = PageRequest.of(pageIndex+1, 5);
//			listProductInteger = pro.showProductByCategoryOrderByPaid("SMARTPHONE", false, pageable);
//			break;
//		case "4":
//			pageable = PageRequest.of(pageIndex+1, 5);
//			listProductInteger = pro.showProductByCategoryOrderByLike("SMARTPHONE", false, pageable);
//			
//			break;
//		case "5":
//			pageable = PageRequest.of(pageIndex+1, 5);
//			listProductInteger = pro.showProductByCategoryOrderByView("SMARTPHONE", false, pageable);
//			
//			break;
//		default:
//			
//			break;
//		}
//		
//		if(!listProductInteger.isEmpty()) {
//			for (Integer integer : listProductInteger) {
//				listProduct.add(productService.findById(integer));
//			}
//		}
//		
//		GsonBuilder gsonBuilder = new GsonBuilder();
//		gsonBuilder.registerTypeAdapterFactory(HibernateProxyTypeAdapter.FACTORY);
//		Gson gson = gsonBuilder.create();
//		String json = gson.toJson(listProduct);
//		
//		response.setContentType("application/json");
//	    response.setCharacterEncoding("UTF-8");
//	    response.getWriter().write(json);
		
	}
	
	
	
	@RequestMapping("/testA")
	public String testA(ModelMap model, HttpServletRequest request) {
		
		
		return "testA";
	}
	
//	@Autowired
//	ProductRepository pro;
//	@Autowired
//	CategoryRepository cate;
	
	@RequestMapping("/sendA")
	@ResponseBody
	public void sendA(HttpServletRequest request, HttpServletResponse response) {
//		Pageable pageable = PageRequest.of(0, 10);
//		Pageable pageable2 = PageRequest.of(0, 10, Sort.by("id").descending());
////		Pageable pageable = PageRequest.of(2, 5, Sort.by("id").ascending());
////		List<Integer> listProductInteger = pro.showContinueProductOrderByLike(pageable);
//		List<Integer> listProductInteger = pro.showProductByCategoryOrderByPaid("SMARTPHONE", false, pageable);
//		List<Product> listProduct2 = pro.showProductByCategoryPageable("SMARTPHONE", false, pageable2);
////		List<Product> listProductByCategory = pro.findByIsDiscontinuedAndCategory(false, cate.findById("SMARTPHONE").get(), pageable);
//		List<Product> listProduct = new ArrayList<Product>();
//		
//		
//		for (Integer integer : listProductInteger) {
//			listProduct.add(productService.findById(integer));
//		}
//
//		
//		
//		try {
//			GsonBuilder gsonBuilder = new GsonBuilder();
//			gsonBuilder.registerTypeAdapterFactory(HibernateProxyTypeAdapter.FACTORY);
//			Gson gson = gsonBuilder.create();
//			
//			String json = gson.toJson(listProduct2);
//			response.setContentType("application/json");
//		    response.setCharacterEncoding("UTF-8");
//		    response.getWriter().write(json);
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//			System.out.println("Gson: " + e);
//			e.printStackTrace();
//		}
		
	}

}
