package com.springboot.PetMark.controller;

import java.io.File;
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
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.Species;
import com.springboot.PetMark.service.PetService;
import com.springboot.PetMark.service.SpeciesService;

@Controller
@RequestMapping("/admin")
public class PetController {
	@Autowired
	PetService petService;
	@Autowired
	SpeciesService speciesService;
	@Autowired
	ServletContext context;

//	
	@RequestMapping("/ProductManagement")
	public String index(ModelMap model, HttpServletRequest request) throws IllegalArgumentException {
		HttpSession session = request.getSession();
		List<Pet> listProduct = new ArrayList<Pet>();
//		List<Pet> listProduct = petService.findAll();
		List<Integer> listProductInteger = new ArrayList<Integer>();
		List<Species> listCategory = speciesService.findAll();
//		
		List<String> listStatus = petService.selecStatus();
		int countContinueProduct = petService.countContinueProduct();
//		System.out.println("countContinueProduct: " + countContinueProduct);
		int totalPage = (int) Math.ceil((double)countContinueProduct/10);
//		
		int targetPage;

		if (session.getAttribute("targetPage") != null) {
			targetPage = (int) session.getAttribute("targetPage");
		} else
			targetPage = 1;

		if (request.getParameter("targetPage") != null) {
			targetPage = Integer.valueOf(request.getParameter("targetPage"));
		}
		int page = targetPage - 1;
//		listProduct = petService.findAll();
		listProduct = petService.showProductByCategoryPageable("", PageRequest.of(page, 10, Sort.by("id").ascending()));
//		System.out.println("danh sách thú: " +listProduct);
//		System.out.println("danh sách giống: " +listCategory);
//		model.addAttribute("listProduct", listProduct);
//		model.addAttribute("listCategory", listCategory);
//		int page = targetPage - 1;

		if (request.getParameter("scrollT") != null) {
			model.addAttribute("scrollT", request.getParameter("scrollT"));
		}

		String nameButton2 = "Ngừng bán";
//		String classButton2 = "btn_upload";
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
				listProduct = petService.showProductByCategoryPageable( "Còn hàng", PageRequest.of(page, 10, Sort.by("id").ascending()));
				
				break;
			case "0":
				if(targetPage > totalPage) page = 0;
				listProduct = petService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("id").descending()));
				
				break;
			case "1":
				if(targetPage > totalPage) page = 0;
				listProduct = petService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("price").ascending()));
				
				break;
			case "2":
				if(targetPage > totalPage) page = 0;
				listProduct = petService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("price").descending()));
				
				break;
//			case "3":
//				if(targetPage > totalPage) page = 0;
//				listProduct = petService.showProductByCategoryPageable("Còn hàng", PageRequest.of(page, 10, Sort.by("id").ascending()));
//				
//				break;
//			case "3":
//				int countPaid = productService.showProductByCategoryOrderByPaid("", false, null).size();
//				totalPage = (int) Math.ceil((double)countPaid/10);
//				if(targetPage > totalPage) page = 0;
//				listProductInteger = productService.showProductByCategoryOrderByPaid("", false, PageRequest.of(page, 10));
//				
//				break;
//			case "4":
//				int countLike = productService.showProductByCategoryOrderByLike("", false, null).size();
//				totalPage = (int) Math.ceil((double)countLike/10);
//				if(targetPage > totalPage) page = 0;
//				listProductInteger = productService.showProductByCategoryOrderByLike("", false, PageRequest.of(page, 10));
//				
//				break;
//			case "5":
//				int countView = productService.showProductByCategoryOrderByView("", false, null).size();
//				totalPage = (int) Math.ceil((double)countView/10);
//				if(targetPage > totalPage) page = 0;
//				listProductInteger = productService.showProductByCategoryOrderByView("", false, PageRequest.of(page, 10));
//				
//				break;
			case "3":
				if(targetPage > totalPage) page = 0;
				listProduct = petService.showProductByCategoryPageable("Ngừng bán", PageRequest.of(page, 10, Sort.by("id").ascending()));
//				totalPage = (int) Math.ceil((double)petService.countProduct("Ngừng bán")/10);
				nameButton2 = "Đăng bán";
//				classButton2 = "cancel_discontinue";
				classButtonDelete = "cancel_discontinue";
				
				break;
			default:
				
				break;
			}
		
		} catch (Exception e) {
			return "404";
		}
		if (!listProductInteger.isEmpty()) {
			for (Integer integer : listProductInteger) {
				listProduct.add(petService.findById(integer));
			}
		}
//		

		if (session.getAttribute("add") != null) {
			model.addAttribute("add", "added");
			session.setAttribute("add", null);
		}
//		
		session.setAttribute("targetPage", targetPage);
		model.addAttribute("nameButton2", nameButton2);
//		model.addAttribute("classButton2", classButton2);
		model.addAttribute("classButtonDelete", classButtonDelete);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("listProduct", listProduct);
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("listStatus", listStatus);
		System.out.println("danh sách trạng thái: "+ listStatus);
	
		return "pages/pet/pet-manager";
	}

	
	@RequestMapping("/getPageableQLSP")
	public String getPageableQLSP(HttpServletRequest request) {

		return "redirect:/admin/ProductManagement";
	}

	
	@RequestMapping("/changeSortValue")
	public String changeSortValue(HttpServletRequest request) {
		String sortValue = request.getParameter("sortValue");
		
		return "redirect:/admin/ProductManagement?sortValue="+sortValue;
		
	}

	@RequestMapping("/ProductManagement/AddProduct")
	public String addProduct(HttpServletRequest request) {
		String name = request.getParameter("name");
		String status = request.getParameter("status");
//		System.out.println("Trạng thái: "+status);
//		String imagePath = request.getParameter("hiddenImgPath");
//		System.out.println("IMGpath:" + imagePath);
		int age = Integer.valueOf(request.getParameter("age"));
		int categoryID = Integer.valueOf(request.getParameter("giong"));
		String priceDisplay = request.getParameter("petPrice");
		float price = Float.valueOf(priceDisplay);
		float coc = price/10;
		int quantityLeft = Integer.valueOf(request.getParameter("soluong"));
		String des = request.getParameter("mota");
		Species species = speciesService.findById(categoryID);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		Pet pet = new Pet(name, price, coc, age, quantityLeft, des, status, species, date);
		System.out.println("pet: "+pet);
		petService.addPet(pet);

		return "redirect:/admin/ProductManagement";
	}


//	@RequestMapping("/ProductManagement/UpdateProduct")
//	@ResponseBody
//	public String updateProduct(HttpServletRequest request) throws ParseException {
//		int id = Integer.valueOf(request.getParameter("p_fix_id"));
//		String name = request.getParameter("p_fix_name");
//		String status = request.getParameter("p_fix_status");
//		String priceDisplay = request.getParameter("p_fix_price");
//		String coc = request.getParameter("p_fix_coc");
//		float price = Float.valueOf(priceDisplay.substring(0, priceDisplay.length() - 2).replaceAll("\\.", ""));
//		float giaCoc = Float.valueOf(coc.substring(0, coc.length() - 2).replaceAll("\\.", ""));
//		int quantityLeft = Integer.valueOf(request.getParameter("p_fix_quantity"));
//		int age = Integer.valueOf(request.getParameter("p_fix_age"));
//		int categoryID = Integer.valueOf(request.getParameter("p_fix_categoryID"));
//		Species species = speciesService.findById(categoryID);
//		String date1 = request.getParameter("p_fix_date");
//		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(date1);
//		System.out.println(date);
//		Pet pet = new Pet(id, name, price, giaCoc, age, quantityLeft, "", status, species, date);
//		petService.updatePet(pet);
//		return "?update=done";
//	}
	
	@RequestMapping("/ProductManagement/DisContinuedProduct")
	@ResponseBody
	public String disContinuedProduct(HttpServletRequest request) {
		int productId = Integer.valueOf(request.getParameter("productId"));
		System.out.println("productID: " + productId);
		petService.disContinuePet(productId);

		return "?DisContinuedProduct=" + productId;
	}
//	
	@RequestMapping("/ProductManagement/ContinuedProduct")
	@ResponseBody
	public String continuedProduct(HttpServletRequest request) {
//		String productId = request.getParameter("productId");
//		System.out.println("ID đăng bán: "+productId);
		int productId = Integer.valueOf(request.getParameter("productId"));
		petService.continuePet(productId);
		
		return "?ContinuedProduct="+productId;
	}
//	
//	@RequestMapping("/ProductManagement/PermanentlyDeleted")
//	@ResponseBody
//	public String permanentlyDeleted(HttpServletRequest request) {
//		int productId = Integer.valueOf(request.getParameter("productId"));
//		productService.permanentlyDeleted(productId);
//		
//		return "?PermanentlyDeleted="+productId;
//	}
//	
//	
//	@RequestMapping("/UploadIMG")
//	@ResponseBody
//	public String uploadIMG(ModelMap model, @RequestParam("addProductIMG") MultipartFile photo) {
//		try {
//			String fileContentType = photo.getContentType();
//			long fileSize = photo.getSize();
//			System.out.println("fileContentType: " + fileContentType); 
//			System.out.println("fileSize: " + fileSize); 
//			System.out.println(fileContentType.substring(0, 6));
//			if(!fileContentType.substring(0, 6).equals("image/")) {
//				return "?photo_name=FAIL";
//			} else if (fileSize > 2097152) {
//				return "?photo_name=OVERSIZE";
//			}
//			
//			String photoPath = context.getRealPath("/files/shop_item/" + photo.getOriginalFilename());
//			photo.transferTo(new File(photoPath));
//			model.addAttribute("photo_name", photo.getOriginalFilename());
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//			System.out.println("Lỗi lưu file: " + e);
//		}
//		
//		return "?photo_name=files/shop_item/"+photo.getOriginalFilename();
}
